import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/profile/profile_event.dart';
import 'package:project_tobeto/blocs/profile/profile_state.dart';
import 'package:project_tobeto/constants/collections.dart';
import 'package:project_tobeto/models/user_model.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  ProfileBloc() : super(Initial()) {
    on<UpdateProfile>(_onUpdateProfile);
    on<FetchProfileInfo>(_onFetchProfileInfo);
  }

  Future<void> _onUpdateProfile(
      UpdateProfile event, Emitter<ProfileState> emit) async {
    User? user = _firebaseAuth.currentUser;
    try {
      if (user != null) {
        await _firebaseFirestore
            .collection(Collections.users)
            .doc(user.uid)
            .update({
          'email': event.user.email,
          'username': event.user.username,
          'name': event.user.name,
          'surname': event.user.surname,
          'phoneNumber': event.user.phoneNumber,
          'dateOfBirth': event.user.dateOfBirth,
          'tcIdNo': event.user.tcIdNo,
          'aboutMe': event.user.aboutMe,
          'photoUrl': event.user.photoUrl
        });
        emit(ProfileInfoFetched(user: event.user));
      } else {
        emit(ProfileUpdateFailed(errorMessage: 'Oturum Kapalı'));
      }
    } catch (e) {
      emit(ProfileUpdateFailed(errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchProfileInfo(
      FetchProfileInfo event, Emitter<ProfileState> emit) async {
    User? authenticatedUser = _firebaseAuth.currentUser;
    try {
      if (authenticatedUser != null) {
        DocumentSnapshot userSnapshot = await _firebaseFirestore
            .collection(Collections.users)
            .doc(authenticatedUser.uid)
            .get();

        if (userSnapshot.exists) {
          UserModel user =
              UserModel.fromMap(userSnapshot.data() as Map<String, dynamic>);
          emit(ProfileInfoFetched(user: user));
        }
      } else {
        emit(ProfileInfoFetchFailed(errorMessage: 'Oturum Kapalı'));
      }
    } catch (e) {
      emit(ProfileInfoFetchFailed(errorMessage: e.toString()));
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_event.dart';
import 'package:project_tobeto/blocs/auth/auth_state.dart';
import 'package:project_tobeto/constants/collections.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthBloc({FirebaseAuth? firebaseAuth, FirebaseFirestore? firebaseFirestore})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        super(Initial()) {
    _firebaseAuth.authStateChanges().listen((user) {
      if (user != null) {
        emit(Authenticated(user: user));
      } else {
        emit(NotAuthenticated());
      }
    });

    on<Login>((event, emit) async {
      try {
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: event.email, password: event.password);
        emit(Authenticated(user: userCredential.user));
      } on FirebaseAuthException catch (e) {
        emit(NotAuthenticated(errorMessage: e.message));
      }
    });

    on<Register>((event, emit) async {
      try {
        UserCredential userCredential =
            await _firebaseAuth.createUserWithEmailAndPassword(
                email: event.email, password: event.password);
        await _firebaseFirestore
            .collection(Collections.users)
            .doc(userCredential.user!.uid)
            .set({
          'email': event.email,
          'username': event.username,
          'registerDate': DateTime.now(),
          'photoUrl':
              'https://static.vecteezy.com/system/resources/previews/009/292/244/original/default-avatar-icon-of-social-media-user-vector.jpg',
        });
        emit(Authenticated(user: userCredential.user));
      } on FirebaseAuthException catch (e) {
        print(e.toString());
      }
    });

    on<Logout>((event, emit) async {
      await _firebaseAuth.signOut();
      emit(SignedOut());
    });
  }
}

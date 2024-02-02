import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_tobeto/blocs/photo/photo_event.dart';
import 'package:project_tobeto/blocs/photo/photo_state.dart';
import 'package:project_tobeto/constants/collections.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  PhotoBloc() : super(Initial()) {
    on<UpdatePhoto>(_onUpdatePhoto);
  }

  Future<void> _onUpdatePhoto(
      UpdatePhoto event, Emitter<PhotoState> emit) async {
    User? user = _firebaseAuth.currentUser;
    try {
      final _pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      final _imagePath = _pickedFile?.path;

      final _filePath = 'profileImages/${user?.uid}.png';
      Reference storageReference = _firebaseStorage.ref().child(_filePath);
      UploadTask uploadTask = storageReference.putFile(File(_imagePath!));

      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
      String photoUrl = await taskSnapshot.ref.getDownloadURL();
      await _firebaseFirestore
          .collection(Collections.users)
          .doc(user?.uid)
          .update({'photoUrl': photoUrl});
    } catch (e) {
      print(e);
    }
  }
}

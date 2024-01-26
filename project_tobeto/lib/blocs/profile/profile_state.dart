import 'package:project_tobeto/models/user_model.dart';

abstract class ProfileState {}

class Initial extends ProfileState {}

class ProfileUpdated extends ProfileState {}

class ProfileInfoFetched extends ProfileState {
  UserModel user;
  ProfileInfoFetched({required this.user});
}

class ProfileUpdateFailed extends ProfileState {
  String errorMessage;
  ProfileUpdateFailed({required this.errorMessage});
}

class ProfileInfoFetchFailed extends ProfileState {
  String errorMessage;
  ProfileInfoFetchFailed({required this.errorMessage});
}

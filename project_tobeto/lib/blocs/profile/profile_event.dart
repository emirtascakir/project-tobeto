import 'package:project_tobeto/models/user_model.dart';

abstract class ProfileEvent {}

class UpdateProfile extends ProfileEvent {
  UserModel user;
  UpdateProfile({
    required this.user,
  });
}

class FetchProfileInfo extends ProfileEvent {}

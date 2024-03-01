import 'package:project_tobeto/models/survey_model.dart';

abstract class SurveyState {}

class Initial extends SurveyState {}

class SurveysFetched extends SurveyState {
  List<SurveyModel> surveys;
  SurveysFetched({
    required this.surveys,
  });
}

class SurveysFetchFailed extends SurveyState {
  String errorMessage;
  SurveysFetchFailed({
    required this.errorMessage,
  });
}

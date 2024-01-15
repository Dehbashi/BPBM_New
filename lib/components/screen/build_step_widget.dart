import 'package:flutter/material.dart';

import '../../screens/components/question_page.dart';
import '../../screens/components/map_page.dart';
import '../../screens/components/time_date_page.dart';
import '../../screens/components/user_page.dart';
import '../../screens/components/review_page.dart';

Widget buildStepWidget(int activeStep, int serviceId, String serviceTitle, Function(bool) onStepCompleted) {
  // late final serviceTitle = dataList['service_title'];
  switch (activeStep) {
    case 0:
      return QuestionPage(
        serviceId: serviceId,
        serviceTitle: serviceTitle,
        activeStep: activeStep,
        onStepCompleted: onStepCompleted,
      );
    case 1:
      return MapPage(onStepCompleted: onStepCompleted,);
    case 2:
      return TimeDatePage(onStepCompleted: onStepCompleted,);
    case 3:
      return UserPage(onStepCompleted: onStepCompleted,);
    case 4:
      return ReviewPage(
        serviceTitle: serviceTitle,
      );
    default:
      return Container();
  }
}

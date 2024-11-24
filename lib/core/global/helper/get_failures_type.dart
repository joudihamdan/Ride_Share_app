import 'package:ride_share_app/core/errors/failures.dart';

String getFailureType(Failure failure) {
  if (failure is ServerFailure) {
    return failure.message;
  } else if (failure is OfflineFailure) {
    return "Please check your internet connection.";
  } else if (failure is EmptyCacheFailure) {
    return "No data.";
  } else {
    return "Unexpected error, please try again later.";
  }
}

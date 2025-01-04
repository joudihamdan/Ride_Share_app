import 'package:mockito/mockito.dart';
import 'package:ride_share_app/features/reversation/data/datasources/reservation_remote_data.dart';
import '../models/reservation_model.dart';
import '../models/reservation_response_model.dart';

class ReservationMockData extends Mock implements ReservationRemoteData {
  @override
  Future<ReservationResponseModel> createNewReservation(
      ReservationModel reservation) async {
        print("created");
    return  ReservationResponseModel(
        id: 1,
        client: "3",
        bicycle: "" ,
        from: "from hub ${reservation.fromHubId}",
        to: "To hub ${reservation.toHubId}",
        duration: reservation.duration.toDouble(),
        startTime: reservation.startTime,
        price: 1000,
        reservationStatus: "not started");
  }
}

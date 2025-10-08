import 'package:islamy_app/api/response/radio_response_model.dart';
import 'package:islamy_app/api/response/receiters_response_model.dart';

class RadioReceiterModel {
  final RadioResponseModel radioResponseModel;
  final ReceitersResponseModel receitersResponseModel;
  RadioReceiterModel(
      {required this.radioResponseModel, 
      required this.receitersResponseModel});
}

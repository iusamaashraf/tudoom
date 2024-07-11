import 'package:get/get.dart';
import 'package:tudoom/Model/StaffModel.dart';
import 'package:tudoom/utils/images.dart';

class TranderPanelController extends GetxController {
  List<OfficialsStaffModel> staff = [
    OfficialsStaffModel(
        Countryname: 'America',
        country: Images.AF,
        name: 'thementalpower',
        pic: Images.firend3),
    OfficialsStaffModel(
        Countryname: 'India',
        country: Images.IN,
        name: 'fitnessdrilling',
        pic: Images.firend2),
    OfficialsStaffModel(
        Countryname: 'Bangladesh',
        country: Images.IT,
        name: 'anime.sadsoul',
        pic: Images.firend1),
    OfficialsStaffModel(
        Countryname: 'Pakistan',
        country: Images.PK,
        name: 'coco.john',
        pic: Images.onlinepic),
  ];
}

import 'package:get/get.dart';
import 'package:tudoom/Model/leaderboardModel.dart';
import 'package:tudoom/utils/images.dart';

class LeaderboardControllers extends GetxController {
  RxInt report = 0.obs;

  List<LeaderBoardModel> participant = [
    LeaderBoardModel(
        pick: Images.Participant4,
        subtitle: 'Headmentor',
        title: 'Roger Curtis',
        trilng: '533'),
    LeaderBoardModel(
        pick: Images.Participant1,
        subtitle: 'Headmentor  ',
        title: 'Haylie Geidt',
        trilng: '533'),
    LeaderBoardModel(
        pick: Images.Participant2,
        subtitle: 'Headmentor',
        title: 'Miracle Levin',
        trilng: '533'),
    LeaderBoardModel(
        pick: Images.Participant3,
        subtitle: 'Headmentor',
        title: 'Cheyenne Herwitz',
        trilng: '533'),
    LeaderBoardModel(
        pick: Images.Participant,
        subtitle: 'Headmentor',
        title: 'Aspen Passaquindici',
        trilng: '533'),
    LeaderBoardModel(
        pick: Images.Participant5,
        subtitle: 'Headmentor',
        title: 'Roger Curtis',
        trilng: '533')
  ];
}

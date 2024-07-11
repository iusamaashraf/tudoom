import 'package:get/get.dart';
import 'package:tudoom/Model/raffalsInviteModel.dart';
import 'package:tudoom/utils/images.dart';

class ReffralsControllers extends GetxController {
  RxInt indexcount = 0.obs;

  //var refferalStatu = <InviteFirend>[].obs;

  List refferalStatu = ['Unseccusfull', 'Secussfull', 'Unseccusfull'];

  List<ReffarInviteModel> InviteFirend = [
    ReffarInviteModel(
      pic: Images.reffrals1,
      subtitle: 'factt.u',
      title: 'Angela yu',
    ),
    ReffarInviteModel(
      pic: Images.reffrals2,
      subtitle: 'ishikapandeyy_',
      title: 'Ishh',
    ),
    ReffarInviteModel(
      pic: Images.reffrals3,
      subtitle: 'saakshiii.3',
      title: 'saksh!!',
    ),
    ReffarInviteModel(
      pic: Images.reffrals4,
      subtitle: 'pooja_kothari',
      title: 'pooja kothari',
    ),
    ReffarInviteModel(
      pic: Images.reffrals3,
      subtitle: 'aaaniiissshhhaaa',
      title: 'Anisha',
    ),
    ReffarInviteModel(
      pic: Images.post1,
      subtitle: 'anushayaaa_',
      title: 'Anushaya Singh_',
    ),
    ReffarInviteModel(
      pic: Images.post3,
      subtitle: 'Monisha.mohan.menon',
      title: 'Monisha mohan menon',
    ),
  ];

//

//   var InviteFirend = <Friend>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     // Initialize your friend list here
//     InviteFirend.addAll([
//       Friend(pic: 'assets/friend1.jpg', title: 'Friend 1', subtitle: 'Subtitle 1', selected: false),
//       Friend(pic: 'assets/friend2.jpg', title: 'Friend 2', subtitle: 'Subtitle 2', selected: false),
//       // Add more friends as needed
//     ]);
//   }

//   void updateSelected(int index, bool value) {
//     InviteFirend[index].selected =  value;

// }
}

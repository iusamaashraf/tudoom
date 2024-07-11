import 'package:flutter/material.dart';
import 'package:tudoom/Controller/ProfileControllerss/EditProfilecontroller.dart/privacyPolicy.dart';
import 'package:tudoom/View/Chatroom/chatroomEnter.dart';
import 'package:tudoom/View/MainPages/tagepeople.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/MemberShipF/memberShip.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/MemberShipF/paymentmethodMedper.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/P2P%20buy%20and%20sell/buyerSaid3.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/P2P%20buy%20and%20sell/buyersaid4.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/P2P%20buy%20and%20sell/buyingcredits.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/P2P%20buy%20and%20sell/transferFunds.dart';
import 'package:tudoom/View/MainPages/postdescription.dart';
import 'package:tudoom/View/Chatroom/ChatroomsPrivateGroupchatInnerScreen/groupchat.dart';
import 'package:tudoom/View/Chatroom/ChatroomsPrivateGroupchatInnerScreen/privateChat.dart';
import 'package:tudoom/View/Chatroom/chatroom.dart';
import 'package:tudoom/View/Chatroom/chatroom_categories.dart';
import 'package:tudoom/View/Chatroom/chatroom_seeall.dart';
import 'package:tudoom/View/Chatroom/createroom.dart';
import 'package:tudoom/View/Chatroom/creatroomLoding.dart';
import 'package:tudoom/View/Chatroom/invitePeople.dart';
import 'package:tudoom/View/Chatroom/roomName%20.dart';
import 'package:tudoom/View/Chatroom/roomPermission.dart';
import 'package:tudoom/View/MainPages/homepage.dart';
import 'package:tudoom/View/MainPages/notification.dart';
import 'package:tudoom/View/MainPages/short.dart';
import 'package:tudoom/View/Profile/ProfileSettings/changePassword.dart';
import 'package:tudoom/View/Profile/ProfileSettings/changePaymentmethod.dart';
import 'package:tudoom/View/Profile/ProfileSettings/editprofile.dart';
import 'package:tudoom/View/Profile/profile.dart';
import 'package:tudoom/View/ReelsPages/reel.dart';
import 'package:tudoom/View/RegisterUser/ForgotPassword/forgotverification.dart';
import 'package:tudoom/View/RegisterUser/ForgotPassword/newpassword.dart';
import 'package:tudoom/View/RegisterUser/login.dart';
import 'package:tudoom/View/RegisterUser/register.dart';
import 'package:tudoom/View/RegisterUser/userNamePassword.dart';
import 'package:tudoom/View/Search/search.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Post%20Ads/knowMore.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Post%20Ads/postStep2.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Post%20Ads/postStep3.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Post%20Ads/postStep4.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/Sellers.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/addGpays.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/buyTokens.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/sallerChat.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/sallerProfile.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/reffralInvite.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/reffrals.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/StarsBadgessClass/starsBadges.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/verification.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Sellerss/waiting.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tasks/dailyTasks.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tudoom%20Store/friendsAll.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tudoom%20Store/tudoomStoreGift.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/addCredits.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/creditHistory.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Transfer%20Credit/friendList.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/gamehistory.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/P2P%20buy%20and%20sell/pPbuyAndSell%20.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Post%20Ads/postAds.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Transfer%20Credit/transferCredit.dart';
import 'package:tudoom/View/TudoomWorld/Leaderboard/leaaderSeeall.dart';
import 'package:tudoom/View/TudoomWorld/Leaderboard/leaderboard.dart';
import 'package:tudoom/View/TudoomWorld/officials.dart';
import 'package:tudoom/View/TudoomWorld/tsudoom.dart';
import 'package:tudoom/View/TudoomWorld/tudoomworld.dart';
import 'package:tudoom/View/tranderPanel.dart';
import 'package:tudoom/utils/bottomAppBar.dart';

//             linearStrokeCap: LinearStrokeCap.roundAll,

class Routes {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/LoginScreen":
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case "/NewPassword":
        return MaterialPageRoute(builder: (context) => NewPassword());

      case "/ForgotVerification":
        return MaterialPageRoute(builder: (context) => ForgotVerification());

      case "/RegisterUserScreen":
        return MaterialPageRoute(builder: (context) => RegisterUserScreen());

      case "/UserNameAndPAssword":
        return MaterialPageRoute(builder: (context) => UserNameAndPAssword());

      case "/BottomAppBarCus":
        return MaterialPageRoute(builder: (context) => BottomAppBarCus());

//    Main Pages
//
      case "/HomePage":
        return MaterialPageRoute(builder: (context) => HomePage());

      case "/Search":
        return MaterialPageRoute(builder: (context) => Search());

      case "/TudoomWorld":
        return MaterialPageRoute(builder: (context) => TudoomWorld());

      case "/ProfileScreen":
        return MaterialPageRoute(builder: (context) => ProfileScreen());

      // //

      case "/ChatRoomScreen":
        return MaterialPageRoute(builder: (context) => ChatRoomScreen());

      case "/ChatRoomCategories":
        return MaterialPageRoute(builder: (context) => ChatRoomCategories());

      case "/ChatRoomSeeAll":
        return MaterialPageRoute(builder: (context) => ChatRoomSeeAll());

      case "/EditProfile":
        return MaterialPageRoute(builder: (context) => EditProfile());

      case "/ChangePassword":
        return MaterialPageRoute(builder: (context) => ChangePassword());

      case "/ChangePaymentMethods":
        return MaterialPageRoute(builder: (context) => ChangePaymentMethods());

      case "/PrivacyPolicyScreen":
        return MaterialPageRoute(builder: (context) => PrivacyPolicyScreen());

      case "/PrivateChat":
        return MaterialPageRoute(builder: (context) => PrivateChat());

      case "/GropChatScreen":
        return MaterialPageRoute(builder: (context) => GropChatScreen());

      case "/CreateRoom":
        return MaterialPageRoute(builder: (context) => CreateRoom());

      case "/RoomPermissionScreen":
        return MaterialPageRoute(builder: (context) => RoomPermissionScreen());

      case "/RoomNameTopicScreen":
        return MaterialPageRoute(builder: (context) => RoomNameTopicScreen());

      case "/InvitePeople":
        return MaterialPageRoute(
            builder: (context) => InvitePeople()); // Tage People

      case "/CreateRommLoading":
        return MaterialPageRoute(builder: (context) => CreateRommLoading());

      case "/ReelsScreens":
        return MaterialPageRoute(builder: (context) => ReelsScreens());

      case "/TransferSCredit":
        return MaterialPageRoute(builder: (context) => TransferSCredit());

      case "/AddCredits":
        return MaterialPageRoute(builder: (context) => AddCredits());

      case "/Notifications":
        return MaterialPageRoute(builder: (context) => Notifications());

      case "/CreditHistoryScreen":
        return MaterialPageRoute(builder: (context) => CreditHistoryScreen());

      case "/GameHistory":
        return MaterialPageRoute(builder: (context) => GameHistory());

      case "/MemberShip":
        return MaterialPageRoute(builder: (context) => MemberShip());

      case "/MemberShipPaymentMethod":
        return MaterialPageRoute(
            builder: (context) => MemberShipPaymentMethod());

      case "/PostDesciription":
        return MaterialPageRoute(builder: (context) => PostDesciription());

      case "/TagePeople":
        return MaterialPageRoute(builder: (context) => TagePeople());

      case "/Shorts":
        return MaterialPageRoute(builder: (context) => Shorts());

      case "/FriendListShow":
        return MaterialPageRoute(builder: (context) => FriendListShow());

      //   P2P buy and sell
      //

      case "/P2PBuyAndSell":
        return MaterialPageRoute(builder: (context) => P2PBuyAndSell());

      case "/TransferFunds":
        return MaterialPageRoute(
            builder: (context) =>
                TransferFunds()); // Step 1    P2P buy and sell

      case "/buyingCredits":
        return MaterialPageRoute(
            builder: (context) => buyingCredits()); // Step 2

      case "/TransferFund3":
        return MaterialPageRoute(
            builder: (context) => TransferFund3()); // Step 3

      case "/TransferFundStep4":
        return MaterialPageRoute(
            builder: (context) => TransferFundStep4()); // Step 4

      ///    Tudoom Store Classes
      ///
      case "/TudoomStoreGift":
        return MaterialPageRoute(builder: (context) => TudoomStoreGift());

      case "/FirendListSeeAll":
        return MaterialPageRoute(builder: (context) => FirendListSeeAll());

      ///    Post Ads
      ///

      case "/PostAdsScreen":
        return MaterialPageRoute(builder: (context) => PostAdsScreen());

      case "/KnowmoreScreen":
        return MaterialPageRoute(builder: (context) => KnowmoreScreen());

      case "/PostStep2":
        return MaterialPageRoute(builder: (context) => PostStep2());

      case "/PostAddStep3":
        return MaterialPageRoute(builder: (context) => PostAddStep3());

      case "/PostAddStep4":
        return MaterialPageRoute(builder: (context) => PostAddStep4());

      //  Leaderboard Floder Screen
      //

      case "/LeaderboardScreen":
        return MaterialPageRoute(builder: (context) => LeaderboardScreen());

      case "/ParticipantSeeAll":
        return MaterialPageRoute(builder: (context) => ParticipantSeeAll());

//     Daily  Tasks
////
      case "/DailyTasks":
        return MaterialPageRoute(builder: (context) => DailyTasks());

//
//     Reffrals
//
//

      case "/Reffrals":
        return MaterialPageRoute(builder: (context) => Reffrals());

      case "/ReffralsInviteFriends":
        return MaterialPageRoute(builder: (context) => ReffralsInviteFriends());

      case "/StarsBadges":
        return MaterialPageRoute(builder: (context) => StarsBadges());

// Saller   No Finde To Open Class
      case "/SellerProfile":
        return MaterialPageRoute(builder: (context) => SellerProfile());

      case "/SallerChatScreen":
        return MaterialPageRoute(builder: (context) => SallerChatScreen());

      case "/Officialss":
        return MaterialPageRoute(builder: (context) => Officialss());

      case "/SellersClass":
        return MaterialPageRoute(builder: (context) => SellersClass());

      case "/BuyTokens":
        return MaterialPageRoute(builder: (context) => BuyTokens());

      case "/AddGpay":
        return MaterialPageRoute(builder: (context) => AddGpay());

      case "/VerificationSell":
        return MaterialPageRoute(builder: (context) => VerificationSell());

      case "/WaitingbuyersPayment":
        return MaterialPageRoute(builder: (context) => WaitingbuyersPayment());

      case "/TranderPanel":
        return MaterialPageRoute(builder: (context) => TranderPanel());

      case "/ChatroomEnter":
        return MaterialPageRoute(builder: (context) => ChatroomEnter());

      case "/TudoomWorldAnything":
        return MaterialPageRoute(builder: (context) => TudoomWorldAnything());

      //  case "/LoginScreen":
      //       return MaterialPageRoute(builder: (context) => LoginScreen());
    }
  }
}

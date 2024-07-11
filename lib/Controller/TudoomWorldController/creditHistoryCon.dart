import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/notificationsModel.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class CreditHistoryController extends GetxController {
  List credihistory = [
    NotificationsModel(
        col: Color(0xff67BFFF),
        messing: 'Natasha sent tokens to you',
        type: 'RECI.'),
    NotificationsModel(
        col: Color(0xff85CD79),
        messing: 'You sent Tokens to Nata.kbf ',
        type: 'SENT'),
    NotificationsModel(
        col: Color(0xffCC9657),
        messing: 'You Bought Gift from store',
        type: 'SENT'),
    NotificationsModel(
        col: Color(0xff67BFFF),
        messing: 'Natasha sent tokens to you',
        type: 'RECI.'),
    NotificationsModel(
        col: Color(0xff85CD79),
        messing: 'You sent Tokens to Nata.kbf ',
        type: 'SENT'),
    NotificationsModel(
        col: Color(0xffCC9657),
        messing: 'You Bought Gift from store',
        type: 'SENT')
  ];
  RxInt indexNo = 0.obs; //  /// List item select  selectdateSheet

  selectdateSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: CustamContainer(
                wigth: 60,
                hight: 6,
                cir: 5,
                col: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Select Date',
                    size: 20,
                    weight: FontWeight.w600,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectDate(context);
                    },
                    child: CustamContainer(
                      wigth: 150,
                      cir: 10,
                      hight: 40,
                      borders: true,
                      bordercol: grayCol,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(() => Textcustam(
                                text: selectedDate != null
                                    ? '${selectedDate.day}-${selectedDate.month}-${selectedDate.year}'
                                    : 'Select Date',
                                col: Colors.grey,
                              )),
                          SvgPicture.asset('images/date.svg')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: lightgray,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Textcustam(
                text: 'Transaction Status',
                size: 20,
                weight: FontWeight.w600,
              ),
            ),

            //
            SizedBox(
              height: 20,
            ),

            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          indexNo.value = 0;
                        },
                        child: CustamContainer(
                          wigth: 90,
                          hight: 40,
                          borders: indexNo == 0 ? false : true,
                          bordercol: gray,
                          col: indexNo == 0 ? appColor : Colors.transparent,
                          cir: 30,
                          child: Textcustam(
                              text: 'Sent',
                              weight: FontWeight.w600,
                              col: indexNo == 0 ? white : grayCol),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          indexNo.value = 1;
                        },
                        child: CustamContainer(
                          wigth: 100,
                          hight: 40,
                          borders: indexNo == 1 ? false : true,
                          cir: 30,
                          col: indexNo == 1 ? appColor : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Recieved',
                            weight: FontWeight.w600,
                            col: indexNo == 1 ? white : grayCol,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          indexNo.value = 2;
                        },
                        child: CustamContainer(
                          wigth: 90,
                          hight: 40,
                          borders: indexNo == 2 ? false : true,
                          cir: 30,
                          col: indexNo == 2 ? appColor : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Buy',
                            weight: FontWeight.w600,
                            col: indexNo == 2 ? white : grayCol,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    indexNo.value = 3;
                  },
                  child: CustamContainer(
                    wigth: 90,
                    hight: 40,
                    borders: indexNo == 3 ? false : true,
                    cir: 30,
                    col: indexNo == 3 ? appColor : Colors.transparent,
                    bordercol: gray,
                    child: Textcustam(
                      text: 'Sold',
                      weight: FontWeight.w600,
                      col: indexNo == 3 ? white : grayCol,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        );
      },
    );
  }

  Rx<DateTime> _selectedDate = DateTime.now().obs;

  DateTime get selectedDate => _selectedDate.value;

  void setSelectedDate(DateTime newDate) {
    _selectedDate.value = newDate;
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setSelectedDate(picked);
    }
  }
}

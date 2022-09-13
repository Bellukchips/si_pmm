import 'package:flutter/material.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/presentation/pages/features/perizinan/form_input_permission.dart';
import 'package:sipmm/shared/assets.dart';
import 'package:sipmm/shared/color_app.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: screen.width,
                decoration: BoxDecoration(
                  color: ColorApp.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        'Total Izin',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade800),
                      )),
                      Expanded(
                          child: Text(
                        '10',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp32, fontWeight: FontWeight.w300),
                      )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Pemberitahuan',
                  style: FontApp.primaryStyle.copyWith(
                      fontSize: Dimens.dp18, fontWeight: FontWeight.w500),
                ),
              ),
              //! item list event
              Container(
                height: 100,
                width: screen.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: ColorApp.primaryColor),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pengajian Bersama',
                            style: FontApp.primaryStyle.copyWith(
                                fontSize: Dimens.dp18,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.notification_important,
                            color: ColorApp.primaryColor,
                          )
                        ],
                      )),
                      Expanded(
                          child: Text(
                        'Sabtu, 12 Januari 2022',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp12, fontWeight: FontWeight.w300),
                      )),
                      Expanded(
                          child: Text(
                        'Diharapkan untuk hadir untuk seluruhnyar',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp14, fontWeight: FontWeight.w300),
                      )),
                    ],
                  ),
                ),
              )
              // Expanded(
              //   child: Container(

              //   ),
              // )
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (_) => const FormInputPermission()));
        },
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Container(
            alignment: FractionalOffset.center,
            decoration: BoxDecoration(
                color: ColorApp.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(20))),
            width: 150,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Perizinan baru',
                  style: FontApp.primaryStyle.copyWith(color: Colors.white),
                ),
                const Icon(
                  Icons.add,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

part of '../notice_page.dart';

class BodyNoticePage extends StatelessWidget {
  const BodyNoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Container(
            height: 100,
            width: screen.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ColorApp.primaryColor),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                            fontSize: Dimens.dp18, fontWeight: FontWeight.w400),
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
        ],
      ),
    );
  }
}

part of '../permission_page.dart';

class BodyPermissionPage extends StatefulWidget {
  const BodyPermissionPage({super.key});

  @override
  State<BodyPermissionPage> createState() => _BodyPermissionPageState();
}

class _BodyPermissionPageState extends State<BodyPermissionPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
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
                        'Izin Kuliah',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp18, fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.check,
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
                    'Diharapkan untuk hadir untuk seluruhnya',
                    style: FontApp.primaryStyle.copyWith(
                        fontSize: Dimens.dp14, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
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
                        'Beli Jajan',
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp18, fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.close,
                        color: Colors.red,
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
                    'Diharapkan untuk hadir untuk seluruhnya',
                    style: FontApp.primaryStyle.copyWith(
                        fontSize: Dimens.dp14, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

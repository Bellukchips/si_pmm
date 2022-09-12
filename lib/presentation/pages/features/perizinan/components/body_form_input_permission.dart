part of '../form_input_permission.dart';

class BodyFormInputPermission extends StatefulWidget {
  const BodyFormInputPermission({super.key});

  @override
  State<BodyFormInputPermission> createState() =>
      _BodyFormInputPermissionState();
}

class _BodyFormInputPermissionState extends State<BodyFormInputPermission> {
  //! current value dropdown
  String valueDropdown = 'Pilih Golongan';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Keterangan Izin', style: FontApp.primaryStyle),
            ),
            PrimaryTextField(
              autofocus: false,
              colorLabelAndHint: Colors.grey,
              borderColor: ColorApp.primaryColor,
              cursorColor: Colors.grey,
              hintText: 'Izin Untuk',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Pilih Golongan (Kitab / Tafhidz)',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.w500)),
            ),
            InputDropdown(
              colorIcon: ColorApp.primaryColor,
              onPressed: () {
                UtilsApp.showBottomSheet(
                  context,
                  child: Wrap(
                    children: [
                      ListTile(
                          title: const Text('Kitab'),
                          leading: const Icon(Icons.list),
                          onTap: () {
                            setState(() {
                              valueDropdown = 'Kitab';
                            });
                            Navigator.of(context).pop();
                          }),
                      ListTile(
                        title: const Text('Tafhidz'),
                        leading: const Icon(Icons.list),
                        onTap: () {
                          setState(() {
                            valueDropdown = 'Tafhidz';
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
              labelText: 'Golongan',
              valueStyle: FontApp.primaryStyle,
              valueText: valueDropdown,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Detail', style: FontApp.primaryStyle),
            ),
            MultilineInputText(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorApp.primaryColor),
              ),
              autofocus: false,
              colorLabelAndHint: Colors.grey,
              borderColor: ColorApp.primaryColor,
              cursorColor: Colors.grey,
              hintText: 'Detail Izin',
              maxLines: 5,
              maxLength: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomElevationButton(
              height: 52,
              width: 300,
              color: ColorApp.primaryColor,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (_) => const HomePage()));
              },
              style: FontApp.primaryStyle.copyWith(color: Colors.white),
              text: Strings.simpanDanAjukan,
            ),
          ],
        ),
      ),
    );
  }
}

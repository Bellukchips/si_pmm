part of '../register_page.dart';

class BodyRegisterLarge extends StatefulWidget {
  const BodyRegisterLarge({super.key});

  @override
  State<BodyRegisterLarge> createState() => _BodyRegisterLargeState();
}

class _BodyRegisterLargeState extends State<BodyRegisterLarge> {
  //! current value dropdown
  String valueDropdown = 'Pilih Golongan';
  String valueDropdownJK = 'Jenis Kelamin';

  ///
  ///
  //! current date
  DateTime? selectedDate = DateTime.now();
  ValueChanged<DateTime?>? selectDate;
  //? function to select date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate!,
      firstDate: DateTime(1945),
      initialDatePickerMode: DatePickerMode.day,
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  //!

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: const EdgeInsets.all(20),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                Strings.form_registrasi,
                style: FontApp.primaryStyle.copyWith(fontSize: Dimens.dp32),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Username',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Nama Lengkap',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Email',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InputDropdown(
                labelText: 'Pilih golongan (Kitab/Tafhidz)',
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
                valueStyle: FontApp.primaryStyle,
                valueText: valueDropdown,
              ),
              const SizedBox(
                height: 25,
              ),
              InputDropdown(
                labelText: 'Jenis Kelamin',
                colorIcon: ColorApp.primaryColor,
                onPressed: () {
                  UtilsApp.showBottomSheet(
                    context,
                    child: Wrap(
                      children: [
                        ListTile(
                            title: const Text('Laki-Laki'),
                            leading: const Icon(Icons.male),
                            onTap: () {
                              setState(() {
                                valueDropdownJK = 'Laki-Laki';
                              });
                              Navigator.of(context).pop();
                            }),
                        ListTile(
                          title: const Text('Perempuan'),
                          leading: const Icon(Icons.female),
                          onTap: () {
                            setState(() {
                              valueDropdownJK = 'Perempuan';
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
                valueStyle: FontApp.primaryStyle,
                valueText: valueDropdownJK,
              ),
              const SizedBox(
                height: 25,
              ),
              InputDropdown(
                colorIcon: ColorApp.primaryColor,
                labelText: 'Tanggal Lahir',
                valueText: DateFormat.yMMMd().format(selectedDate!),
                onPressed: () {
                  _selectDate(context);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              MultilineInputText(
                fillColor: Colors.transparent,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorApp.primaryColor),
                ),
                autofocus: false,
                colorLabelAndHint: ColorApp.primaryColor,
                borderColor: ColorApp.primaryColor,
                cursorColor: Colors.grey,
                hintText: 'Alamat',
                maxLines: 5,
                maxLength: 150,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomElevationButton(
                height: 52,
                width: 300,
                color: ColorApp.primaryColor,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (_) => const AuthPage()));
                },
                style: FontApp.primaryStyle.copyWith(color: Colors.white),
                text: Strings.simpanDanAjukan,
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

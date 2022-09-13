part of '../register_page.dart';

class BodyRegisterSmall extends StatefulWidget {
  const BodyRegisterSmall({super.key});

  @override
  State<BodyRegisterSmall> createState() => _BodyRegisterSmallState();
}

class _BodyRegisterSmallState extends State<BodyRegisterSmall> {
  //! current value dropdown
  String valueDropdown = 'Pilih Golongan';
  String valueDropdownJK = 'Jenis Kelamin';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Form(
          child: ListView(
            children: [
              
              Text(
                Strings.form_registrasi,
                style: FontApp.primaryStyle.copyWith(fontSize: Dimens.dp32),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Username', style: FontApp.primaryStyle),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Username',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Nama Lengkap', style: FontApp.primaryStyle),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Nama Lengkap',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Email', style: FontApp.primaryStyle),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Email',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Password', style: FontApp.primaryStyle),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: ColorApp.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Pilih Golongan (Kitab / Tafhidz)',
                    style: FontApp.primaryStyle),
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Pilih Jenis Kelamin', style: FontApp.primaryStyle),
              ),
              InputDropdown(
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
                labelText: 'Jenis Kelamin',
                valueStyle: FontApp.primaryStyle,
                valueText: valueDropdownJK,
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

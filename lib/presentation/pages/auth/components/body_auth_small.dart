part of '../auth_page.dart';

class BodyAuthSmall extends StatefulWidget {
  const BodyAuthSmall({super.key});

  @override
  State<BodyAuthSmall> createState() => _BodyAuthSmallState();
}

class _BodyAuthSmallState extends State<BodyAuthSmall> {
  //!show hide password
  bool isShowPassword = true;
  void togglePass() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 40),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                Strings.silahakanMasuk,
                style: FontApp.primaryStyle.copyWith(
                    fontSize: Dimens.dp32, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
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
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorApp.primaryColor),
                  labelStyle: TextStyle(color: ColorApp.primaryColor),
                  suffixIcon: IconButton(
                    onPressed: togglePass,
                    icon: Icon(
                        isShowPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: ColorApp.primaryColor),
                  ),
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
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: CustomElevationButton(
                height: 52,
                width: 300,
                color: ColorApp.primaryColor,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (_) => const HomePage()));
                },
                style: FontApp.primaryStyle.copyWith(color: Colors.white),
                text: Strings.masuk,
              ),
            ),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (_) => const RegisterPage()));
                  },
                  child: Text(
                    Strings.belumPunyaAkun,
                    style: FontApp.primaryStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

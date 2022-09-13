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
    return ResponsiveLayout.isSmallScreen(context)
        ? const BodyFormInputPermissionSmall()
        : const BodyFormInputPermissionLarge();
  }
}

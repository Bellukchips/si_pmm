import 'package:flutter/material.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/presentation/core/responsive.dart';
import 'package:sipmm/presentation/pages/features/home/home_page.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_form_input_permission.dart';
part 'components/body_form_input_permission_small.dart';
part 'components/body_form_input_permission_large.dart';

class FormInputPermission extends StatelessWidget {
  const FormInputPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorApp.primaryColor,
        title: const Text('Form Input Perizinan'),
      ),
      body: const SafeArea(child: BodyFormInputPermission()),
    );
  }
}

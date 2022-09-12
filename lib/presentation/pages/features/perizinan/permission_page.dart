import 'package:flutter/material.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/presentation/pages/features/perizinan/form_input_permission.dart';
import 'package:sipmm/shared/shared.dart';

part 'components/body_permission_page.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const SafeArea(child: BodyPermissionPage()),
    );
  }
}

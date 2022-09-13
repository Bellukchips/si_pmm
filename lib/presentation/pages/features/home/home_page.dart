import 'package:flutter/material.dart';
import 'package:sipmm/presentation/pages/auth/auth_page.dart';
import 'package:sipmm/presentation/pages/features/home/dashboard/dashboard_page.dart';
import 'package:sipmm/presentation/pages/features/notice/notice_page.dart';
import 'package:sipmm/presentation/pages/features/perizinan/permission_page.dart';
import 'package:sipmm/shared/assets.dart';
import 'package:sipmm/shared/color_app.dart';

import 'widgets/list_tile_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorApp.primaryColor,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                decoration: BoxDecoration(color: ColorApp.primaryColor),
                accountName: Text('Dummy User',
                    style: FontApp.primaryStyle.copyWith(color: Colors.white)),
                accountEmail: Text(
                  'dummyuser@gmail.com',
                  style: FontApp.primaryStyle.copyWith(color: Colors.white),
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
                child: ListView(
                  children: generateListDrawer(context),
                ),
              ))
            ],
          ),
        ),
      ),
      body: Container(
        child: selectMenu == 'Dashboard'
            ? const DashboardPage()
            : selectMenu == 'Perizinan'
                ? const PermissionPage()
                : selectMenu == 'Pengumuman'
                    ? const NoticePage()
                    : Container(),
      ),
    );
  }

  //! current Menu drawer
  String selectMenu = 'Dashboard';

  //? generate menu drawer
  List<String> dataMenu = ['Dashboard', 'Perizinan', 'Pengumuman', 'Keluar'];

  ///
  List<Widget> generateListDrawer(BuildContext context) {
    return dataMenu
        .map((e) => Container(
              margin:
                  EdgeInsets.only(bottom: (e == dataMenu.length - 1) ? 50 : 0),
              child: ListTileCustom(
                title: e,
                color: ColorApp.primaryColor,
                icon: e == 'Dashboard'
                    ? Icons.home
                    : e == 'Perizinan'
                        ? Icons.archive
                        : e == 'Pengumuman'
                            ? Icons.event
                            : Icons.logout,
                isSelected: selectMenu == e,
                onTap: () {
                  setState(() {
                    selectMenu = e;
                  });
                  Navigator.pop(context);

                  if (e == 'Keluar') {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (ctx) => const AuthPage()));
                  }
                },
              ),
            ))
        .toList();
  }
}

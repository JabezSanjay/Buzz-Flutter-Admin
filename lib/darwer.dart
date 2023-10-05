
// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks


import 'package:buzz/provider/proviercolors.dart';
import 'package:buzz/staticdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import 'appstaticdata/staticdata.dart';
import 'login_signup/complete_verificaton_process.dart';
import 'login_signup/email_verification.dart';
import 'login_signup/forgot_password.dart';
import 'login_signup/singup.dart';

class DarwerCode extends StatefulWidget {
  const DarwerCode({Key? key}) : super(key: key);

  @override
  State<DarwerCode> createState() => _DarwerCodeState();
}

class _DarwerCodeState extends State<DarwerCode> {

  AppConst obj = AppConst();
  final AppConst controller = Get.put(AppConst());

  final screenwidth = Get.width;
  bool ispresent = false;

  static const breakpoint = 600.0;

  @override
  Widget build(BuildContext context) {
    if (screenwidth >= breakpoint) {
      setState(() {
        ispresent = true;
      });
    }

    return GetBuilder<AppConst>(
      builder: (controller) {
        return SafeArea(
          child: Consumer<ColorNotifire>(
            builder: (context, value, child) => Drawer(
              backgroundColor: notifire!.getprimerycolor,
              shape:  RoundedRectangleBorder(side: BorderSide(color: notifire!.getbordercolor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: EdgeInsets.only(
                        left: ispresent ? 30 : 15,
                        top: ispresent ? 24 : 20,
                        bottom: ispresent ? 10 : 12),
                    child: InkWell(
                      onTap: () {
                        controller.changePage(0);
                        Get.back();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/applogo.svg",height: 48,width: 48,),
                          const SizedBox(width: 10,),
                          SvgPicture.asset("assets/Buzz..svg",height: 25,width: 32,color: notifire!.getTextColor1),
                          const SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildDivider(title: 'GENERAL'),
                              SizedBox(
                                height: ispresent ? 10 : 8,
                              ),

                              _buildSingletile(header: "Dashboards", iconpath: "assets/home.svg",index: 0, ontap: () {
                                controller.changePage(0);
                                Get.back();
                              }),
                              _buildexpansiontilt(
                                  index: 0,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(2);
                                                Get.back();
                                              },
                                              child:  Row(
                                                children: [
                                                  _buildcomunDesh(index: 2),
                                                  _buildcomuntext(title: 'General',index: 2),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(3);
                                                Get.back();
                                              },
                                              child: Row(

                                                children: [
                                                  _buildcomunDesh(index: 3),
                                                  _buildcomuntext(title: 'Chart',index: 3),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Widgets',
                                  iconpath: 'assets/grid-circle.svg'),

                              _buildDivider(title: 'APPLICATIONS'),
                              _buildexpansiontilt(
                                  index: 1,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(4);
                                                Get.back();

                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 4),
                                                  _buildcomuntext(title: 'Project List',index: 4),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(5);
                                                Get.back();
                                              },

                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 5),
                                                  _buildcomuntext(title: 'Create New',index: 5),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Project',
                                  iconpath: 'assets/octagon-check.svg'),



                              _buildSingletile(header: "Chat", iconpath: "assets/chats.svg",index: 12, ontap: () {   controller.changePage(12);
                              Get.back(); }),
                              _buildexpansiontilt(
                                  index: 3,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(13);
                                                Get.back();

                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 13),
                                                  _buildcomuntext(title: 'User Profile',index: 13),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(14);
                                                Get.back();

                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 14),
                                                  _buildcomuntext(title: 'User Edit',index: 14),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(15,);
                                                Get.back();

                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 15),
                                                  _buildcomuntext(title: 'User Cards',index: 15),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Users',
                                  iconpath: 'assets/users.svg'),


                              _buildexpansiontilt(index: 4,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                height: ispresent ? 12 : 10,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    controller.changePage(16);
                                                    Get.back();
                                                  },
                                                  child: Row(
                                                    children: [
                                                      _buildcomunDesh(index: 16),
                                                      _buildcomuntext(title: 'Validation Form',index: 16),
                                                    ],
                                                  )),
                                              _buildsizeboxwithheight(),
                                              InkWell(
                                                onTap: () {
                                                  controller.changePage(17);
                                                  Get.back();
                                                },

                                                child: Row(
                                                  children: [
                                                    _buildcomunDesh(index: 17),
                                                    _buildcomuntext(
                                                        title: 'Checkbox & Radio',index: 17),
                                                  ],
                                                ),
                                              ),
                                              _buildsizeboxwithheight(),
                                              InkWell(
                                                  onTap: () {
                                                    controller.changePage(18);
                                                    Get.back();
                                                  },
                                                  child: Row(
                                                    children: [
                                                      _buildcomunDesh(index: 18),
                                                      _buildcomuntext(title: 'Date Picker',index: 18),
                                                    ],
                                                  )),
                                              _buildsizeboxwithheight(),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Forms',
                                  iconpath: 'assets/file-list.svg'),


                              _buildDivider(title: 'COMPONENTS'),
                              _buildexpansiontilt(
                                  index: 5,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                Get.offAll(const SingUpPage());
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 27),
                                                  _buildcomuntext(title: 'Login & Signup',index: 27),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                Get.offAll(const EmailVerification());
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 28),
                                                  _buildcomuntext(title: 'OTP Verification',index: 28),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                Get.offAll(const CompleteVerification());
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 29),
                                                  _buildcomuntext(title: 'Email Verification',index: 29),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                Get.offAll(const ForgotPassword());
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 30),
                                                  _buildcomuntext(title: 'Forget Password',index: 30),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Auth pages',
                                  iconpath: 'assets/shield-lock.svg'),
                              _buildexpansiontilt(
                                  index: 6,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(20);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 20),
                                                  _buildcomuntext(title: 'Avatars',index: 20),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(21);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 21),
                                                  _buildcomuntext(title: 'Modal',index: 21),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Ui Kits',
                                  iconpath: 'assets/pen-tool.svg'),

                              _buildexpansiontilt(
                                  index: 7,
                                  children: Row(
                                    children: [
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            height: ispresent ? 12 : 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(22);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 22),
                                                  _buildcomuntext(title: 'Default Style',index: 22),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(23);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 23),
                                                  _buildcomuntext(title: 'Flat Style',index: 23),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {
                                                controller.changePage(24);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 24),
                                                  _buildcomuntext(title: 'Edge Style',index: 24),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                          InkWell(
                                              onTap: () {

                                                controller.changePage(25);
                                                Get.back();
                                              },
                                              child: Row(
                                                children: [
                                                  _buildcomunDesh(index: 25),
                                                  _buildcomuntext(title: 'Raised Style',index: 25),
                                                ],
                                              )),
                                          _buildsizeboxwithheight(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  header: 'Buttons',
                                  iconpath: 'assets/send.svg'),

                              _buildDivider(title: 'MISCELLANEOUS'),

                              _buildSingletile(
                                  header: 'FAQ',
                                  iconpath: 'assets/chat-exclamation.svg',index: 26, ontap: () { controller.changePage(26);
                              Get.back(); }),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Widget _buildsizeboxwithheight() {
    return SizedBox(
      height: ispresent ? 25 : 20,
    );
  }

  Widget _buildcomuntext({required String title,required int index}) {
    return  Obx(() =>  Text(title, style: mediumGreyTextStyle.copyWith(fontSize: 13,color: controller.pageselecter.value == index ?appMainColor: notifire!.getMainText)),
    );
  }

  Widget _buildcomunDesh({required int index}) {
    return  Obx(() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset("assets/minus.svg",color: controller.pageselecter.value == index ? appMainColor: notifire!.getMainText,width: 6),
        const SizedBox(width: 25,),
      ],
    ),
    );
  }

  Widget _buildexpansiontilt({required Widget children,
      required String header,
      required String iconpath,required int index}){
      return ListTileTheme(
      horizontalTitleGap: 12.0,
      dense: true,
      child:  ExpansionTile(
        title: Text(header, style:  mediumBlackTextStyle.copyWith(fontSize: 14,color: notifire!.getMainText),
        ),
        leading: SvgPicture.asset(iconpath, height: 18, width: 18,color: notifire!.getMainText),
        tilePadding: EdgeInsets.symmetric(vertical: ispresent ? 5 : 2, horizontal: 8),
        iconColor: appMainColor,
        collapsedIconColor: Colors.grey,

        children: <Widget>[children],

      ),
    );
  }

  Widget _buildSingletile({required String header, required String iconpath,required int index,required void Function() ontap}) {
    return Obx(() => ListTileTheme(
      horizontalTitleGap: 12.0,
      dense: true,
      child: ListTile(
        hoverColor: Colors.transparent,
        onTap: ontap,
        title: Text(
          header,
          style: mediumBlackTextStyle.copyWith(fontSize: 14,color: controller.pageselecter.value == index ? appMainColor : notifire!.getMainText),
        ),
        leading: SvgPicture.asset(iconpath, height: 18, width: 18,color: controller.pageselecter.value == index ? appMainColor : notifire!.getMainText),
        trailing: const SizedBox(),
        contentPadding: EdgeInsets.symmetric(vertical: ispresent ? 5 : 2, horizontal: 8),
      ),
    ));
  }

  Widget _buildDivider({required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: ispresent ? 15 : 10,
            width: ispresent ? 230 : 260,
            child: Center(child: Divider(color: notifire!.getbordercolor, height: 1))),
        SizedBox(
          height: ispresent ? 15 : 10,
        ),
        Text(
          title,
          style:  mainTextStyle.copyWith(fontSize: 14,color: notifire!.getMainText),
        ),
        SizedBox(
          height: ispresent ? 10 : 8,
        ),
      ],
    );
  }
}

//9c9caa
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateSignUpPage();
  }
}

class StateSignUpPage extends State<SignUpPage> {
  bool hide = true,hideConfirm=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: SvgPicture.asset(
                    "images/logo.svg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "مرحبا بك في رحلة تعلم جديدة",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NotoSans",
                              color: Color(0xff2E6934)),
                        ),
                        Text(
                          "تعلم الأردو أصبح سهلًا، ادخل بياناتك لإنشاء حساب والبدأ في التعلم",
                          style: TextStyle(
                              height: 1.3,
                              fontSize: 13,
                              fontFamily: "NotoSans",
                              color: Color(0xff595959)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: SvgPicture.asset(
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.fill,
                                          'images/user.svg',
                                        ),
                                      ),
                                      label: Text(
                                        "إسم المستخدم",
                                        style: TextStyle(
                                          fontFamily: "NotoSans",
                                          fontSize: 13,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: SvgPicture.asset(
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.fill,
                                            'images/mobile.svg',
                                          ),
                                        ),
                                        label: Text(
                                          "رقم الجوال",
                                          style: TextStyle(
                                            fontFamily: "NotoSans",
                                            fontSize: 13,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)))),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: SvgPicture.asset(
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.fill,
                                            'images/email.svg',
                                          ),
                                        ),
                                        label: Text(
                                          "البريد الإلكتروني",
                                          style: TextStyle(
                                            fontFamily: "NotoSans",
                                            fontSize: 13,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)))),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: TextFormField(
                                    obscureText: hide,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                        suffixIcon:
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (hide) {
                                                hide = false;
                                              } else {
                                                hide = true;
                                              }
                                            });
                                          },
                                          child: hide
                                              ? Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 15),
                                                  child: SvgPicture.asset(
                                                    width: 24,
                                                    height: 24,
                                                    fit: BoxFit.fill,
                                                    'images/hidden.svg',
                                                  ),
                                                )
                                              : Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 15),
                                                  child: SvgPicture.asset(
                                                    width: 24,
                                                    height: 24,
                                                    fit: BoxFit.fill,
                                                    'images/eye.svg',
                                                  ),
                                                ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 15),
                                          child: SvgPicture.asset(
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.fill,
                                            'images/lock.svg',
                                          ),
                                        ),
                                        label: Text(
                                          "كلمة المرور",
                                          style: TextStyle(
                                            fontFamily: "NotoSans",
                                            fontSize: 13,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)))),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: TextFormField(

                                    obscureText: hideConfirm,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                        suffixIcon:
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (hideConfirm) {
                                                hideConfirm = false;
                                              } else {
                                                hideConfirm = true;
                                              }
                                            });
                                          },
                                          child: hideConfirm
                                              ? Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15,
                                                vertical: 15),
                                            child: SvgPicture.asset(
                                              width: 24,
                                              height: 24,
                                              fit: BoxFit.fill,
                                              'images/hidden.svg',
                                            ),
                                          )
                                              : Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15,
                                                vertical: 15),
                                            child: SvgPicture.asset(
                                              width: 24,
                                              height: 24,
                                              fit: BoxFit.fill,
                                              'images/eye.svg',
                                            ),
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 15),
                                          child: SvgPicture.asset(
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.fill,
                                            'images/lock.svg',
                                          ),
                                        ),
                                        label: Text(
                                          "تأكيد كلمة المرور",
                                          style: TextStyle(
                                            fontFamily: "NotoSans",
                                            fontSize: 13,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)))),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: GestureDetector(
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0xff18532C),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Text(
                                        "إنشاء الحساب",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: "NotoSans",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "هل لديك حساب بالفعل ؟",
                                        style: TextStyle(
                                            fontFamily: "NotoSans",
                                            fontSize: 15,
                                            color: Color(0xff6B6B6B)),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 8)),
                                      GestureDetector(
                                        child: Text(
                                          "تسجيل الدخول",
                                          style: TextStyle(
                                              fontFamily: "NotoSans",
                                              fontSize: 15,
                                              color: Color(0xff18532C)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

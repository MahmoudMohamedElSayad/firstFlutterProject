import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateLoginPage();
  }
}

class StateLoginPage extends State<LoginPage> {
  late GlobalKey<FormState> validate;
  bool hide = true;

  @override
  void initState() {
    validate = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff2E6934),
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                  padding: EdgeInsets.only(top: 30),
                  child: Form(
                    key: validate,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "أهلا بعودتك، لقد اشتقنا إليك",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NotoSans",
                              color: Color(0xff2E6934)),
                        ),
                        Text(
                          "ادخل بياناتك لتسجيل الدخول ومتابعة التعلم وتحقيق النجاحات",
                          style: TextStyle(
                              height: 1.3,
                              fontSize: 13,
                              fontFamily: "NotoSans",
                              color: Color(0xff595959)),
                        ),
                        Padding(padding: EdgeInsets.only(top: 45),child: TextFormField(
                          validator: (value) {
                            if (value != null) {
                              if (value.isEmpty) {
                                return "من فضلك أدخل إسم العميل";
                              }
                              if (value.length < 3) {
                                return "من فضلك إسم المستخدم لابد أن يكون اكبر من 3";
                              }
                            }
                            return null;
                          },
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
                                  "إسم المستخدم / رقم الجوال",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff6B6B6B),)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1))),
                        ),)
                        ,
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: TextFormField(
                            validator: (password) {
                              if (password != null) {
                                if (password.isEmpty) {
                                  return "من فضلك أدخل كلمة المرور";
                                }

                                if (password.length < 7) {
                                  return "كلمة السر لابد ان تكون اكبر من 7";
                                }
                              }

                              return null;
                            },
                            obscureText:hide ,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                prefixIcon:Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: SvgPicture.asset(
                                    width: 24,
                                    height: 24,
                                    fit: BoxFit.fill,
                                    'images/lock.svg',
                                  ),
                                ),
                                suffixIcon: GestureDetector(
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
                                label: Text("كلمة المرور",
                                    style: TextStyle(
                                        fontSize: 18)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              child: Text(
                                "نسيت كلمة المرور ؟",
                                style: TextStyle(
                                    color: Color(0xff2E6934),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: GestureDetector(
                            onTap: () {
                              if (validate.currentState != null &&
                                  validate.currentState?.validate() == true) {
                                Navigator.of(context).pushNamed("homePage");
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                  color: Color(0xff18532C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "لا يوجد لديك حساب؟",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("SignUpPage");
                                },
                                child: Text(
                                  "إنشاء حساب جديد",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xff2E6934)),
                                ),
                              ),)

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: .5,
                                            color: Color(0xffABABAB))),
                                  ),
                                  flex: 2),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "أو",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "NotoSans",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: .5,
                                            color: Color(0xffABABAB))),
                                  ),
                                  flex: 2),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: SvgPicture.asset(
                                      "images/whatsapp.svg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Text(
                                    "تواصل معنا عبر الواتساب",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "NotoSans",
                                        color: Color(0xff2E6934),
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      width: 1, color: Color(0xff18532C))),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

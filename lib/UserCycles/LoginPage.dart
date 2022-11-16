import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateLoginPage();
  }
}

class StateLoginPage extends State<LoginPage> {
  late GlobalKey<FormState> validate;

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
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage("images/images4.jpeg"),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Form(
                    key: validate,
                    child: Column(
                      children: [
                        TextFormField(
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
                              prefixIcon: Icon(Icons.person),
                              label: Text(
                                  "أدخل إسم المستخدم/ البريد الإلكتروني",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1))),
                        ),
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
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                label: Text("كلمة المرور",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
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
                                "هل نسيت كلمة المرور ؟",
                                style: TextStyle(
                                    color: Color(0xff2E6934),
                                    fontSize: 18,
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
                                  color: Color(0xff2E6934),
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
                                "لا أمتلك حساب ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushNamed("SignUpPage");
                                },
                                child: Text(
                                  "إنشاء حساب جديد",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff2E6934)),
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
        ),
      ),
    );
  }
}

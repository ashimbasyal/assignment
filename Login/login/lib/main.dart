import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  final mycontroller = TextEditingController();
  final mypassword = TextEditingController();
  // String _email = "";
  // TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold
                    // fontStyle: FontStyle.italic
                    ),
              ),
            ),
            // Padding(padding: const EdgeInsets.only(top: 20)),

            // StyleElement(FontWeight.bold),
            Container(
              child: Text(
                "Login to continue with your profile",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            ),
            Padding(padding: EdgeInsets.all(12)),
            Column(
              children: [
                TextFormField(
                  autovalidate: true,
                  validator: (value) {
                    if (!emailRegex.hasMatch(value!)) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,

                  // inputFormatters: [
                  //   new WhitelistingTextInputFormatter(new RegExp(r'^[0-9]*$')),
                  //   new LengthLimitingTextInputFormatter(8)
                  // ],

                  key: _formkey,
                  controller: mycontroller,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),

                    labelText: 'Email',

                    hintText: "example@gmail.com",

                    // icon: const Padding(
                    // padding: const EdgeInsets.only(top: 15.0),
                    //   // child: const Icon(Icons.email),
                    // ),
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "please enter email";
                  //   }
                  // if (!RegExp(r'^[a-z A-z0-9+_.-]+@[a-zA-Z0-9.-]')
                  //     .hasMatch(value)) {
                  //   return "please enter valid email";
                  // }
                  //   return null;
                  // },
                  // onSaved: (String email){
                  //   _email = email;
                  // },
                  // validator: (value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[a-z A-z]+$').hasMatch(value))
                  //     return "enter correct email";
                  //   else {
                  //     return null;
                  //   }
                  // },
                ),

                // SizedBox(
                //   width: 20,
                //   height: 20,
                //   child: RaisedButton(
                //     onPressed: () {
                //       if (_formkey.currentState!.validate()) {
                //         return;
                //       } else {
                //         print("Unsuccessful");
                //       }
                //     },
                //   ),
                // ),

                // Padding(padding:EdgeInsets.all(8)),
                Column(
                  children: [
                    Container(
                      child: new TextFormField(
                        autovalidate: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        controller: mypassword,
                        autofocus: false,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          // contentPadding:
                          //     EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              semanticLabel: _obscureText
                                  ? 'show password'
                                  : 'hide password',
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),

                      //TextFormField(
                      // autovalidate: true,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return 'Please enter password';
                      //   }
                      //   return null;
                      // },
                      //   controller: mypassword,
                      //   obscureText: true,

                      //   decoration: InputDecoration(
                      //     border: UnderlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.green),
                      //     ),

                      //     suffixIcon: GestureDetector(
                      //       onTap: () {
                      //         setState(() {
                      //           _obscureText = !_obscureText;
                      //         });
                      //       },
                      //       child: Icon(
                      //         _obscureText
                      //             ? Icons.visibility
                      //             : Icons.visibility_off,
                      //         semanticLabel: _obscureText
                      //             ? 'show password'
                      //             : 'hide password',
                      //       ),
                      //     ),

                      //     // suffixIcon: Icon(
                      //     //   Icons.lock,
                      //     //   color: Colors.green,
                      //     // ),
                      //     hintText: 'Password',

                      //     //   // labelText: 'Password',
                      //     //   // icon: const Padding(
                      //     //   //   padding: const EdgeInsets.only(top: 20.0),
                      //     //   //   child: const Icon(Icons.lock),
                      //     // )),
                      //   ),

                      //   // obscureText: true,

                      //   //extra method
                      //   // decoration: const InputDecoration(
                      //   //   border: UnderlineInputBorder(
                      //   //     borderSide: BorderSide(color: Colors.green),
                      //   //   ),
                      //   // hintText: 'Password',
                      //   //   prefixIcon: Icon(Icons.password),
                      //   // ),
                      // ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(15))
              ],
            ),

            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.all(15),

              // alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if (mycontroller.text == "example@gmail.com" &&
                      mypassword.text == "1") {
                    print("match");
                  } else {
                    return print("please type properly");
                  }

                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       content: Text(mycontroller.text),
                  //     );
                  //   },
                  // );
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.green,
                ),
              ),
            ),

            Align(
              child: Text(
                "or",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 45,

              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 12, 10, 12),

              // alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/search.svg',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Padding(padding: EdgeInsets.all(5.0))

                    // Image.asset('images/email.svg'),
                    Text(
                      'Signup with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(3),
                  primary: Colors.white,
                ),
              ),
            ),

            Container(
              height: 45,

              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 12, 10, 12),
              // alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/facebook.svg',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Padding(padding: EdgeInsets.all(5.0))

                    // Image.asset('images/email.svg'),
                    Text(
                      'Signup with Facebook',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(3),
                  primary: Colors.white,
                ),
              ),
            ),

            Container(
              height: 45,

              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 12, 10, 12),

              // alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/email.svg',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Padding(padding: EdgeInsets.all(5.0))

                    // Image.asset('images/email.svg'),
                    Text('Signup with Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: '',
                        )),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(3),
                  primary: Colors.white,
                ),
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'images/logo.jpg',
                        height: 65,
                        width: 65,
                        // alignment: Alignment.bottomCenter,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

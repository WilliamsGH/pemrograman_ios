import 'package:flutter/material.dart';
import 'package:tugas_1_test/main_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Simak"),
        // ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login/background.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                Image(
                  image: AssetImage('assets/login/logo.png'),
                  width: 177,
                  height: 201,
                ),
                Text(
                  "Sistem Informasi Akademik\n(SIMAK)",
                  style: TextStyle(
                      color: Color.fromRGBO(63, 77, 243, 100), fontSize: 36),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefix: Container(
                              width: 10,
                              color: Colors.black,
                            ),
                            prefixIcon: Icon(Icons.person),
                            hintText: "Username",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefix: Container(
                                width: 10,
                                color: Colors.black,
                              ),
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                              border: OutlineInputBorder())),
                      SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return MainPage();
                            }));
                          },
                          child: Text("Sign In"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(92, 184, 92, 100),
                          ))
                    ],
                  ),
                )
                // Container(
                //   margin: EdgeInsets.only(top: 5),
                //   width: 300,
                //   child: Column(
                //     children: <Widget>[
                //       Card(
                //         child: Column()
                //       )
                //     ],
                //   ),
                // )
              ]),
            )),
      ),
    );
  }
}

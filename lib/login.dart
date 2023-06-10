import 'package:flutter/material.dart';
import 'package:post_test/daftar.dart';
import 'package:post_test/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 50, right: 50),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //--- Zuzuzu ---//
            const Center(
              child: Text(
                "Zuzuzu",
                style: TextStyle(
                  color: Color(0xFF555555),
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
            ),

            //--- Login ---//
            const Padding(
              padding: EdgeInsetsDirectional.only(top: 27, bottom: 128),
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial-Rounded',
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),

            //--- Username ---//
            SizedBox(
              height: 48,
              child: TextField(
                autocorrect: false,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF555555)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 14,
                  ),
                ),
                cursorColor: Colors.white,
                onTapOutside: (event) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
            ),

            //--- Kata Sandi ---//
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 27),
              child: SizedBox(
                height: 48,
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF555555)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    hintText: "Kata Sandi",
                    hintStyle: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 14,
                    ),
                  ),
                  cursorColor: Colors.white,
                  onTapOutside: (event) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                ),
              ),
            ),

            Row(
              children: [
                //--- Daftar ---//
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Daftar();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Belum punya akun",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),

                const Expanded(child: SizedBox.shrink()),

                //--- Login ---//
                SizedBox(
                  width: 81,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

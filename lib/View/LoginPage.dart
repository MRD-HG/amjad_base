import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90,
          title: Image.asset("assets/logo.png", width: 100, height: 100),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.1,
          shadowColor: Colors.grey.withOpacity(0.5),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Stack(
          children: [
            // Fixed height background image
            Positioned.fill(
              child: Opacity(
                opacity: 0.03,
                child: Image.asset(
                  "assets/zelij.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Foreground content
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: deviceHeight - 90, // subtract AppBar height
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          "اسم المستخدم",
                          style: GoogleFonts.mirza(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "كلمة المرور",
                          style: GoogleFonts.mirza(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const Spacer(),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("دخول"),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

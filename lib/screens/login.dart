import 'package:artconnect/config/colors.dart';
import 'package:artconnect/controllers/user_controller.dart';
import 'package:artconnect/forms/login.form.dart';
import 'package:artconnect/screens/forget_password.dart';
import 'package:artconnect/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../edit_profile_screen.dart';
import 'landing_screen.dart';

class Login extends HookConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var login = ref.read(authControllerProvider.notifier).login;

    var authState = ref.watch(authControllerProvider);
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: SingleChildScrollView(
          child: ReactiveForm(
            formGroup: loginForm,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'ArtConnect',
                  style: GoogleFonts.playfairDisplay(
                      color: primaryColor.shade800,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 15),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                  primaryColor.shade800),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()),
                              );
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  color: primaryColor.shade800,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                ReactiveTextField(
                  formControlName: "email",
                  controller: emailController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor.shade600), // Set underline color
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor.shade600), // Set underline color
                    ),
                    labelText: 'Enter your email address',
                    labelStyle: TextStyle(color: primaryColor.shade600),
                    // border: OutlineInputBorder(),
                  ),
                  validationMessages: {
                    "required": (error) => 'pls enter ur email',
                    "email": (error) => 'pls enter a valid email'
                  },
                ),
                SizedBox(height: 16.0),
                ReactiveTextField(
                  formControlName: "password",
                  controller: passwordController,
                  obscureText: true,
                  // obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor.shade600), // Set underline color
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor.shade600), // Set underline color
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: primaryColor.shade600),
                    //  border: OutlineInputBorder(),
                  ),
                  validationMessages: {
                    "required": (error) => 'pls enter ur password',
                    "minLength": (error) =>
                        'password should be at least 6 character'
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Forget_password()),
                        );
                      },
                      child: Text(
                        "Forget password\?",
                        style: TextStyle(
                          color: primaryColor.shade800,
                          fontSize: 16,
                        ),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 169.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReactiveFormConsumer(builder: (context, form, child) {
                      return FilledButton(
                        onPressed: form.invalid
                            ? null
                            : () {
                                // var email = emailController.text;
                                // var password = passwordController.text;
                                // login(email: email, password: password);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditProfileScreen()),
                                );
                              },
                        child: authState.isLoding
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor.shade800),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      color: primaryColor.shade800,
                      onPressed: () {},
                      icon: Icon(BoxIcons.bxl_twitter),
                    ),
                    IconButton(
                      color: primaryColor.shade800,
                      onPressed: () {},
                      icon: Icon(BoxIcons.bxl_instagram),
                    ),
                    IconButton(
                      color: primaryColor.shade800,
                      onPressed: () {},
                      icon: Icon(BoxIcons.bxl_linkedin),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

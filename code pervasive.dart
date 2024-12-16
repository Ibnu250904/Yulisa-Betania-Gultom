import 'package:flutter/material.dart';
import 'package:login/widgets/social_login_button.dart';
import 'package:login/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          constraints: const BoxConstraints(maxWidth: 411),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/261c43ef231f27611bc43ef8e884eff001fd33a7c19c93d14e8616c46821f27e?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 93.5,
                          backgroundImage: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/04f5bc808985b2bdc3842bd9cdbde94bc62361e7b8a1d77799d45c10aa621d96?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8'),
                        ),
                        const SizedBox(height: 9),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Form(
                            child: Column(
                              children: [
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                const SizedBox(height: 25),
                                CustomTextField(
                                  label: 'Username / Email',
                                  isPassword: false,
                                ),
                                const SizedBox(height: 6),
                                CustomTextField(
                                  label: 'Password',
                                  isPassword: true,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: Color(0xFF2D94FB),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF2D94FB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    minimumSize: Size(324, 50),
                                  ),
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                const SizedBox(height: 11),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Inter',
                                      color: Color(0xFF2D94FB),
                                    ),
                                    children: [
                                      TextSpan(text: "Don't have an account? "),
                                      TextSpan(
                                        text: 'Signup',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(child: Divider()),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        'Or Continue with:',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Expanded(child: Divider()),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SocialLoginButton(
                                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/214dd85623680dda1f032a28912001a2142d92dd4c9bf36e9c2273126925bbd1?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                                      onPressed: () {},
                                    ),
                                    SocialLoginButton(
                                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/7ccedf7628b4d78f482647c19ed8352e5737b48a817feebbc45b727278a22a80?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                                      onPressed: () {},
                                    ),
                                    SocialLoginButton(
                                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/6bdbe18c060d6a672726bf05c0a156705e4c3b76a4ccc6b68ac1f66d0abefd3f?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314,
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.imageUrl,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.network(
        imageUrl,
        fit: BoxFit.contain,
      ),
      iconSize: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'widgets/account_tile.dart';
import 'widgets/google_button.dart';
import 'widgets/language_selector.dart';
import 'widgets/footer_links.dart';

class GoogleSignInPage extends StatelessWidget {
  const GoogleSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 411),
          child: Column(
            children: [
              const GoogleButton(),
              const SizedBox(height: 32),
              
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    // Emoji Icon
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF0F0),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child: const Text('✌', style: TextStyle(fontSize: 17)),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Title Section
                    const Text(
                      'Choose an account',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF202124),
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    RichText(
                      text: const TextSpan(
                        text: 'to continue to ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF202124),
                        ),
                        children: [
                          TextSpan(
                            text: 'Company',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1A73E8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Account List
              const AccountTile(
                name: 'Yulisa Gultom',
                email: 'yulisa.gultom6@gmail.com',
              ),
              const Divider(),
              const AccountTile(
                name: 'Yulisa Gultom',
                email: 'yulisa.gultom6@gmail.com', 
              ),
              const Divider(),
              
              // Use Another Account Option
              ListTile(
                leading: const Icon(Icons.person_add),
                title: const Text(
                  'Use another account',
                  style: TextStyle(
                    color: Color(0xFF3C4043),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {},
              ),
              
              const Divider(),
              
              // Privacy Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xFF5F6368),
                    ),
                    children: [
                      TextSpan(
                        text: 'To continue, Google will share your name, email address, language preference, and profile picture with Company. Before using this app, you can review Company\'s ',
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1A73E8),
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'terms of service',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1A73E8),
                        ),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
              ),
              
              // Footer
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LanguageSelector(),
                  FooterLinks(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            'assets/google_logo.png',
            width: 14,
            height: 14,
          ),
          title: const Text(
            'Sign in with Google',
            style: TextStyle(
              color: Color(0xFF5F6368),
              fontSize: 14,
            ),
          ),
          onTap: () {},
        ),
        const Divider(),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final String name;
  final String email;

  const AccountTile({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFF7B1FA2),
        child: Text(
          name[0].toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Color(0xFF3C4043),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        email,
        style: const TextStyle(
          color: Color(0xFF5F6368),
          fontSize: 12,
        ),
      ),
      onTap: () {},
    );
  }
}
import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Text(
        'English (United States)',
        style: TextStyle(
          color: Color(0xFF202124),
          fontSize: 12,
        ),
      ),
      label: const Icon(
        Icons.arrow_drop_down,
        size: 8,
        color: Color(0xFF202124),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Help',
            style: TextStyle(
              color: Color(0xFF757575),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Privacy',
            style: TextStyle(
              color: Color(0xFF757575),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Terms',
            style: TextStyle(
              color: Color(0xFF757575),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'auth_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/261c43ef231f27611bc43ef8e884eff001fd33a7c19c93d14e8616c46821f27e?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.562,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 11,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(137),
                            child: Image.network(
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/b6ea91a78bf311615da48a1d8f3572a8de6b85212cc6b68a7315e44bd6c0b11a?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                              width: 157,
                              height: 157 / 1.19,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const AuthForm(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(62),
      ),
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            const SizedBox(height: 42),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Enter Your Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 13,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 87),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter Your Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 23,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 22),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle signup logic
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2D94FB),
                padding: const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 11,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.black),
                ),
              ),
              child: const Text(
                'Signup',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 38),
            TextButton(
              onPressed: () {
                // Handle navigation to login
              },
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(
                  color: Color(0xFF2D94FB),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspectionScreen extends StatelessWidget {
  const InspectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        constraints: const BoxConstraints(maxWidth: 411),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(38, 19, 10, 227),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/c95052e07fad59de542ef85907478d4de35c5fc64bdd4a0f9112aa0f25556028?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Yulisa Gultom',
                              style: GoogleFonts.jomhuria(
                                fontSize: 38,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Control Engineering',
                              style: GoogleFonts.jaldi(
                                fontSize: 21,
                                color: const Color(0xFFDACDE0),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        ClipOval(
                          child: Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/93c8609baea59e74765814629eac1cf57e124a4f349e21c215ce1e066dc0c3e1?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                            width: 52,
                            height: 52,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -45,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 337),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 41,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(77),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'INSPEKSI PERALATAN',
                              style: GoogleFonts.jomhuria(
                                fontSize: 61,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 62),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(36),
                              child: Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/cdc3c4b34a1b180eea598748deb4f54fcab0290d18c2f62405194cd326bf0757?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
                                width: 160,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'SCAN',
                              style: GoogleFonts.jomhuria(
                                fontSize: 66,
                                color: Colors.black.withOpacity(0.95),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/profile_header.dart';
import 'widgets/load_cell_info.dart';
import 'widgets/condition_status.dart';

class LoadCellDetailsScreen extends StatelessWidget {
  const LoadCellDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          constraints: const BoxConstraints(maxWidth: 411),
          child: Column(
            children: const [
              ProfileHeader(),
              LoadCellInfo(),
              ConditionStatus(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'condition_indicator.dart';

class MotorInfoCard extends StatelessWidget {
  const MotorInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.fromLTRB(23, 9, 23, 51),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(77),
      ),
      child: Column(
        children: [
          Text(
            'Conveyer Motor',
            style: GoogleFonts.jomhuria(fontSize: 55),
          ),
          const SizedBox(height: 27),
          ClipRRect(
            borderRadius: BorderRadius.circular(113),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/52313be3eb86504e9d63b1b3c2e39cb65b6ea8f54ec20a0747965ea4a8ba9508?placeholderIfAbsent=true&apiKey=d0147c7ca84e4f24b140b247113672d8',
              width: 275,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Model: Oriental Motor BLF Series\nMerek: Oriental Motor\n100-120 VAC (fase tunggal).\n200-240 VAC (fase tunggal dan tiga fase).\nTipe Gearhead:\nGear paralel.\nGear hollow shaft (penggerak poros berlubang).',
            style: GoogleFonts.inter(
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 17),
          Text(
            'KONDISI',
            style: GoogleFonts.inknutAntiqua(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFF40000),
            ),
          ),
          const SizedBox(height: 44),
          Text(
            'Inspeksi Terakhir : 15 Nov 2024\nKondisi : Baik',
            style: GoogleFonts.inclusiveSans(fontSize: 12),
          ),
          const SizedBox(height: 15),
          const ConditionIndicator(),
        ],
      ),
    );
  }
}
import 'package:amanahppob/app/constant/colors.dart';
import 'package:amanahppob/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  // final bool passToggle = true;
  // final prefs = GetStorage();
  final String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/amanah_logo.png',
                      height: MediaQuery.of(context).size.width / 5,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width / 2.9),
                // Padding(
                //   padding: EdgeInsets.only(
                //       left: 20.0,
                //       right: 20.0), // Menentukan padding kiri dan kanan
                //   child: Text(
                //     // 'Login Merchant'.toUpperCase(),
                //     'Masuk',
                //     textAlign: TextAlign.left,
                //     style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                //         fontFamily: 'Poppins',
                //         fontWeight: FontWeight.w500,
                //         color: appPurpleDark),
                //   ),
                // ),
                // const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0), // Menentukan padding kiri dan kanan
                  child: Text(
                    'Masukan Nomor Handphone\nOTP akan dikirimkan ke nomor kamu',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: appPurple,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    // obscureText: passToggle ? true : false,
                    keyboardType: TextInputType.phone,
                    // controller: noHp,
                    style: const TextStyle(
                      // Style the actual input text
                      // color: Colors.black,
                      color: appPurple,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Nomor Whatsapp',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.black),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      suffixIcon: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      prefixIcon: const Icon(Icons.phone),
                      prefix: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: appPurple,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (String value) {
                      // print(phone.completeNumber.toString());
                      if (!value.startsWith('+628')) {
                        // Set the error message and clear the text
                        // setState(() {
                        //   errorMessage =
                        //       'Number must start with 8 Example 821xxx';
                        //   // noHp.clear();
                        // });
                      } else {
                        // setState(() {
                        //   errorMessage = '';
                        // });
                      }
                    },
                  ),
                ),
                // if (errorMessage.isNotEmpty)
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //     child: Text(
                //       errorMessage,
                //       style: TextStyle(color: Colors.red),
                //     ),
                //   ),
                const SizedBox(height: 50),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20),
                  decoration: BoxDecoration(
                    color: appPurple,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ButtonTheme(
                    height: 50,
                    child: TextButton(
                      onPressed: () => Get.offAllNamed(Routes.HOME),
                      //async {
                      // prefs.remove('noHpBefore');
                      // prefs.remove('user_id');
                      // prefs.remove('otp');
                      // prefs.remove('expired');
                      // // await prefs.write('noHpBefore', noHp.text);
                      // controller.progressDaftar = true;
                      // controller.progressDaftar
                      //     ? SmartDialog.showLoading(
                      //         animationType: SmartAnimationType.scale,
                      //         builder: (_) => const CustomLoading(),
                      //       )
                      //     : controller.progressDaftar = false;
                      // print('b');
                      // await Future.delayed(const Duration(seconds: 2));
                      // SmartDialog.dismiss();
                      // await controller.checkNoHp();
                      //},
                      child: Center(
                        child: Text(
                          "Kirim OTP Melalui Whatsapp".toUpperCase(),
                          style: const TextStyle(
                            color: appWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

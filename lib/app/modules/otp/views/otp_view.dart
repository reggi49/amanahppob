import 'package:amanahppob/app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:amanahppob/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('OtpView'),
          // centerTitle: true,
          ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Lottie.asset("assets/lotties/otp-sent.json"),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "OTP Telah Dikirim ke Whatsapp Kamu",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Masukan Nomor OTP",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        style: ButtonStyle(
                          foregroundColor:
                              WidgetStateProperty.all<Color>(appWhite),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(appPurple),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verifikasi',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Belum Menerima Kode OTP?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Kirim Ulang Kode OTP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: appPurple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              // FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              // FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: appPurple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}

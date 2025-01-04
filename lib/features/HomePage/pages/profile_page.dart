import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/global/widgets/button_without_fill.dart';
import '../../../core/injection_container.dart';
import '../../Authentication/presentation/pages/login/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(AssetsManager.profile),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nate Samson',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: 'Your Email',
                icon: Icons.email,
                initialValue: 'nate@email.com',
              ),
              const SizedBox(height: 15),
              _buildPhoneInputField(initialValue: "0936706169"),
              const SizedBox(height: 15),
              _buildDropdownField(
                label: 'Gender',
                options: ['Male', 'Female'],
              ),
              const SizedBox(height: 15),
              _buildInputField(
                label: 'Address',
                icon: Icons.location_on,
                initialValue: 'Your address',
              ),
              const SizedBox(height: 30),
              ButtonWithoutFill(
                  buttonName: "Logout",
                  onPressed: () async {
                    await sl<SharedPreferences>().remove('token');

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildInputField({
  required String label,
  required IconData icon,
  String? initialValue,
}) {
  return TextFormField(
    initialValue: initialValue,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorManager.darkGreen),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

Widget _buildDropdownField({
  required String label,
  required List<String> options,
}) {
  String selectedValue = options[1];
  return StatefulBuilder(
    builder: (context, setState) {
      return DropdownButtonFormField<String>(
        value: selectedValue,
        items: options.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    },
  );
}

Widget _buildPhoneInputField({
  String? initialValue,
}) {
  return IntlPhoneField(
    initialValue: initialValue,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: TextInputType.number,
    initialCountryCode: 'SY',
    decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.darkGreen))),
  );
}

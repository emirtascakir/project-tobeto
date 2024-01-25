import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _dateController = TextEditingController();
    final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

    var _name = "";
    var _surname = "";
    var _phoneNumber = "";
    DateTime _dateOfBirth = DateTime.now();
    var _tcIdNo = "";
    var _eMail = "";
    var _aboutMe = "";

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          color: context.colorScheme.onBackground,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      context.colorScheme.primary,
                      Colors.pink.shade900
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/avatar.svg",
                      height: 80,
                      width: 80,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildTextFormField(
                          _name, "Adınız", TextInputType.name, 45),
                      const SizedBox(height: 20),
                      _buildTextFormField(
                          _surname, "Soyadınız", TextInputType.text, 25),
                      const SizedBox(height: 20),
                      _buildTextFormField(_phoneNumber, "Telefon Numaranız",
                          TextInputType.phone, 13),
                      const SizedBox(height: 20),
                      TextFormField(
                        cursorColor: Colors.grey,
                        controller: _dateController,
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black87,
                              ),
                              borderRadius: BorderRadius.circular(12.0)),
                          labelText: 'Doğum Tarihiniz',
                          hintText: 'gg/aa/yyyy',
                        ),
                        keyboardType: TextInputType.none,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '##/##/####',
                            filter: {'#': RegExp(r'[0-9]')},
                          ),
                        ],
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: _dateOfBirth,
                            firstDate: DateTime(1930),
                            lastDate: DateTime.now(),
                          );

                          if (pickedDate != null) {
                            _dateController.text =
                                _dateFormat.format(pickedDate);
                            _dateOfBirth = pickedDate;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      _buildTextFormField(
                          _tcIdNo, "TC Kimlik No", TextInputType.number, 11),
                      const SizedBox(height: 20),
                      _buildTextFormField(
                          _eMail, "E-posta", TextInputType.emailAddress, 30),
                      const SizedBox(height: 20),
                      _buildTextFormField(
                          _aboutMe, "Hakkımda", TextInputType.text, 100),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: context.colorScheme.primary),
                          onPressed: () {},
                          child: SizedBox(
                              width: context.deviceSize.width * .5,
                              child: const Text(
                                "Kaydet",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ))),
                    ],
                  ),
                ),
              ),
              const HomePageFooter()
            ],
          ),
        ),
      ),
    );
  }

  TextFormField _buildTextFormField(
      String value, String label, TextInputType keyboardType, int maxLength) {
    return TextFormField(
      maxLength: maxLength,
      cursorColor: Colors.grey,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: '',
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.0,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2.0,
              color: Colors.black87,
            ),
            borderRadius: BorderRadius.circular(12.0)),
      ),
      autocorrect: false,
      onSaved: (newValue) => value = newValue!,
    );
  }
}

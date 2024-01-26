import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:project_tobeto/blocs/profile/profile_bloc.dart';
import 'package:project_tobeto/blocs/profile/profile_event.dart';
import 'package:project_tobeto/blocs/profile/profile_state.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/user_model.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _dateController = TextEditingController();
    final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');
    TextEditingController _name = TextEditingController();
    TextEditingController _surname = TextEditingController();
    TextEditingController _phoneNumber = TextEditingController();
    DateTime _dateOfBirth = DateTime.now();
    TextEditingController _tcIdNo = TextEditingController();
    TextEditingController _eMail = TextEditingController();
    TextEditingController _aboutMe = TextEditingController();
    TextEditingController _username = TextEditingController();

    void _save() {
      context.read<ProfileBloc>().add(
            UpdateProfile(
              user: UserModel(
                email: _eMail.text,
                username: _username.text,
                name: _name.text,
                surname: _surname.text,
                tcIdNo: _tcIdNo.text,
                phoneNumber: _phoneNumber.text,
                aboutMe: _aboutMe.text,
                dateOfBirth: _dateOfBirth,
              ),
            ),
          );
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is Initial) {
          context.read<ProfileBloc>().add(FetchProfileInfo());
        }
        if (state is ProfileInfoFetched) {
          UserModel user = state.user;

          _name.text = user.name!;
          _surname.text = user.surname!;
          _username.text = user.username!;
          _phoneNumber.text = user.phoneNumber!;
          _dateController.text = _dateFormat.format(user.dateOfBirth!)!;
          _tcIdNo.text = user.tcIdNo!;
          _eMail.text = user.email;
          _aboutMe.text = user.aboutMe!;
        }
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              color: context.colorScheme.onBackground,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              context.colorScheme.primary,
                              Colors.pink.shade900
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
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
                    child: Column(
                      children: [
                        _buildTextField(_name, "Adınız", TextInputType.name, 45,
                            _name.text),
                        const SizedBox(height: 20),
                        _buildTextField(_surname, "Soyadınız",
                            TextInputType.text, 25, _surname.text),
                        const SizedBox(height: 20),
                        _buildTextField(_username, "Kullanıcı Adınız",
                            TextInputType.text, 20, _username.text),
                        const SizedBox(height: 20),
                        _buildTextField(_phoneNumber, "Telefon Numaranız",
                            TextInputType.phone, 13, _phoneNumber.text),
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
                        _buildTextField(_tcIdNo, "TC Kimlik No",
                            TextInputType.number, 11, _tcIdNo.text),
                        const SizedBox(height: 20),
                        _buildTextField(_eMail, "E-posta",
                            TextInputType.emailAddress, 30, _eMail.text),
                        const SizedBox(height: 20),
                        _buildTextField(_aboutMe, "Hakkımda",
                            TextInputType.text, 100, _aboutMe.text),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: context.colorScheme.primary),
                            onPressed: _save,
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
                  const HomePageFooter()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

TextField _buildTextField(TextEditingController controller, String label,
    TextInputType keyboardType, int maxLength, String currentValue) {
  return TextField(
    onChanged: (value) => currentValue = value,
    controller: controller,
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
  );
}

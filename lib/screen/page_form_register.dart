import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageFormRegister extends StatefulWidget {
  const PageFormRegister({super.key});

  @override
  State<PageFormRegister> createState() => _PageFormRegisterState();
}

class _PageFormRegisterState extends State<PageFormRegister> {
  TextEditingController etFullName = TextEditingController();
  TextEditingController etUsername = TextEditingController();
  TextEditingController etPassword = TextEditingController();
  TextEditingController etTgllahir = TextEditingController();
  TextEditingController etEmail = TextEditingController();
  GlobalKey<FormState> KeyForm = GlobalKey<FormState>();

  String nFullName = "";
  String nUsername = "";
  String nPassword = "";
  String nTglLahir = "";
  String nEmail = "";
  String nAgama = "Islam"; // Default
  String nJenisKelamin = "Laki-laki"; // Default

  Future selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null) {
      setState(() {
        etTgllahir.text = DateFormat("dd-MM-yyyy").format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Page Register"),
      ),
      body: Form(
        key: KeyForm,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: etFullName,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Full name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: etUsername,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextFormField(
                  controller: etEmail,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextFormField(
                  controller: etPassword,
                  obscureText: true,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextFormField(
                  onTap: () {
                    selectDate();
                  },
                  controller: etTgllahir,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Tgl lahir",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  value: nAgama,
                  items: ["Islam", "Kristen", "Hindu", "Buddha", "Konghucu"]
                      .map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      nAgama = value.toString();
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Pilih Agama",
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Jenis Kelamin: "),
                    Row(
                      children: [
                        Radio(
                          value: "Laki-laki",
                          groupValue: nJenisKelamin,
                          onChanged: (value) {
                            setState(() {
                              nJenisKelamin = value.toString();
                            });
                          },
                        ),
                        Text("Laki-laki"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: "Perempuan",
                          groupValue: nJenisKelamin,
                          onChanged: (value) {
                            setState(() {
                              nJenisKelamin = value.toString();
                            });
                          },
                        ),
                        Text("Perempuan"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      nFullName = etFullName.text;
                      nTglLahir = etTgllahir.text;
                      nEmail = etEmail.text;
                      nUsername = etUsername.text;
                      nPassword = etPassword.text;
                      showToast(
                        'Username: $nUsername\n'
                            'Password: $nPassword\n'
                            'Fullname: $nFullName\n'
                            'Email: $nEmail\n'
                            'Tanggal Lahir: $nTglLahir\n'
                            'Agama: $nAgama\n'
                            'Jenis Kelamin: $nJenisKelamin',
                        context: context,
                        alignment: Alignment.center,
                        position: StyledToastPosition.bottom,
                      );
                    });
                  },
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
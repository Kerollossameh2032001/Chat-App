import 'package:chat_app/outhountication/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  IconData passIcon = Icons.visibility_off;
  Color passIconColor = Colors.grey;
  bool isShowPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.orange,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: nameController,
                  cursorColor: Colors.orange,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'name is too short';
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      label: const Text(
                        'Name',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 5,
                          )),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 2,
                          ))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.orange,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'email is too short';
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      label: const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 5,
                          )),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 2,
                          ))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: passController,
                  cursorColor: Colors.orange,
                  obscureText: isShowPass,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'password is too short';
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.orange,
                      ),
                      label: const Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 5,
                          )),
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (passIcon == Icons.visibility_off) {
                              passIcon = Icons.visibility;
                              passIconColor = Colors.orange;
                              isShowPass = false;
                              setState(() {});
                            } else {
                              passIcon = Icons.visibility_off;
                              passIconColor = Colors.grey;
                              isShowPass = true;
                              setState(() {});
                            }
                          },
                          icon: Icon(
                            passIcon,
                            color: passIconColor,
                          )),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                            width: 2,
                          ))),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.orange,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    padding: const EdgeInsetsDirectional.all(10),
                    child: Text(
                      'Register'.toUpperCase(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

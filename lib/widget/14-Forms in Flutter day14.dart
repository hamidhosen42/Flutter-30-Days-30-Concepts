// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field, must_be_immutable, unused_local_variable, avoid_print

import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  //----------------FUNCTIONS------------------
  trysubmit() {
    final invalid = _formKey.currentState!.validate();

    if (invalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print("Error");
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms in Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // -------------First Name---------
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textForm(
                      'Enter First Name',
                      Icon(Icons.person),
                      "first_name",
                      'First Name should not be Empty',
                      firstname),
                ),
                // ----------last name-----------
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textForm('Enter last Name', Icon(Icons.person),
                      "lastname", 'Last Name should not be Empty', lastname),

                  //  TextFormField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Enter Last Name',
                  //     prefixIcon: Icon(Icons.person),
                  //   ),
                  //   key: ValueKey("lastname"),
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return 'Last Name should not be Empty';
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  //   onSaved: (value) {
                  //     lastname = value.toString();
                  //   },
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    key: ValueKey("email"),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                    key: ValueKey("password"),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Minimum length of password should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text("Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField textForm(
    String s,
    Icon icon,
    String s1,
    String s2,
    String names,
  ) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: s,
        prefixIcon: icon,
      ),
      key: ValueKey(s1),
      validator: (value) {
        if (value.toString().isEmpty) {
          return s2;
        } else {
          return null;
        }
      },
      onSaved: (value) {
        names = value.toString();
      },
    );
  }
}

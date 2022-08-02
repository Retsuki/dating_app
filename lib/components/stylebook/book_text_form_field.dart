import 'package:dating_app/components/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookTextFormField extends StatefulWidget {
  const BookTextFormField({super.key});

  static const routeName = 'book-text-form-field';

  @override
  State<BookTextFormField> createState() => _BookTextFormFieldState();
}

class _BookTextFormFieldState extends State<BookTextFormField> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const AppTextFormField(
                labelText: 'Email',
                hintText: 'Email',
              ),
              const Gap(10),
              AppTextFormField(
                labelText: 'validator',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'invalid email';
                  }
                  return null;
                },
              ),
              const Gap(10),
              const AppTextFormField(
                labelText: 'Password',
                obscureText: true,
              ),
              const Gap(10),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

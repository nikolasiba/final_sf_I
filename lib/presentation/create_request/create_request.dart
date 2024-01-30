import 'package:flutter/material.dart';
import 'package:quien_me_debe/widgets/custom_buttom.dart';
import 'package:quien_me_debe/widgets/custom_text_field.dart';

class CreateRequest extends StatelessWidget {
  CreateRequest({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear solicitud'),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                  controller: textEditingController,
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  label: 'Nombre'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                  controller: textEditingController,
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  label: 'ciudadano'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                  controller: textEditingController,
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  label: 'tiempo'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                  controller: textEditingController,
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  label: 'hola'),
            ),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {},
                text: 'Crear',
                backgroundColor: Colors.blue[900]!)
          ],
        ),
      ),
    );
  }
}

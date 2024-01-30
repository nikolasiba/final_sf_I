import 'package:flutter/material.dart';
import 'package:quien_me_debe/widgets/custom_buttom.dart';
import 'package:quien_me_debe/widgets/custom_text_field.dart';

class VerifyCitizen extends StatelessWidget {
  VerifyCitizen({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Verificar ciudadno'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomTextField(
                  controller: textEditingController,
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  label: 'Nombre o id del ciudadano'),
            ),
            CustomButton(
                onPressed: () {},
                text: 'Verificar',
                backgroundColor: Colors.blue[900]!)
          ],
        ),
      ),
    );
  }
}

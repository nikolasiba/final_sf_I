import 'package:flutter/material.dart';
import 'package:quien_me_debe/widgets/custom_buttom.dart';
import 'package:quien_me_debe/widgets/custom_text_field.dart';

class DeleteRequest extends StatelessWidget {
  DeleteRequest({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eliminar solicitud'),
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
                  label: 'Codigo'),
            ),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {},
                text: 'Eliminar',
                backgroundColor: Colors.blue[900]!)
          ],
        ),
      ),
    );
  }
}

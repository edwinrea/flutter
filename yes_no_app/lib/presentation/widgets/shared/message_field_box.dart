import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusnode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a ?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('Valor de la caja de texto: $textValue');
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ));

    return TextFormField(
      onTapOutside: (event) {
        focusnode.unfocus();
      },
      focusNode: focusnode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusnode.requestFocus();
      },
    );
  }
}

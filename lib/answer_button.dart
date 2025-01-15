import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  //const AnswerButton(this.answerOption,{super.key});
  const AnswerButton({
    super.key,
    required this.answerOption,
    required this.onTap,
  });

  final String answerOption;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                foregroundColor: Colors.white),
            child: Text(answerOption, textAlign: TextAlign.center,),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:harits_portofolio/ui/base/base_constanta.dart';
import 'package:harits_portofolio/ui/base/base_style.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text,
                style: S.tStyle.subtitle,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"))
            ],
          ),
        ),
      ),
    );
  }
}

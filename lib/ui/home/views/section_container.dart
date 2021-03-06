import 'package:flutter/material.dart';
import 'package:harits_portofolio/ui/base/base_style.dart';
import 'package:harits_portofolio/ui/widgets/gap.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    Key? key,
    this.children = const <Widget>[],
    this.titleText,
  }) : super(key: key);
  final List<Widget> children;
  final String? titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: S.paddingSection,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (titleText != null) ...[
            Text(
              titleText!,
              style: S.tStyle.title,
            ),
            const Gap.v(16),
          ],
          ...children.map((e) => e),
        ],
      ),
    );
  }
}

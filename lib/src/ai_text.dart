import 'package:ai_text/src/ai_text_baseline_text_widget.dart';
import 'package:flutter/material.dart';

/// AiText
class AiText extends StatefulWidget {
  final Widget child;

  const AiText({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<AiText> createState() => _AiTextState();
}

class _AiTextState extends State<AiText> {
  @override
  Widget build(BuildContext context) {
    return AiTextBaselineTextWidget(
      child: widget.child,
    );
  }
}

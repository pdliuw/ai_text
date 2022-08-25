import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

/// AppBaselineTextWidget
class AiTextBaselineTextWidget extends StatefulWidget {
  final Widget child;

  const AiTextBaselineTextWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State createState() => _AiTextBaselineTextWidgetState();
}

class _AiTextBaselineTextWidgetState extends State<AiTextBaselineTextWidget> {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final RenderBox? renderBox =
        _key.currentContext?.findRenderObject() as RenderBox?;
    final height = renderBox?.size.height ?? 0;
    return Baseline(
      baseline: 0,
      baselineType: TextBaseline.ideographic,
      key: _key,
      child: Transform(
        transform: Matrix4.translation(
          Vector3(0, height, 0),
        ),
        child: widget.child,
      ),
    );
  }
}

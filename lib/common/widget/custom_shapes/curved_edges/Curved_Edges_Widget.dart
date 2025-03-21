import 'package:flutter/material.dart';

import 'Curved_edges.dart';

class CustomCurvedEdgesWidget extends StatelessWidget {
  const CustomCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: child,

    );
  }
}

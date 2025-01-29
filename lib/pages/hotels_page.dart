// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assignment_06/widgets/service_widget.dart';

class HotelsPage extends StatefulWidget {
  final int index;
  final String detail;
  const HotelsPage({
    super.key,
    required this.index,
    required this.detail,
  });

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return ServiceWidget().services(
      mqh * 0.32,
      mqw * 0.39,
      'assets/images/${widget.index + 1}_1.png',
      'assets/images/${widget.index + 1}_2.png',
      widget.detail,
    );
  }
}

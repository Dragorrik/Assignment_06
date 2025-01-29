import 'package:assignment_06/pages/searched_page.dart';
import 'package:assignment_06/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  final int index;
  final String detail;
  const ActivitiesPage({super.key, required this.index, required this.detail});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
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

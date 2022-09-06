import 'package:flutter/material.dart';
import 'package:flutter_study_202209/components/drop_down_list.dart';

class DropDownListView extends StatelessWidget {
  const DropDownListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: const DropDownList()),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _kItemExtent = 32.0;
const List<String> _projectNames = <String>[
  'プロジェクト1',
  'プロジェクト2',
  'プロジェクト3',
  'プロジェクト4',
  'プロジェクト5',
  'プロジェクト6',
];

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  int _selectedProject = 0;
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => _showDialog(
          CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: _kItemExtent,
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedItem) {
              setState(() {
                _selectedProject = selectedItem;
              });
            },
            children: List<Widget>.generate(_projectNames.length, (int index) {
              return Center(
                child: Text(
                  _projectNames[index],
                ),
              );
            }),
          ),
        ),
        child: Container(
          height: deviceHeight * 0.08,
          width: deviceWidth * 0.8,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Text(projectName),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  _projectNames[_selectedProject],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(),
              const VerticalDivider(
                color: Colors.black,
              ),
              const Icon(
                Icons.expand_more,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

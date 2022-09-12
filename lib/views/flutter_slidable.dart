import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class SlidableView extends StatefulWidget {
  const SlidableView({Key? key}) : super(key: key);

  @override
  State<SlidableView> createState() => _SlidableViewState();
}

class _SlidableViewState extends State<SlidableView> {
  final now = DateFormat('yyyy.MM.dd HH:mm').format(DateTime.now());
  List names = List.generate(10, (index) => (index + 1).toString());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              "お知らせ一覧",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: ListView.builder(
            key: const ValueKey(0),
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Slidable(
                endActionPane: ActionPane(
                  extentRatio: 0.2,
                  motion: ScrollMotion(),
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          names.removeAt(index);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.red,
                            ),
                            child: Icon(
                              Icons.delete_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "${now.toString()}\n${names[index]}内容内容内容内容内容内容内容内容",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KehadiranPage extends StatefulWidget {
  const KehadiranPage({super.key, required this.name, required this.nim, required this.status});

  final String name;
  final String nim;
  final String status;

  @override
  State<KehadiranPage> createState() => _KehadiranPageState();
}

class _KehadiranPageState extends State<KehadiranPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image(
                    image:
                        AssetImage('assets/mahasiswa/' + widget.nim + '.jpg')),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama\t: " + widget.name),
                      Text("NIM\t: " + widget.nim),
                      Text("Status\t: " + widget.status),
                    ],
                  ),
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          // elevation: 5,
          // margin: EdgeInsets.all(100),
          margin: EdgeInsets.only(
            left: 50,
            right: 50,
            top: 10,
            bottom: 10,
          ),
          
        ),
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SerachPage extends StatefulWidget {
  const SerachPage({Key? key}) : super(key: key);

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {

  TextEditingController controller =
  TextEditingController(text: "test");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 14,top: 45),
            child: CupertinoSearchTextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  
                });
              },
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
        ],
      ),
    );
  }
}

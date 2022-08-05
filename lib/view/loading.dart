import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Colors.red,
            strokeWidth: 8,
          ),
          SizedBox(height: 20,),
          Text(
            text,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}

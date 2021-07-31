import 'package:flutter/material.dart';

class RoundedTextfield extends StatelessWidget {
  const RoundedTextfield({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[100]),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(minWidth: 60),
                    contentPadding: new EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search',
                    labelStyle: TextStyle(fontSize: 13),
                    hintStyle: TextStyle(fontSize: 13),
                  ),
                ),
              )
    );
  }
}
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
    Widget build(BuildContext context) {
        return Column(
            children: [
                SizedBox(
                    width: 100,
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Compliance:')
                    ),
                ),
                ElevatedButton(
                    onPressed: () => print('PCV'),
                    child: Text('PCV'),
                ),
            ],
        );
    }
}

import 'package:flutter/material.dart';

class GridTopBarWidget extends StatelessWidget {
  final String title;
  final String sellAll;
  final Color color;
  GridTopBarWidget({this.color, this.title, this.sellAll});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            decoration: BoxDecoration(
              color: color,
              // borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            margin: const EdgeInsets.only(left: 8, right: 8, top: 15),
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

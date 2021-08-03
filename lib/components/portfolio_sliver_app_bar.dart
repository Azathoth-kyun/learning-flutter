import 'package:flutter/material.dart';

class PortfolioSliverAppBar extends StatelessWidget {
  final String _title;

  const PortfolioSliverAppBar(
    this._title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.red,
      expandedHeight: 200,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
        background: Image.network(
          'http://4.bp.blogspot.com/-mbUSOIvIfWs/TjQSfqPTFbI/AAAAAAAAA5w/gMnWP3-odek/s1600/ojo4.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          _buildItemHeader(Icons.person, "계정"),
          _buildItemOption(
            "이메일",
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
          _buildItemHeader(Icons.notifications, "알림"),
          _buildItemOption(
            "알림",
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
          _buildItemHeader(Icons.person, "정보"),
          _buildItemOption(
            "앱버전",
            Text("1.0.0"),
          ),
          _buildItemOption(
            "이용약관",
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
          _buildItemOption(
            "개인정보 취급방침",
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemHeader(IconData iconData, String title) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Icon(
              iconData,
              color: Colors.blueAccent,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          height: 15,
          thickness: 2,
        ),
      ],
    );
  }

  Widget _buildItemOption(String title, Widget widget) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          widget,
        ],
      ),
    );
  }
}

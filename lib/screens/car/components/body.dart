import 'package:carplan/screens/car/components/item.dart';
import 'package:flutter/material.dart';

class CarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildGridView(),
    );
  }

  GridView _buildGridView() {
    return GridView.count(
      padding: EdgeInsets.all(16),
      // 아이템 있는 만큼 높이
      crossAxisCount: 1,
      childAspectRatio: 1.5,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: List.generate(2, (index) {
        return CarItem();
      }),
    );
  }
}

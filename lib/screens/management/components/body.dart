import 'package:carplan/screens/management/components/item.dart';
import 'package:flutter/material.dart';

class ManagementBody extends StatelessWidget {
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
      crossAxisCount: 2,
      childAspectRatio: 1,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: List.generate(15, (index) {
        return ManagementItem();
      }),
    );
  }
}

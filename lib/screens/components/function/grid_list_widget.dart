import 'package:flutter/material.dart';

import '../../components/calculator_page.dart';
import './service_selection.dart';

class GridListWidget extends StatefulWidget {
  final List<dynamic> dataList;

  GridListWidget({required this.dataList});

  @override
  State<GridListWidget> createState() => _GridListWidgetState();
}

class _GridListWidgetState extends State<GridListWidget> {
  late Map<String, dynamic> dataList;

  // @override
  // void initState() {
  //   super.initState();
  //   // Fetch the first question with the ID of the first item in dataList
  //   fetchFirstQuestion(
  //       widget.dataList.isNotEmpty ? widget.dataList[0]['id'] : null);
  // }

  // Future<void> fetchFirstQuestion(int? itemId) async {
  //   if (itemId != null) {
  //     final serviceSelection = ServiceSelection();
  //     final data = await serviceSelection.serviceSelected(itemId);
  //     setState(() {
  //       dataList = data;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.75,
          // mainAxisSpacing: 10,
        ),
        itemCount: widget.dataList.length,
        itemBuilder: (context, index) {
          final item = widget.dataList[index];
          final itemId = item['id'];
          final imagePath = 'assets/icons/homeicons/$itemId.webp';

          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalculatorPage(
                      serviceId: itemId,
                      serviceTitle: item['title'],
                    ),
                  ));
            },
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Image.asset(
                    imagePath,
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  item['title'],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

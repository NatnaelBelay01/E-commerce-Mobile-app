import 'package:ecommerce/features/presentation/widgets/smalltextfield.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 410,
        height: 338,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallTextField(name: 'catagory', controller: TextEditingController(),),
            Text('price'),
            RangeSlider(
              values: const RangeValues(20, 80),
              min: 0,
              max: 100,
              divisions: 10,
              inactiveColor: Colors.grey,
              activeColor: Colors.blue,
              labels: const RangeLabels('20', '80'),
              onChanged: (RangeValues newValues) {},
            ),
            Container(
              width: 377,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFF3F51F3),
								borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'APPLY',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

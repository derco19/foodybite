import 'package:flutter/material.dart';
import 'package:potbelly/values/values.dart';
import 'package:potbelly/widgets/potbelly_button.dart';

class FilterScreen extends StatefulWidget {
  static const String ROUTE_NAME = StringConst.FILTER_ROUTE;

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double initialSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: Image.asset(
          ImagePath.arrowBackIcon,
          fit: BoxFit.none,
          color: AppColors.headingText,
        ),
        title: Text(
          'Filter',
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_22,
          ),
        ),
        actions: <Widget>[
          Image.asset(
            ImagePath.arrowBackIcon,
            fit: BoxFit.none,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 24.0, left: 8.0, right: 8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Select Category'),
              ],
            ),
            SizedBox(height: 24.0),
            Wrap(
              direction: Axis.horizontal,
              spacing: 16,
              runAlignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                categoryButton(buttonTitle: "Italian"),
                categoryButton(buttonTitle: "Chinese"),
                categoryButton(buttonTitle: "Mexican"),
                categoryButton(buttonTitle: "Thai"),
                categoryButton(buttonTitle: "Arabian"),
                categoryButton(buttonTitle: "Indian"),
                categoryButton(buttonTitle: "American"),
                categoryButton(buttonTitle: "Korean"),
                categoryButton(buttonTitle: "European"),
              ],
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Distance'),
              ],
            ),
            SizedBox(height: 24.0),
            Slider(
              value: initialSliderValue,
              min: 0,
              max: 100,
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              label: "$initialSliderValue",
              onChanged: (newValue) {
                setState(() {
                  initialSliderValue = newValue;
                });
              },
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Ratings'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryButton(
      {@required String buttonTitle,
      Color backgroundColor = AppColors.primaryColor}) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        child: PotbellyButton(
          buttonTitle,
          buttonWidth: 100,
          buttonHeight: 50,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: Colors.grey[400],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(Sizes.BORDER_RADIUS_8),
            ),
          ),
          buttonTextStyle: Styles.customNormalTextStyle(
            color: AppColors.accentText,
            fontSize: Sizes.TEXT_SIZE_16,
          ),
        ),
      ),
    );
  }
}

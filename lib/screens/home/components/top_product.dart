import 'package:adidas_product_ui_app/utils/utils.dart';
import 'package:flutter/material.dart';

class TopProdcut extends StatefulWidget {
  const TopProdcut({Key key}) : super(key: key);

  @override
  _TopProdcutState createState() => _TopProdcutState();
}

class _TopProdcutState extends State<TopProdcut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/adidas.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 35.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: screenAwareSize(50.0, context),
                      height: screenAwareSize(50.0, context),
                      decoration: BoxDecoration(
                          color: Colors.black26, shape: BoxShape.circle),
                      child: Image.asset('assets/images/360.png')),
                ),
              )
            ],
          ),
          Positioned(
            left: screenAwareSize(18.0, context),
            bottom: screenAwareSize(15.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rating',
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAwareSize(10.0, context),
                      fontFamily: 'Montserrat-SemiBold'),
                ),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.star, color: Color(0xFFFFE600)),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text(
                      '(378 People)',
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:adidas_product_ui_app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'bottom_product.dart';
import 'top_product.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF696D77), Color(0xFF292C36)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: screenAwareSize(20.0, context),
              ),
              onPressed: () {},
            ),
            title: Text('Energy Cloud',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(18.0, context),
                    fontFamily: 'Montserrat-Bold')),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: screenAwareSize(20.0, context),
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [TopProdcut(), BottomProduct()],
            ),
          )),
    );
  }
}

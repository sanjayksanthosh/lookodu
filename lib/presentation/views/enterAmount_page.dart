import 'package:flutter/material.dart';

import '../../utils/contants/app_colors.dart';
import '../../utils/screen_uils.dart';

class EnterAmountPage extends StatelessWidget {
   EnterAmountPage({Key? key}) : super(key: key);
TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Enter Amount"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: ResponsiveUtil.responsiveWidth(context, 100),
        child: Column(children: [
          Column(
            children: [
              Text("Dosa Express"),
              Text("Hilite Mall, Poovangal, Calicut"),

            ],
          ),
          SizedBox(height: ResponsiveUtil.responsiveHeight(context, 40),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter Amount"),
                  Stack(
                    children: [
                      TextField(
                        style: TextStyle(fontSize: 28),controller: amountController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(  prefix: Text(
                          '₹', // Rupee symbol
                          style: TextStyle(
                             // Text color
                            fontSize: 28.0, // Font size
                          ),
                        ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal:
                                  ResponsiveUtil.responsiveWidth(context, 6),
                              vertical:
                                  ResponsiveUtil.responsiveHeight(context, 4)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: AppColors.actiiveTextFieldBorderColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: AppColors.textFieldBorderColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'Amount',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Positioned(right: 20,bottom: 20,
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1E2848), // Color #1E2848
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'IND >',
                            style: TextStyle(
                              color: Color(0xFF83899B), // Text color
                              fontSize: 16.0, // Font size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Select Payment Method"),

                  Container(padding: EdgeInsets.all(20),
                    width: ResponsiveUtil.responsiveWidth(context, 90),
                    height: ResponsiveUtil.responsiveHeight(context,10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.textFieldBorderColor, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(12.0), // Curved corners
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Change',style: TextStyle(color:AppColors.primaryColor ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        TextButton(
          onPressed: () {
            // Handle button press
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.white, // Background color
            minimumSize: Size(
              ResponsiveUtil.responsiveWidth(context, 90),
              ResponsiveUtil.responsiveHeight(context, 7),
            ), // Set minimum width and height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
            ),
          ),
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.black), // Text color
          ),
        )

        ]),
      ),
    );
  }
}

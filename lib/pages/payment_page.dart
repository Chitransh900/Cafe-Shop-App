import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'RecieptPage.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = "";
  String expiryDate = "";
  String cvvCode = "";
  String cardHolderName = "";
  bool isCvvFocused = false;

  void userTappedPay(BuildContext context) {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Card Holder Name: $cardHolderName"),
                Text("Expiry Date: $expiryDate"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecieptPage()),
              ),
              child: const Text("Yes"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        shrinkWrap: true,
        padding: EdgeInsets.all(16.0),
        children: [
          CreditCardWidget(
            cardBgColor: const Color(0xFF014D4E),
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
                expiryDate = data.expiryDate;
                cardNumber = data.cardNumber;
              });
            },
            formKey: formKey,
          ),
          SizedBox(height: 200,),
          SlideAction(
            enabled: true,
            borderRadius: 12,
            sliderRotate: true,
            elevation: 0,
            innerColor: const Color(0xFF014D4E),
            outerColor: Colors.grey.shade300,
            sliderButtonIcon: const Icon(
              Icons.currency_rupee,
              color: Colors.white,
            ),
            text: "Slide To Pay",
            onSubmit: () {
              userTappedPay(context);
            },
          ),
        ],
      ),
    );
  }
}

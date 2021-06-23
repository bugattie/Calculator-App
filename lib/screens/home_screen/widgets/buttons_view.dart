import 'package:flutter/material.dart';

class ButtonsView extends StatelessWidget {
  final Function btnClick;
  final Function clear;
  final Function evaluate;

  const ButtonsView({
    Key? key,
    required this.btnClick,
    required this.clear,
    required this.evaluate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: 'C',
                    textColor: Colors.black87,
                    press: clear,
                  ),
                  CalcBtn(
                    text: '(',
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: ')',
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '/',
                    press: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '1',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '2',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '3',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '*',
                    press: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '4',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '5',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '6',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '+',
                    press: btnClick,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '7',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '8',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '9',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '-',
                    press: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '.',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '0',
                    textColor: Colors.black45,
                    press: btnClick,
                  ),
                  CalcBtn(
                    text: '000',
                    textColor: Colors.black45,
                    press: btnClick,
                    size: 14,
                  ),
                  CalcBtn(
                    text: '=',
                    textColor: Colors.white,
                    bgColor: Color(0xFF28ADF8),
                    press: evaluate,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalcBtn extends StatelessWidget {
  final String text;
  final Color textColor;
  final double size;
  final Color bgColor;
  final Function press;

  const CalcBtn({
    Key? key,
    required this.text,
    this.textColor = Colors.blue,
    this.size = 24,
    this.bgColor = Colors.white,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      color: bgColor,
      child: SizedBox(
        width: 40,
        height: 40,
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          onPressed: () {
            press(text);
          },
        ),
      ),
    );
  }
}

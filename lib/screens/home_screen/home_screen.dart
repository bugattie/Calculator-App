import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

import './widgets/result_view.dart';
import './widgets/buttons_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentExpression = '';
  String lastExpression = '';

  void btnClick(String text) {
    setState(() => currentExpression += text);
  }

  void clearAll(_) {
    setState(() {
      lastExpression = '';
      currentExpression = '';
    });
  }

  void evaluate(_) {
    setState(() {
      lastExpression = currentExpression;
      currentExpression = currentExpression.interpret().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE5E3E6),
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              ResultView(
                currentExp: currentExpression,
                lastExp: lastExpression,
              ),
              ButtonsView(
                btnClick: btnClick,
                clear: clearAll,
                evaluate: evaluate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

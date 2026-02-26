import 'package:calculadora2/enums/operation.type.dart';
import 'package:calculadora2/widgets2/button.widgets.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  late String displayNumber;
  OperationTypeEnum? operationType;

  @override
  void initState() {
    displayNumber = "0";
    super.initState();
  }

  void setOperationType(OperationTypeEnum newType){
    setState(() {
      operationType = newType;
      displayNumber = newType.symbol;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora"), ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            color:  Colors.black12,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                  displayNumber,
                  style: TextStyle(fontSize: 48, fontWeight:  FontWeight.bold)),
            )
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
              children: [
                ButtonWidget(text: "C", onPressed: (){}, color: Colors.red,),
                ButtonWidget(color: Colors.orange, text: "\u232B", onPressed: (){}),
                ButtonWidget(text: "÷", onPressed: (){
                  setOperationType(OperationTypeEnum.division);
                }, color: Colors.blue, textColor: Colors.white),
              ],
            ),
             Row(children: [
                 ButtonWidget(text: "7", onPressed: (){}),
                 ButtonWidget(text: "8", onPressed: (){}),
                 ButtonWidget(text: "9", onPressed: (){}),
                 ButtonWidget(text: "x", onPressed: (){
                   setOperationType(OperationTypeEnum.multiplication);
                 }, color: Colors.blue, textColor: Colors.white),
             ],),
              Row(children: [
                ButtonWidget(text: "4", onPressed: (){}),
                ButtonWidget(text: "5", onPressed: (){}),
                ButtonWidget(text: "6", onPressed: (){}),
                ButtonWidget(text: "-", onPressed: (){
                  setOperationType(OperationTypeEnum.subtraction);
                }, color: Colors.blue, textColor: Colors.white),
              ],),
              Row(children: [
                ButtonWidget(text: "1", onPressed: (){}),
                ButtonWidget(text: "2", onPressed: (){}),
                ButtonWidget(text: "3", onPressed: (){}),
                ButtonWidget(text: "+", onPressed: (){
                  setOperationType(OperationTypeEnum.addition);
                }, color: Colors.blue, textColor: Colors.white),
              ],),
              Row(children: [
                ButtonWidget(text: "0", onPressed: (){}),
                ButtonWidget(text: ",", onPressed: (){}),
                ButtonWidget(text: "=", onPressed: (){}, color: Colors.green,)
              ],)
            ],
          )
        ],
      ),
    );
  }
}
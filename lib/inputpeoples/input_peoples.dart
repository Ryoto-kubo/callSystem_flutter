import 'package:flutter/material.dart';
import 'package:callsystem/header/header_title.dart';
import 'package:callsystem/button/button_container.dart';
import 'dart:async';


class InputPeoples extends StatefulWidget {
  @override
  _InputPeoplesState createState() => _InputPeoplesState();
}

class _InputPeoplesState extends State<InputPeoples> {

  // Class InputFeild
  String _initialValue;

  // Class ButtonContainer
  String buttonText;
  Color  buttonTextColor;
  Color  buttonColor;
  Color  buttonBackColor;
  double width  = 300.0;
  double height = 100.0;
  double top;
  bool   isDisabled;

  // Class _ButtonNumber
  double buttonWidth      = 120.0;
  double clearButtonWidth = 260.0;
  Color  buttonDiseableColor;
  Color  buttonNumberTextColor;
  bool   isButtonNumberDisabled;
  bool   isButtonMove = false;

  void addNumber(String number){
    setState(() {
      if(_initialValue == null){
        _initialValue = number;
      } else {
        _initialValue += number;
      }
      isButtonMove = false;
    });
  }

  void clear(){
    setState(() {
      _initialValue = null;
      isButtonMove = true;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // _initialValueが入力されてるかどうか
    if (_initialValue == null || _initialValue.length > 2){
      buttonText      = '';
      buttonTextColor = Color(0xFFFFFFFF);
      buttonColor     = Color(0xFFF08080);
      buttonBackColor = Color(0xFF8B0000);
      top             = 5.0;
      isDisabled      = false;
    } else {
      // _initialValueが2桁以上になればbutton desableにする
      buttonText      = '次へ';
      buttonTextColor = Color(0xFFFFFFFF);
      buttonColor     = Color(0xFF53C9C5);
      buttonBackColor = Color(0xFF008B8B);
      top             = 0.0;
      isDisabled      = true;
    }

    if (_initialValue == null || _initialValue.length <= 1) {
      buttonDiseableColor = Color(0xFFF5F5F5);
      buttonNumberTextColor = Color(0xFF232323);
      isButtonNumberDisabled = true;
    } else if (_initialValue.length == 2) {
      buttonDiseableColor = Color(0xFFDCDCDC);
      buttonNumberTextColor = Color(0xFF808080);
      isButtonNumberDisabled = false;
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: HeaderTitle(headerTitle: '人数を入力してください'),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InputFeild(initialValue: _initialValue),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _ButtonNumber(
                          number: 1,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('1') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 2,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('2') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 3,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('3') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _ButtonNumber(
                          number: 4,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('4') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 5,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('5') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 6,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('6') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _ButtonNumber(
                          number: 7,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('7') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 8,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('8') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 9,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('9') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _ButtonNumber(
                          number: 0,
                          buttonWidth: buttonWidth,
                          buttonDiseableColor: buttonDiseableColor,
                          buttonNumberTextColor: buttonNumberTextColor,
                          isButtonNumberDisabled: isButtonNumberDisabled,
                          isButtonMove: isButtonMove,
                          onPressed: () => addNumber('0') // 変数onPressedにaddNumber()メソッドを格納
                        ),
                        _ButtonNumber(
                          number: 'クリア',
                          buttonWidth: clearButtonWidth,
                          buttonDiseableColor: Color(0xFFF5F5F5),
                          buttonNumberTextColor: Color(0xFF232323),
                          isButtonNumberDisabled: true,
                          isButtonMove: false,
                          onPressed: () => clear() // 変数onPressedにclear()メソッドを格納
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: ButtonContainer(
                  buttonText:      buttonText,
                  buttonTextColor: buttonTextColor,
                  buttonColor:     buttonColor,
                  buttonBackColor: buttonBackColor,
                  buttonWidth:     width,
                  buttonHeight:    height,
                  topPosition:     top,
                  isDisabled:      isDisabled,
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

class _ButtonNumber extends StatefulWidget {

  // 変数の定義
  final number;
  final buttonWidth;
  final buttonDiseableColor;
  final buttonNumberTextColor;
  final isButtonNumberDisabled;
  final isButtonMove;
  final onPressed;

  // 引数の受け取り
  _ButtonNumber({
    this.number,
    this.buttonWidth,
    this.buttonDiseableColor,
    this.buttonNumberTextColor,
    this.isButtonNumberDisabled,
    this.isButtonMove,
    this.onPressed
  });

  @override
  _ButtonNumberState createState() => _ButtonNumberState();
}


class _ButtonNumberState extends State<_ButtonNumber> {
  double top;

  void buttonDown() {
    setState(() {
      top = 5.0;
      widget.onPressed();
      Timer(
        Duration(
          milliseconds: 300,
        ), () {
        buttonUp();
      });
    });
  }

  void buttonUp() {
    setState(() {
      top = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (!widget.isButtonNumberDisabled){
      top = 5.0;
    } else if (widget.isButtonMove) {
      top = 0.0;
    }

    return Stack(
      children: <Widget>[
        Container(
          width: widget.buttonWidth,
          height: 130.0,
        ),
        Positioned(
          top: 10,
          width: widget.buttonWidth,
          height: 120.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF696969),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
        AnimatedPositioned(
          top: top,
          duration: Duration(milliseconds: 100),
          width: widget.buttonWidth,
          height: 120.0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF696969)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: FlatButton(
              // color: Colors.red,
              color: widget.buttonDiseableColor,
              child: Text(
                '${widget.number}',
                style: TextStyle(
                  color: widget.buttonNumberTextColor,
                  fontSize: 40.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              onPressed: () => widget.isButtonNumberDisabled ? buttonDown() : null,
            ),
          ),
        ),
      ],
    );
  }
}

class InputFeild extends StatelessWidget{

  final String initialValue; //受け取る変数の定義

  InputFeild({this.initialValue}); //受け取る値を上記の変数に代入

  @override
  Widget build(BuildContext context){

    final _numberInputContorller = new TextEditingController();
    // 入力値の変更
    _numberInputContorller.text = initialValue;

    return Row(
      children: <Widget>[
        Container(
          width: 350.0,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(20.0)),
            border: Border(
              top: BorderSide(width: 6.0, color: Color(0xFF696969)),
              left: BorderSide(width: 6.0, color: Color(0xFF696969)),
              right: BorderSide(width: 6.0, color: Color(0xFF696969)),
              bottom: BorderSide(width: 6.0, color: Color(0xFF696969)),
            )
          ),
          child: TextFormField(
            controller: _numberInputContorller,
            textAlign:TextAlign.center,
            readOnly: true,
            style: TextStyle(
              fontSize: 60.0,
              color: Color(0xFF696969)
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 110.0, left: 20.0),
          child: Text(
            '名様',
            style: TextStyle(
              fontSize: 40.0,
            )
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';

class HeaderButton extends StatefulWidget {
  final String title;
  final int index;
  final bool lineIsVisible;


  HeaderButton(this.index, this.title, {this.lineIsVisible = true});

  @override
  State<HeaderButton> createState() => _HeaderButtonState(this.index);
}

class _HeaderButtonState extends State<HeaderButton> {

  int index;
  final List _isHovering = [
    false,
    false,
    false
  ];

  ResponsiveApp responsiveApp;

  _HeaderButtonState(this.index);


  @override
  Widget build(BuildContext context) {

    responsiveApp = ResponsiveApp(context);
    return InkWell(
      onHover: (value){
        setState(() {
          value
           ? _isHovering[this.index] = true           
           : _isHovering[this.index] = false;             
        });
      },
      onTap: (){},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: _isHovering[this.index]
                ? Colors.white
                : Colors.white70
            ),
          ),
          SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.lineIsVisible ? _isHovering[this.index]: widget.lineIsVisible,
            child: Container(
              height: responsiveApp.lineHznButtonHeight,
              width: responsiveApp.lineHznButtonWidth,
              color: Colors.white
            )
          )
        ],
      ),
    );
  }
}
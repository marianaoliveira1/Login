import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/main.dart';
import 'package:login/pages/home.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class InputInformation extends StatefulWidget {
  const InputInformation({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<InputInformation> createState() => _InputInformationState();
}

class _InputInformationState extends State<InputInformation> {
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    _focusNode.addListener(
      () {
        print(shouldHomeInputStayFocuded);
        if (!mounted || !shouldHomeInputStayFocuded) {
          return;
        }
        if (!_focusNode.hasFocus) {
          FocusScope.of(context).requestFocus(_focusNode);
          Future.delayed(
            const Duration(milliseconds: 100),
            () {
              if (!_focusNode.hasFocus) {
                FocusScope.of(context).requestFocus(_focusNode);
              }
            },
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_focusNode);
      },
      child: Container(
        padding: EdgeInsets.all(5.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Center(
          child: TextField(
            autofocus: true,
            focusNode: _focusNode,
            textAlign: TextAlign.center,
            controller: widget.controller,
            decoration: const InputDecoration(
              hintText: "Digite seu texto",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              var text = value;
              widget.controller.clear();
              storeInformations.addInformations(text, uuid.v4());
            },
          ),
        ),
      ),
    );
  }
}

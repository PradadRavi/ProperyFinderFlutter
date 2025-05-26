import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({super.key, required this.box, required this.getOtp});
  final int box;
  final void Function(String) getOtp;

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> with WidgetsBindingObserver {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;
  @override
  void initState() {
    widget.box;
    _controllers = List.generate(widget.box, (_) => TextEditingController());
    _focusNodes = List.generate(widget.box, (_) => FocusNode());
    super.initState();
  }

  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    final isKeyboardVisible = bottomInset > 0.0;

    if (!isKeyboardVisible) {
      print('✅ Keyboard dismissed');
      // You can call any function here
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double spacing = 12;
    final double totalSpacing = spacing * (widget.box - 1);
    final double boxSize = (screenWidth - totalSpacing - 100) / widget.box;
    final borderCircular = BorderRadius.circular(14);
    print("${context.width}");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        widget.box,
        (index) {
          return SizedBox(
            height: boxSize,
            width: boxSize,
            child: TextField(
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              textAlignVertical: TextAlignVertical.center,
              onChanged: (value) {
                _onOtpChanged(value, index);
              },
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
              cursorColor: AppColors.primaryColor,
              cursorHeight: 4,
              cursorWidth: 4,
              cursorRadius: Radius.circular(2),
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.only(left: 4, top: 10, bottom: 14),
                hintText: ".",
                hintStyle: context.headlineMedium?.copyWith(
                  color: AppColors.borderGreyColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: borderCircular,
                  borderSide: BorderSide(
                    color: AppColors.borderGreyColor,
                    width: 1.2,
                  ), // change color here
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: borderCircular,
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1.8,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: borderCircular,
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onOtpChanged(String value, int index) {
    if (value.length == 1 && index < widget.box) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      print("call $value");
      _focusNodes[index - 1].requestFocus();
    }
    widget.getOtp(_controllers.map((e) => e.text).join());
  }
}

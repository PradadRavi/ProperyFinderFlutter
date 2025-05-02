import 'package:flutter/material.dart';

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
    return Row(
      spacing: 4,
      children: List.generate(
        widget.box,
        (index) {
          return Expanded(
            child: TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                _onOtpChanged(value, index);
              },
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              decoration: InputDecoration(),
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
      print("call $value"); //Done
      _focusNodes[index - 1].requestFocus();
    }
    widget.getOtp(_controllers.map((e) => e.text).join());
  }
}

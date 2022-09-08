import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.padding, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(46),
        toggleSize: 14,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.redA400,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.redA400,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

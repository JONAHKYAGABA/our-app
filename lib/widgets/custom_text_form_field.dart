import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsMedium20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.PoppinsMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.PoppinsMedium14:
        return TextStyle(
          color: ColorConstant.gray601,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray601,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillRedA400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBluegray400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray7001e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillRedA400:
        return ColorConstant.redA400;
      case TextFormFieldVariant.FillBluegray400:
        return ColorConstant.bluegray400;
      case TextFormFieldVariant.OutlineGray7001e:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillRedA400:
        return true;
      case TextFormFieldVariant.FillBluegray400:
        return true;
      case TextFormFieldVariant.OutlineGray7001e:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTB30:
        return getPadding(
          left: 8,
          top: 8,
          right: 8,
          bottom: 30,
        );
      case TextFormFieldPadding.PaddingTB22:
        return getPadding(
          left: 13,
          top: 13,
          right: 13,
          bottom: 22,
        );
      case TextFormFieldPadding.PaddingT20:
        return getPadding(
          left: 14,
          top: 20,
          right: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingT18:
        return getPadding(
          left: 17,
          top: 18,
          right: 17,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingT22:
        return getPadding(
          left: 17,
          top: 22,
          right: 17,
          bottom: 17,
        );
      default:
        return getPadding(
          left: 20,
          top: 21,
          right: 20,
          bottom: 20,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder5,
  RoundedBorder10,
}

enum TextFormFieldPadding {
  PaddingT21,
  PaddingTB30,
  PaddingTB22,
  PaddingT20,
  PaddingT18,
  PaddingT22,
}

enum TextFormFieldVariant {
  OutlineGray70019,
  FillRedA400,
  FillBluegray400,
  OutlineGray7001e,
}

enum TextFormFieldFontStyle {
  PoppinsMedium18,
  PoppinsMedium20,
  PoppinsMedium16,
  PoppinsMedium14,
}

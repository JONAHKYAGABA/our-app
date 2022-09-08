import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      default:
        return getPadding(
          all: 19,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineRedA400:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray101:
        return ColorConstant.gray101;
      default:
        return ColorConstant.redA400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineRedA400:
        return Border.all(
          color: ColorConstant.redA400,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillRedA400:
      case ButtonVariant.FillGray101:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium22:
        return TextStyle(
          color: ColorConstant.redA400,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium18:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium16:
        return TextStyle(
          color: ColorConstant.bluegray901,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder30,
  CircleBorder22,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll19,
  PaddingAll11,
  PaddingAll15,
}

enum ButtonVariant {
  FillRedA400,
  OutlineRedA400,
  FillGray101,
}

enum ButtonFontStyle {
  PoppinsMedium22WhiteA700,
  PoppinsMedium22,
  PoppinsMedium18,
  PoppinsMedium16,
  PoppinsMedium24,
}

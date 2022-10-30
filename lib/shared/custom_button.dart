import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';
import 'theme.dart';

class CircleButton extends StatelessWidget {
  final Function(BuildContext) onTap;
  final IconData icon;
  const CircleButton({
    Key? key,
    required this.onTap,
    this.icon = Icons.arrow_forward_ios_rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: customColor[CustomColor.black], // button color
        child: InkWell(
          splashColor: customColor[CustomColor.crimson],
          onTap: () {
            onTap(context);
          }, // inkwell color
          child: SizedBox(
            width: 30,
            height: 30,
            child: Icon(icon, size: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends ClipRRect {
  final CustomColor bgColor;
  final CustomColor textColor;
  final String label;
  final CustomW width;
  final double height;
  final TypoType typoType;
  final Function() onPressed;

  CustomButton({
    Key? key,
    this.width = CustomW.w4,
    this.bgColor = CustomColor.lightblack,
    this.textColor = CustomColor.white,
    this.typoType = TypoType.body,
    this.height = 36.0,
    super.borderRadius = BorderRadius.zero,
    required this.label,
    required this.onPressed,
  }) : super(
          key: key,
          child: Material(
            child: InkWell(
              onTap: onPressed,
              child: Ink(
                height: height,
                width: customW[width],
                decoration: BoxDecoration(
                  color: customColor[bgColor],
                  borderRadius: borderRadius,
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: customColor[textColor],
                      fontWeight: typoStyle[typoType]!.fontWeight,
                      fontSize: typoStyle[typoType]!.fontSize,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}

enum SvgIconType {
  arrowBack,
  bellLight,
  chatIcon,
  chatIconPink,
  lipIcon,
  close,
  editLight,
  feedingBottle,
  flower,
  flowerPink,
  home,
  homePink,
  myProfile,
  myProfilePink,
  logo
}

final svgIcon = {
  SvgIconType.arrowBack: SvgPicture.asset('assets/icons/arrow_back.svg'),
  SvgIconType.bellLight: SvgPicture.asset('assets/icons/bell_light.svg'),
  SvgIconType.chatIcon: SvgPicture.asset('assets/icons/chat.svg'),
  SvgIconType.chatIconPink: SvgPicture.asset('assets/icons/chat_pink.svg'),
  SvgIconType.lipIcon: SvgPicture.asset('assets/icons/lip_icon.svg'),
  SvgIconType.close: SvgPicture.asset('assets/icons/close.svg'),
  SvgIconType.editLight: SvgPicture.asset('assets/icons/edit_light.svg'),
  SvgIconType.feedingBottle:
      SvgPicture.asset('assets/icons/feeding_bottle_icon.svg'),
  SvgIconType.flower: SvgPicture.asset('assets/icons/flower.svg'),
  SvgIconType.flowerPink: SvgPicture.asset('assets/icons/flower_pink.svg'),
  SvgIconType.home: SvgPicture.asset('assets/icons/home.svg'),
  SvgIconType.homePink: SvgPicture.asset('assets/icons/home_pink.svg'),
  SvgIconType.myProfile: SvgPicture.asset('assets/icons/my_profile.svg'),
  SvgIconType.myProfilePink:
      SvgPicture.asset('assets/icons/my_profile_pink.svg'),
  SvgIconType.logo: SvgPicture.asset(
    'assets/logos/logo.svg',
    width: 94,
  ),
};

class CustomIconBtn extends ClipRRect {
  final void Function() onPressed;
  final SvgIconType svgAsset;

  CustomIconBtn({
    super.key,
    required this.onPressed,
    required this.svgAsset,
  }) : super(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child: SizedBox(
                width: 24,
                height: 24,
                child: svgIcon[svgAsset],
              ),
            ),
          ),
        );
}

class CustomOutlinedBtn extends InkWell {
  final CustomW width;
  final CustomColor textColor;
  final String label;
  final double height;
  final Function() onPressed;

  CustomOutlinedBtn({
    Key? key,
    this.width = CustomW.w2,
    this.height = 30.0,
    this.textColor = CustomColor.black,
    required this.label,
    required this.onPressed,
  }) : super(
          key: key,
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15.0),
          child: Ink(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
              height: height,
              width: customW[width],
              decoration: BoxDecoration(
                color: customColor[CustomColor.white],
                border: Border.all(
                  color: customColor[textColor]!,
                ),
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: Center(
                child: CustomText(
                  text: label,
                ),
              )),
        );
}

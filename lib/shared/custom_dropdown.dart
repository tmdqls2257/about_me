import 'package:about_me/shared/theme.dart';
import 'package:about_me/shared/custom_text.dart';
import 'package:flutter/material.dart';

import '../utils/url_parser_route.dart';

class DropdownButtonApp extends StatelessWidget {
  DropdownButtonApp({super.key});

  // String dropdownValue = '이력서';
  final List<String> itemList = ['노션', '블로그'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      height: 34,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          hint: CustomText(
            text: '이력서',
            typoType: TypoType.bodyBolder,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide:
                  BorderSide(width: 1, color: customColor[CustomColor.stroke]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide:
                  BorderSide(width: 1, color: customColor[CustomColor.stroke]!),
            ),
          ),
          // value: dropdownValue,
          items: itemList.map(_buildMenuItem).toList(),
          onChanged: (String? newValue) async {
            newValue == '노션'
                ? urlParserRoute(
                    'https://www.notion.so/f11c7d9385c34a858659349c17764e84')
                : urlParserRoute('https://applecoke.tistory.com/');
          },
        ),
      ),
    );
  }

  DropdownMenuItem<String> _buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: CustomText(
        text: item,
        typoType: TypoType.body,
      ),
    );
  }
}

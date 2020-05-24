import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'dart:math';

import './data/Tags.dart';

const MAX_TAGS = 10;

class TagInput extends StatelessWidget {
  TagInput({Key key, this.onChange}) : super(key: key);
  final onChange;

  _handleSelectedCategories(List<TagCategory> categories) {
    if (categories.length == 0) {
      onChange(List<String>());
      return;
    }

    var categoryPickCount = (MAX_TAGS / categories.length).floor();
    List<String> result = [];
    categories.forEach((element) {
      var copiedList = Tags[element].sublist(0, Tags[element].length);
      copiedList.shuffle();
      result.addAll(copiedList.sublist(0, [categoryPickCount, copiedList.length].reduce(min)));
    });

    onChange(result);
  }

  @override
  Widget build(BuildContext c) {
    var itemList = TagCategory.values.map((value) {
      return {
        "display": TagTranslation[value],
        "value": value,
      };
    }).toList();

    return Card(
      child: MultiSelectFormField(
        autovalidate: false,
        titleText: 'Tag categories',
        validator: (value) {
          if (value == null || value.length == 0) {
            return 'Please select one or more options';
          }

          return value;
        },
        dataSource: itemList,
        textField: 'display',
        valueField: 'value',
        okButtonLabel: 'OK',
        cancelButtonLabel: 'CANCEL',
        hintText: 'Please choose one or more',
        fillColor: Color.fromRGBO(0, 0, 0, 0),
        onSaved: (values) {
          var castedValues = values.map<TagCategory>((value) => value as TagCategory).toList();
          _handleSelectedCategories(castedValues != null ? castedValues : []);
        },
      )
    );
  }
}

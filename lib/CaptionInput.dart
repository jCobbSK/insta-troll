import 'dart:math';

import 'package:flutter/material.dart';

import './data/Jokes.dart';
import './data/Motivations.dart';

enum CaptionType {
  custom,
  joke,
  motivation,
}

const Map<CaptionType, String> Translations = {
  CaptionType.custom: 'Custom',
  CaptionType.joke: 'Joke',
  CaptionType.motivation: 'Motivational quote',
};

const Map<CaptionType, List<String>> Data = {
  CaptionType.custom: [],
  CaptionType.joke: Jokes,
  CaptionType.motivation: Motivations,
};

class CaptionInput extends StatefulWidget {
  CaptionInput({Key key, this.onChange}) : super(key: key);
  final onChange;

  @override
  _CaptionInputState createState() => _CaptionInputState(onChange);
}

class _CaptionInputState extends State<CaptionInput> {
  _CaptionInputState(_onChange) {
    onChange = _onChange;
  }

  CaptionType selectedType = CaptionType.custom;
  String customText = '';
  var onChange;

  void _setSelectedType(CaptionType type) {
    setState(() {
      selectedType = type;
    });
  }

  void handleChangedSelectedType(CaptionType newType) {
    _setSelectedType(newType);
    if (newType == CaptionType.joke || newType == CaptionType.motivation) {
      setRandomDataItem();
    }
    if (newType == CaptionType.custom) {
      handleChangeAdditionalInput('');
    }
  }

  void handleChangeAdditionalInput(String newValue) {
    setState(() {
      customText = newValue;
    });
    onChange(newValue);
  }

  void setRandomDataItem() {
    var data = Data[selectedType];
    onChange(data[new Random().nextInt(data.length)]);
  }

  Widget buildDropdown() {
    var items = CaptionType.values
        .map<DropdownMenuItem<CaptionType>>((CaptionType type) {
      return DropdownMenuItem<CaptionType>(
          child: Text(Translations[type]), value: type);
    }).toList();
    return DropdownButton<CaptionType>(
        isExpanded: true,
        items: items,
        value: selectedType,
        onChanged: handleChangedSelectedType);
  }

  Widget buildAdditionalInput() {
    if (selectedType == CaptionType.custom) {
      return TextField(
        onChanged: handleChangeAdditionalInput,
        decoration: InputDecoration(labelText: 'Caption'),
        maxLines: null,
      );
    }

    return OutlineButton(
        onPressed: setRandomDataItem, child: Icon(Icons.refresh));
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[buildDropdown(), buildAdditionalInput()];

    return Card(
        child: Padding(
            child: Column(children: children), padding: EdgeInsets.all(10.0)),
        margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0));
  }
}

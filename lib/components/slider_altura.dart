import '../constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatefulWidget {
  const SliderAltura({Key? key}) : super(key: key);

  @override
  _SliderAlturaState createState() => _SliderAlturaState();
}

class _SliderAlturaState extends State<SliderAltura> {
  double _slideValue = 120; // Valor inicial da altura

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              _slideValue.toStringAsFixed(0), // Mostra a altura sem casas decimais
              style: numberTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 250,
          value: _slideValue,
          onChanged: (double value) {
            setState(() {
              _slideValue = value; // Atualiza a altura conforme o usuário move o slider
            });
          },
        )
      ],
    );
  }
}
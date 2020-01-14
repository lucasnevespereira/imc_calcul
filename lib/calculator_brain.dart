import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _imc;

  String calculateIMC() {
    // weight divide by (height in meters divided by 100 (to convert into cm)) elevated to 2
    _imc = weight / pow(height / 100, 2);
    // return imc value in string with 1 number after coma (,)
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'Surpoids';
    } else if (_imc > 18.5) {
      return 'Corpulence Normale';
    } else {
      return 'Maigreur';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Tu as une masse corporelle plus élevée que la normale. Essaye de t\'exercer plus souvent. ';
    } else if (_imc > 18.5) {
      return 'Tu as une masse corporelle normale. Bon travail !';
    } else {
      return 'Tu as une masse corporelle plus faible que la normal. Tu devrais manger un peu plus. ';
    }
  }
}

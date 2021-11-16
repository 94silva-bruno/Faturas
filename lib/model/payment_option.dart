class PaymentOption {

  PaymentOption(this._number, this._value, this._total);

  int _number;
  double _value;
  double _total;

  int get number => _number;

  double get value => _value;

  double get total => _total;
}
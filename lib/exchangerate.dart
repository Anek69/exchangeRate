class Exchangerate {
  Exchangerate({
    required this.timestamp,
    required this.base,
    required this.date,
    required this.rates,
  });
  late final int timestamp;
  late final String base;
  late final String date;
  late final Rates rates;

  Exchangerate.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    base = json['base'];
    date = json['date'];
    rates = Rates.fromJson(json['rates']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['timestamp'] = timestamp;
    _data['base'] = base;
    _data['date'] = date;
    _data['rates'] = rates.toJson();
    return _data;
  }
}

class Rates {
  Rates({
    required this.jpy,
    required this.usd,
  });
  late final double jpy;
  late final double usd;

  Rates.fromJson(Map<String, dynamic> json) {
    jpy = json['JPY'];
    usd = json['USD'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['JPY'] = jpy;
    _data['USD'] = usd;
    return _data;
  }
}

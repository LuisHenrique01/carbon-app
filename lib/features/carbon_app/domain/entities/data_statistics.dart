// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class DataStatistics extends Equatable {
  Statistics? statistics;
  int? cleanerThan;

  DataStatistics({this.statistics, this.cleanerThan});

  DataStatistics.fromJson(Map<String, dynamic> json) {
    if (json['statistics'] != null) {
      statistics = Statistics.fromJson(json['statistics']);
    } else {
      statistics = null;
    }
    cleanerThan = json['cleanerThan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (statistics != null) {
      data['statistics'] = statistics!.toJson();
    }
    data['cleanerThan'] = cleanerThan;
    return data;
  }

  @override
  List<Object?> get props => [statistics, cleanerThan];
}

class Statistics extends Equatable {
  int? adjustedBytes;
  double? energy;
  Co2? co2;

  Statistics({this.adjustedBytes, this.energy, this.co2});

  Statistics.fromJson(Map<String, dynamic> json) {
    adjustedBytes = json['adjustedBytes'];
    energy = json['energy'];
    if (json['co2'] != null) {
      co2 = Co2.fromJson(json['co2']);
    } else {
      co2 = null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adjustedBytes'] = adjustedBytes;
    data['energy'] = energy;
    if (co2 != null) {
      data['co2'] = co2!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [adjustedBytes, energy, co2];
}

class Co2 extends Equatable {
  Grid? grid;
  Grid? renewable;

  Co2({this.grid, this.renewable});

  Co2.fromJson(Map<String, dynamic> json) {
    if (json['grid'] != null) {
      grid = Grid.fromJson(json['grid']);
    } else {
      grid = null;
    }
    if (json['renewable'] != null) {
      renewable = Grid.fromJson(json['renewable']);
    } else {
      renewable = null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (grid != null) {
      data['grid'] = grid!.toJson();
    }
    if (renewable != null) {
      data['renewable'] = renewable!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [grid, renewable];
}

class Grid extends Equatable {
  double? grams;
  double? litres;

  Grid({this.grams, this.litres});

  Grid.fromJson(Map<String, dynamic> json) {
    grams = json['grams'];
    litres = json['litres'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grams'] = grams;
    data['litres'] = litres;
    return data;
  }

  @override
  List<Object?> get props => [grams, litres];
}

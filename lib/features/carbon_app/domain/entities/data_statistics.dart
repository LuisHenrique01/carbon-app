import 'package:equatable/equatable.dart';

class DataStatistics extends Equatable {
  final Statistics statistics;
  final int cleanerThan;

  const DataStatistics({required this.statistics, required this.cleanerThan});

  factory DataStatistics.fromJson(Map<String, dynamic> json) {
    return DataStatistics(
        statistics: Statistics.fromJson(json['statistics']),
        cleanerThan: json['cleanerThan']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statistics'] = statistics.toJson();
    data['cleanerThan'] = cleanerThan;
    return data;
  }

  @override
  List<Object?> get props => [statistics, cleanerThan];
}

class Statistics extends Equatable {
  final int adjustedBytes;
  final double energy;
  final Co2 co2;

  const Statistics(
      {required this.adjustedBytes, required this.energy, required this.co2});

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
        adjustedBytes: json['adjustedBytes'],
        energy: json['energy'],
        co2: Co2.fromJson(json['co2']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adjustedBytes'] = adjustedBytes;
    data['energy'] = energy;
    data['co2'] = co2.toJson();
    return data;
  }

  @override
  List<Object?> get props => [adjustedBytes, energy, co2];
}

class Co2 extends Equatable {
  final Grid grid;
  final Grid renewable;

  const Co2({required this.grid, required this.renewable});

  factory Co2.fromJson(Map<String, dynamic> json) {
    return Co2(
        grid: Grid.fromJson(json['grid']),
        renewable: Grid.fromJson(json['renewable']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grid'] = grid.toJson();
    data['renewable'] = renewable.toJson();
    return data;
  }

  @override
  List<Object?> get props => [grid, renewable];
}

class Grid extends Equatable {
  final double grams;
  final double litres;

  const Grid({required this.grams, required this.litres});

  factory Grid.fromJson(Map<String, dynamic> json) {
    return Grid(grams: json['grams'], litres: json['litres']);
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

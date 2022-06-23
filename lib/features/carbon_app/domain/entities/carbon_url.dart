import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CarbonUrl extends Equatable {
  String? url;
  bool? green;
  int? bytes;
  double? cleanerThan;

  CarbonUrl({
    this.url,
    this.green,
    this.bytes,
    this.cleanerThan,
  });

  CarbonUrl.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    green = json['green'];
    bytes = json['bytes'];
    cleanerThan = json['cleanerThan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['green'] = green;
    data['bytes'] = bytes;
    data['cleanerThan'] = cleanerThan;
    return data;
  }

  @override
  List<Object?> get props => [url, green, bytes, cleanerThan];
}

import 'package:equatable/equatable.dart';

class CarbonUrl extends Equatable {
  final String url;
  final bool green;
  final int bytes;
  final double cleanerThan;

  const CarbonUrl({
    required this.url,
    required this.green,
    required this.bytes,
    required this.cleanerThan,
  });

  factory CarbonUrl.fromJson(Map<String, dynamic> json) {
    return CarbonUrl(
      url: json['url'],
      green: json['green'],
      bytes: json['bytes'],
      cleanerThan: json['cleanerThan'],
    );
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

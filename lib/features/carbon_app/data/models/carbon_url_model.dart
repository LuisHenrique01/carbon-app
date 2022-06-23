import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';

// ignore: must_be_immutable
class CarbonUrlModel extends CarbonUrl {
  CarbonUrlModel({
    required super.url,
    required super.green,
    required super.bytes,
    required super.cleanerThan,
  }) : super();

  factory CarbonUrlModel.fromJson(Map<String, dynamic> json) {
    return CarbonUrlModel(
      url: json['url'],
      green: json['green'],
      bytes: json['bytes'],
      cleanerThan: json['cleanerThan'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['green'] = green;
    data['bytes'] = bytes;
    data['cleanerThan'] = cleanerThan;
    return data;
  }
}

/// Response models for the Gender Detector API.

/// API Response wrapper.
class GenderdetectorResponse {
  final String status;
  final dynamic error;
  final GenderdetectorData? data;

  GenderdetectorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GenderdetectorResponse.fromJson(Map<String, dynamic> json) => GenderdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GenderdetectorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Gender Detector API.

class GenderdetectorData {
  String? name;
  String? country;
  bool? detected;
  String? gender;

  GenderdetectorData({
    this.name,
    this.country,
    this.detected,
    this.gender,
  });

  factory GenderdetectorData.fromJson(Map<String, dynamic> json) => GenderdetectorData(
      name: json['name'],
      country: json['country'],
      detected: json['detected'],
      gender: json['gender'],
    );
}

class GenderdetectorRequest {
  String name;
  String? country;

  GenderdetectorRequest({
    required this.name,
    this.country,
  });

  Map<String, dynamic> toJson() => {
      'name': name,
      if (country != null) 'country': country,
    };
}

/// Response models for the Gender Detector API.

/// API Response wrapper.
class GenderdetectorResponse {
  final String status;
  final dynamic error;
  final GenderdetectorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GenderdetectorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GenderdetectorResponse.fromJson(Map<String, dynamic> json) => GenderdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GenderdetectorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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

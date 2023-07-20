class ApiResponse {
  final String message;
  final String statusCode;
  final Map<String, dynamic> data;

  ApiResponse({
    required this.message,
    required this.statusCode,
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'statusCode': statusCode,
      'data': data,
    };
  }

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
      data: json['data'] as Map<String, dynamic>,
    );
  }
}

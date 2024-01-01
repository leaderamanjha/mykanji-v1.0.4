class PostResetPasswordApiResp {
  String? message;

  PostResetPasswordApiResp({this.message});

  PostResetPasswordApiResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message;
    }
    return data;
  }
}

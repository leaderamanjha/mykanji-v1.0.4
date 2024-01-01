class PostForgotPasswordResp {
  String? message;

  PostForgotPasswordResp({this.message});

  PostForgotPasswordResp.fromJson(Map<String, dynamic> json) {
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

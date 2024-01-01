class PostResetPasswordApiReq {
  String? userName;
  String? password;
  String? confirmPassword;

  PostResetPasswordApiReq({this.userName, this.password, this.confirmPassword});

  PostResetPasswordApiReq.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (confirmPassword != null) {
      data['confirmPassword'] = confirmPassword;
    }
    return data;
  }
}

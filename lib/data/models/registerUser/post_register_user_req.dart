class PostRegisterUserReq {
  String? name;
  String? userName;
  String? password;
  String? confirmPassword;
  String? role;

  PostRegisterUserReq(
      {this.name,
      this.userName,
      this.password,
      this.confirmPassword,
      this.role});

  PostRegisterUserReq.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userName = json['userName'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name;
    }
    if (userName != null) {
      data['userName'] = userName;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (confirmPassword != null) {
      data['confirmPassword'] = confirmPassword;
    }
    if (role != null) {
      data['role'] = role;
    }
    return data;
  }
}

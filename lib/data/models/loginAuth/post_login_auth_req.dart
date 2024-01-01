class PostLoginAuthReq {
  String? userName;
  String? password;

  PostLoginAuthReq({this.userName, this.password});

  PostLoginAuthReq.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (password != null) {
      data['password'] = password;
    }
    return data;
  }
}

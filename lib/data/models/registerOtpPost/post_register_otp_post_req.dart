class PostRegisterOtpPostReq {
  int? otp;

  PostRegisterOtpPostReq({this.otp});

  PostRegisterOtpPostReq.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (otp != null) {
      data['otp'] = otp;
    }
    return data;
  }
}

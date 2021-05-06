class UserData {
  final String userId;
  final String email;
  final String fullname;

  UserData({this.userId, this.email, this.fullname});

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "email": email,
      "fullname": fullname,
    };
  }
}

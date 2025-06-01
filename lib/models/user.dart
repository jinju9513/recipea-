import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String uid;
  final String? name;     
  final String? nickname;   
  final String? email;
  final String? photoUrl;
  final DateTime? lastLogin;

  UserModel({
    required this.uid,
    this.name,
    this.nickname,
    this.email,
    this.photoUrl,
    this.lastLogin,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      uid: user.uid,
      name: user.displayName,
      email: user.email,
      photoUrl: user.photoURL,
      lastLogin: DateTime.now(),
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      nickname: map['nickname'],
      email: map['email'],
      photoUrl: map['photoUrl'],
      lastLogin: map['lastLogin']?.toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'nickname': nickname,
      'email': email,
      'photoUrl': photoUrl,
      'lastLogin': lastLogin,
    };
  }

  UserModel copyWith({
    String? nickname,
  }) {
    return UserModel(
      uid: uid,
      name: name,
      nickname: nickname ?? this.nickname,
      email: email,
      photoUrl: photoUrl,
      lastLogin: lastLogin,
    );
  }
}

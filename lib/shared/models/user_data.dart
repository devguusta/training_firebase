import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final String email;
  final String name;
  final FieldValue createData;
  final String uid;
  UserData({
    required this.email,
    required this.name,
    required this.createData,
    required this.uid,
  });
  
  

  UserData copyWith({
    String? email,
    String? name,
    FieldValue? createData,
    String? uid,
  }) {
    return UserData(
      email: email ?? this.email,
      name: name ?? this.name,
      createData: createData ?? this.createData,
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'createData': createData,
      'uid': uid,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      email: map['email'],
      name: map['name'],
      createData: map['createData'],
      uid: map['uid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) => UserData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserData(email: $email, name: $name, createData: $createData, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserData &&
      other.email == email &&
      other.name == name &&
      other.createData == createData &&
      other.uid == uid;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      name.hashCode ^
      createData.hashCode ^
      uid.hashCode;
  }
}

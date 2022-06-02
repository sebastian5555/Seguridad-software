import 'package:flutter/material.dart';

final String tableNotes = 'User';

class NoteFields {
  static final List<String> values = [
    /// Add all fields
    id, email, password, username, age, phone
  ];

  static final String id = '_id';
  static final String email = 'email';
  static final String password = 'password';
  static final String username = 'username';
  static final String age = 'age';
  static final String phone = 'phone';
}

class Note {
  final int? id;
  final String email;
  final String password;
  final String username;
  final String age;
  final String phone;

  const Note({
    this.id,
    required this.email,
    required this.password,
    required this.username,
    required this.age,
    required this.phone,
  });

  Note copy({
    int? id,
    String? email,
    String? password,
    String? username,
    String? age,
    String? phone,
  }) =>
      Note(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        username: username ?? this.username,
        age: age ?? this.age,
        phone: phone ?? this.phone,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        email: json[NoteFields.email] as String,
        password: json[NoteFields.password] as String,
        username: json[NoteFields.username] as String,
        age: json[NoteFields.age] as String,
        phone: json[NoteFields.phone] as String,
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.email: email,
        NoteFields.password: password,
        NoteFields.username: username,
        NoteFields.age: age,
        NoteFields.phone: phone,
      };
}

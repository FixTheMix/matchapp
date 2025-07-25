class Question {
  final String id;
  final String text;
  final String authorId;
  final DateTime createdAt;

  Question({
    required this.id,
    required this.text,
    required this.authorId,
    required this.createdAt,
  });

  factory Question.fromJson(Map<String, dynamic> json){
    return Question(
      id: json['id']?.toString() ?? '', 
      text: json['text']?.toString() ?? '', 
      authorId: json['authId']?.toString() ?? '', 
      createdAt: json['createdAt'] != null 
      ? DateTime.parse(json['createdAt']) : DateTime.now(),
      );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'text': text,
      'authId':authorId,
      'createdAt':createdAt.toIso8601String(),
    };
  }
}
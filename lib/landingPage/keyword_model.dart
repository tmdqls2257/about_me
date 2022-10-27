class KeyWord {
  String title;
  String content;
  KeyWord({required this.title, required this.content});

  Map<String, dynamic> toJson() => {
        'title': title,
        'content': content,
      };
}

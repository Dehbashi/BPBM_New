class DateResponse {
  final List<DateItem> dates;

  DateResponse({required this.dates});

  factory DateResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> dateList = json['data']['date'];
    List<DateItem> dates = dateList.map((item) => DateItem.fromJson(item)).toList();
    return DateResponse(dates: dates);
  }
}

class DateItem {
  final int id;
  final String title;
  final String text;

  DateItem({
    required this.id,
    required this.title,
    required this.text,
  });

  factory DateItem.fromJson(Map<String, dynamic> json) {
    return DateItem(
      id: json['id'],
      title: json['title'],
      text: json['text'],
    );
  }
}
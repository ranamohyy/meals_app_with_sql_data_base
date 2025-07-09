class MealModel {
  final String name;
  final String imageUrl;
  final String description;
  final double rate;
  final String time;

  MealModel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'rate': rate,
      'time': time,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      name: map['name'],
      imageUrl: map['imageUrl'],
      description: map['description'],
      rate: map['rate'],
      time: map['time'],
    );
  }
}

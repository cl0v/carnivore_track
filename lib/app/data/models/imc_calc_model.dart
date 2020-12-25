import 'dart:convert';

class MyModel {

  double height;
  double weight;
  MyModel({
    this.height,
    this.weight,
  });


  MyModel copyWith({
    double height,
    double weight,
  }) {
    return MyModel(
      height: height ?? this.height,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'weight': weight,
    };
  }

  factory MyModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MyModel(
      height: map['height'],
      weight: map['weight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyModel.fromJson(String source) => MyModel.fromMap(json.decode(source));
}

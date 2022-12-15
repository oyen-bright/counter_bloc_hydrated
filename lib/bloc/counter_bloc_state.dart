// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'counter_bloc_bloc.dart';

class CounterBlocState {
  final int count;

  CounterBlocState(this.count);

  @override
  bool operator ==(covariant CounterBlocState other) {
    if (identical(this, other)) return true;

    return other.count == count;
  }

  @override
  int get hashCode => count.hashCode;

  @override
  String toString() => 'CounterBlocState(count: $count)';

  factory CounterBlocState.initial() {
    return CounterBlocState(0);
  }

  CounterBlocState copyWith({
    int? count,
  }) {
    return CounterBlocState(
      count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory CounterBlocState.fromMap(Map<String, dynamic> map) {
    return CounterBlocState(
      map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterBlocState.fromJson(String source) =>
      CounterBlocState.fromMap(json.decode(source) as Map<String, dynamic>);
}

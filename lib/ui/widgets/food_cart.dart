part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  FoodCard({this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 210,
    );
  }
}

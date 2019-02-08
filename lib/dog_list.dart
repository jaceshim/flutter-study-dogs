import 'package:basic_flutter_app/dog_card.dart';
import 'package:basic_flutter_app/dog_model.dart';
import 'package:flutter/material.dart';

class DogList extends StatelessWidget {
  final List<Dog> doggos;

  DogList(this.doggos);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(BuildContext context) {
    return ListView.builder(
        itemCount: doggos.length,
        itemBuilder: (context, int) {
          return DogCard(doggos[int]);
        });
  }
}

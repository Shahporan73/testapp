import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Roundbutton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isLoading = false;
  Roundbutton({super.key, required this.title, required this.onTap, isLoading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(25)
        ),
        width: MediaQuery.sizeOf(context).width * 0.80,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: isLoading == true ? Center(child: const CircularProgressIndicator(color: Colors.green,)) : title.text.center.white.make(),
      ),
    );
  }
}

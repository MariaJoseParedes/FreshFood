import 'package:flutter/material.dart';
import '../screens/refrigerador.dart';
import '../screens/despensa.dart';
import '../screens/notificaciones.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomAppBar(
          height: 70,
          color: const Color.fromARGB(255, 88, 119, 184),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  // Ya estás en el Home, podrías hacer un scroll al inicio si quisieras
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.ac_unit,
                  color: Colors.white70,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Refrigerador(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.inventory,
                  color: Colors.white70,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Despensa()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white70,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notificaciones(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              const Text(
                "Margonda Raya Selatan",
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => context.push('/transaction'),
                  child: const CircleAvatar(
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
                CircleAvatar(
                  child: Image.network(
                      "https://ui-avatars.com/api/?background=0D8ABC&color=fff"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

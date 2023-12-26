import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopLayout extends StatelessWidget {
  const TopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hola",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    " Julio",
                    style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ],
              ),
              Text(
                "Aqui podran observar la informacion en tu hoja principal",
                style: GoogleFonts.quicksand(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(26, 34, 38, 1)),
                child: const Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(26, 34, 38, 1)),
                child: const Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fntr10-1.fna.fbcdn.net/v/t39.30808-6/340763471_2316724038510720_8957264582514588295_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=neXqqqHs8cMAX_QN-Xu&_nc_ht=scontent.fntr10-1.fna&oh=00_AfAJHfHGMFubENmSqR418p2AoO71Bk_kZC6zsQyO5ek67A&oe=65304A4A"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Julio Villagrana",
                    style: GoogleFonts.quicksand(color: Colors.black),
                  ),
                  Text(
                    "Desarrollador",
                    style: GoogleFonts.quicksand(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

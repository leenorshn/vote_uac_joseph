import 'package:flutter/material.dart';
import 'package:vote_uac_joseph/models/candidat.dart';

class CandidatTile extends StatelessWidget {
  const CandidatTile({super.key, required this.candidat, required this.onTap});

  final Candidat candidat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        // height: 240,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                candidat.image,
                fit: BoxFit.cover,
                height: 240,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(candidat.name),
            Text(
              "N:${candidat.number}",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                shape: const StadiumBorder(),
                elevation: 0,
              ),
              onPressed: onTap,
              child: const Text("Vote"),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class BulletinTile extends StatelessWidget {
  const BulletinTile({super.key, required this.candidat});
  final Candidat candidat;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        // height: 240,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              " Candidat: ${candidat.type}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                candidat.image,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(candidat.name),
            Text(
              "N:${candidat.number}",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

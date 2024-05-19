import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_uac_joseph/blocs/bulletin/bulletin_bloc.dart';
import 'package:vote_uac_joseph/components/CandidatTile.dart';
import 'package:vote_uac_joseph/screens/vote_president_screen.dart';

class BilletinVoteScreen extends StatelessWidget {
  const BilletinVoteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bulletin de vote"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<BulletinBloc, BulletinState>(
        builder: (context, state) {
          if (state is BulletinLoadedSuccess) {
            return Column(
              children: [
                BulletinTile(candidat: state.data[0]),
                BulletinTile(candidat: state.data[1]),
              ],
            );
          }
          return Container();
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: const Size(150, 44),
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => VotePresidentScreen()),
                    (route) => false);
              },
              child: const Text("Annuler"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: const Size(200, 44),
                backgroundColor: const Color(0xFF21CE99),
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              onPressed: () {
                BlocProvider.of<BulletinBloc>(context).add(VideBulletinEvent());
                Navigator.of(context).pushNamed("main_screen");
              },
              child: const Text("Terminer"),
            )
          ],
        ),
      ),
    );
  }
}

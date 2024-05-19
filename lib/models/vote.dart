import 'package:vote_uac_joseph/models/candidat.dart';

class Vote {
  Candidat candidat;
  int vote;
  Vote(this.candidat, this.vote);
}

var votes = [
  Vote(listCandidats[0], 89),
  Vote(listCandidats[1], 650),
  Vote(listCandidats[2], 500),
  Vote(listCandidats[3], 88),
];

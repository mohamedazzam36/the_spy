enum SubGameModes {
  classicOneSpy,
  classicTwoSpys,
  classicTwoFriendsSpys,
  randomClassic,
  customClassicSpys,

  blindOneSpy,
  blindTwoSpys,
  randomBlind,
  customBlindSpys,

  twoTeams,
  threeTeams,
  randomTeams,
  customTeams,
}

enum MainGameModes {
  classic([
    SubGameModes.classicOneSpy,
    SubGameModes.classicTwoSpys,
    SubGameModes.classicTwoFriendsSpys,
    SubGameModes.randomClassic,
    SubGameModes.customClassicSpys,
  ]),
  blind([
    SubGameModes.blindOneSpy,
    SubGameModes.blindTwoSpys,
    SubGameModes.randomBlind,
    SubGameModes.customBlindSpys,
  ]),
  teams([
    SubGameModes.twoTeams,
    SubGameModes.threeTeams,
    SubGameModes.randomTeams,
    SubGameModes.customTeams,
  ]);

  final List<SubGameModes> subModes;

  const MainGameModes(this.subModes);
}

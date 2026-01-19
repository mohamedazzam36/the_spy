enum SubGameModes {
  classicOneSpy,
  classicTwoSpys,
  classicTwoFriendsSpys,
  customClassicSpys,

  blindOneSpy,
  blindTwoSpys,
  customBlindSpys,

  twoTeams,
  threeTeams,
  customTeams,
}

enum MainGameModes {
  classic([
    SubGameModes.classicOneSpy,
    SubGameModes.classicTwoSpys,
    SubGameModes.classicTwoFriendsSpys,
    SubGameModes.customClassicSpys,
  ]),
  blind([
    SubGameModes.blindOneSpy,
    SubGameModes.blindTwoSpys,
    SubGameModes.customBlindSpys,
  ]),
  teams([
    SubGameModes.twoTeams,
    SubGameModes.threeTeams,
    SubGameModes.customTeams,
  ]);

  final List<SubGameModes> subModes;

  const MainGameModes(this.subModes);
}

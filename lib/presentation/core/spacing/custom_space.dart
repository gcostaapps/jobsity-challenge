class CustomSpace {
  CustomSpace._(this.size);

  factory CustomSpace.zero() => CustomSpace._(0);

  factory CustomSpace.extraSmall() => CustomSpace._(2);

  factory CustomSpace.extraSmall2() => CustomSpace._(4);

  factory CustomSpace.small() => CustomSpace._(8);

  factory CustomSpace.small2() => CustomSpace._(12);

  factory CustomSpace.medium() => CustomSpace._(16);

  factory CustomSpace.medium2() => CustomSpace._(24);

  factory CustomSpace.large() => CustomSpace._(32);

  factory CustomSpace.large2() => CustomSpace._(40);

  factory CustomSpace.large3() => CustomSpace._(48);

  factory CustomSpace.extraLarge() => CustomSpace._(64);

  factory CustomSpace.extraLarge2() => CustomSpace._(80);

  factory CustomSpace.megaLarge() => CustomSpace._(96);

  factory CustomSpace.megaLarge2() => CustomSpace._(160);

  final double size;
}

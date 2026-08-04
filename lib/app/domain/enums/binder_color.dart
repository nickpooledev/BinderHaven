enum BinderColor {
  classicBlack(
    displayName: 'Classic Black',
    hex: 0xFF1C1C1E,
  ),

  arcticWhite(
    displayName: 'Arctic White',
    hex: 0xFFF5F5F5,
  ),

  oceanBlue(
    displayName: 'Ocean Blue',
    hex: 0xFF2962FF,
  ),

  crimsonRed(
    displayName: 'Crimson Red',
    hex: 0xFFC62828,
  ),

  forestGreen(
    displayName: 'Forest Green',
    hex: 0xFF2E7D32,
  ),

  royalPurple(
    displayName: 'Royal Purple',
    hex: 0xFF6A1B9A,
  ),

  charcoalGray(
    displayName: 'Charcoal Gray',
    hex: 0xFF424242,
  );

  const BinderColor({
    required this.displayName,
    required this.hex,
  });

  final String displayName;
  final int hex;
}
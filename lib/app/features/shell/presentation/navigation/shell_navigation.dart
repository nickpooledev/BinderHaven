import 'package:flutter/material.dart';

/// BinderHaven navigation panel.
class ShellNavigation extends StatelessWidget {
  const ShellNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: const BoxDecoration(
        color: Color(0xFF16181C),
        border: Border(right: BorderSide(color: Color(0xFF26282D), width: 1)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),

          _NavItem(
            icon: Icons.dashboard_outlined,
            title: 'Dashboard',
            selected: true,
          ),

          _NavItem(
            icon: Icons.collections_bookmark_outlined,
            title: 'Collections',
          ),

          _NavItem(icon: Icons.document_scanner_outlined, title: 'Scanner'),

          _NavItem(icon: Icons.storefront_outlined, title: 'Marketplace'),

          Spacer(),

          _NavItem(icon: Icons.settings_outlined, title: 'Settings'),

          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const _NavItem({
    required this.icon,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF22262C) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: selected ? Colors.white : Colors.white70),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: selected ? Colors.white : Colors.white70,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

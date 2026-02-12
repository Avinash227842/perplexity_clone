import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class FooterLink extends StatefulWidget {
  final String text;

  const FooterLink({super.key, required this.text});

  @override
  State<FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<FooterLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: _isHovered ? Colors.white : AppColors.footerGrey,
          letterSpacing: 0.2,
        ),
        child: Text(widget.text),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/footer_button.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/sidebar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          const Sidebar(),
          Container(width: 1, color: Colors.white.withValues(alpha: 0.05)),
          Expanded(
            child: Column(
              children: [
                const Expanded(child: SearchSection()),
                _buildFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 24,
        runSpacing: 12,
        children: const [
          FooterLink(text: "Pro"),
          FooterLink(text: "Enterprise"),
          FooterLink(text: "Store"),
          FooterLink(text: "Blog"),
          FooterLink(text: "Careers"),
          FooterLink(text: "English (English)"),
        ],
      ),
    );
  }
}

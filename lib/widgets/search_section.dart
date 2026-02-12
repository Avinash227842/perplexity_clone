import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/search_bar_button.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final FocusNode _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() => _hasFocus = _focusNode.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Where knowledge begins',
            style: GoogleFonts.ibmPlexMono(
              fontSize: 48,
              fontWeight: FontWeight.w400,
              letterSpacing: -1.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 720,
            decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: _hasFocus ? Colors.white24 : Colors.white10,
                width: 1.5,
              ),
              boxShadow: [
                if (_hasFocus)
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                TextField(
                  focusNode: _focusNode,
                  maxLines: 5,
                  minLines: 1,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: 'Ask anything...',
                    hintStyle: GoogleFonts.ibmPlexSans(
                      color: Colors.white30,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const SearchBarButton(icon: Icons.tune, text: 'Focus'),
                    const SizedBox(width: 8),
                    const SearchBarButton(
                      icon: Icons.add_circle_outline,
                      text: 'Attach',
                    ),
                    const Spacer(),
                    _buildSubmitButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.submitButton.withValues(alpha: 0.9),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.arrow_forward_rounded,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}

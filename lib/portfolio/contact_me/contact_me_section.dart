import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeSection extends StatefulWidget {
  const ContactMeSection({super.key});

  // Contact data
  static const _email = 'salma.nada.fci@gmail.com';
  static const _github = 'https://github.com/SalmaNada5';
  static const _linkedin = 'https://www.linkedin.com/in/salma-nada-b4ba08237';
  static const _medium = 'https://medium.com/@salma.nada.fci';

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection> {
  int? _hoveredIndex;

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    final launched = await launchUrl(
      uri,
      mode: LaunchMode.platformDefault,
      webOnlyWindowName: '_blank',
    );
    if (!launched) {
      debugPrint('Could not launch $url');
    }
  }

  Widget _buildContactTile({
    required int index,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final isHovered = _hoveredIndex == index;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hoveredIndex = index),
      onExit: (_) => setState(() => _hoveredIndex = null),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color:
                isHovered
                    ? Colors.purpleAccent.withAlpha(80)
                    : Colors.white.withAlpha(10),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.purpleAccent.withAlpha(80)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.purpleAccent, size: 20.sp),
              SizedBox(width: 12.w),
              Text(
                label,
                style: TextStyle(color: Colors.white70, fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 24.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1A0B2E), Color(0xFF210E40)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Get In Touch',
            style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Contact Me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.h),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16.w,
            runSpacing: 16.w,
            children: [
              _buildContactTile(
                index: 0,
                icon: Icons.email_outlined,
                label: 'Email Me',
                onTap: () => _launch('mailto:${ContactMeSection._email}'),
              ),
              _buildContactTile(
                index: 1,
                icon: Icons.code,
                label: 'GitHub',
                onTap: () => _launch(ContactMeSection._github),
              ),
              _buildContactTile(
                index: 2,
                icon: Icons.business_center,
                label: 'LinkedIn',
                onTap: () => _launch(ContactMeSection._linkedin),
              ),
              _buildContactTile(
                index: 3,
                icon: Icons.chrome_reader_mode,
                label: 'Medium',
                onTap: () => _launch(ContactMeSection._medium),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

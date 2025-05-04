import 'package:flutter/material.dart';
import 'package:my_portfolio/portfolio/projects/project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProjectWidget(
          imagePath: 'assets/images/project1.png',
          title: 'Justice App',
          subTitle:
              'A comprehensive legal platform offering services like company formation, contract management, and corporate governance.',
          reverse: false,
        ),
        // ProjectWidget(
        //   imagePath: 'assets/images/project2.png',
        //   title: 'Spotify Data Visualizer',
        //   subTitle:
        //       'A web app for visualizing personalized Spotify data: top artists, tracks, and creating new playlists of recommendations.',
        //   reverse: true,
        // ),
      ],
    );
  }
}

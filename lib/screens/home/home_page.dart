import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:my_portfolio/components/header.dart';
import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/responsive.dart';

import '../../components/intro_card.dart';
import '../../components/project_card.dart';

class HomePage extends StatelessWidget {
  final String? title;

  const HomePage({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
        onPressed: (() {
          Share.share(
              "Check out Juan's portfolio https://jmarinez-portfolio.web.app/#/");
        }),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Projects',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Responsive(
                      mobile: _mobileTabletBuilder(350),
                      tablet: _mobileTabletBuilder(450),
                      desktop: _desktopBuilder())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: ((context, index) {
          final project = projects[index];
          return ProjectCard(project: project);
        }),
      ),
    );
  }

  Widget _desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: ((context, index) {
        final project = projects[index];
        return ProjectCard(project: project);
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screens/project/project_detail.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProjectDetail(project: project);
          }))),
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(top: 15.0, right: 25.0, bottom: 25.0),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  project.name,
                  style: const TextStyle(fontSize: 15.0),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    project.year.toString(),
                    style: const TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Hero(
                tag: project.name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Responsive(
                    mobile: Image.network(
                      project.imageUrl,
                      fit: BoxFit.cover,
                    ),
                    tablet: Image.network(
                      project.imageUrl,
                      fit: BoxFit.cover,
                    ),
                    desktop: SizedBox(
                      height: 350,
                      child: Image.network(
                        project.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              project.description,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }
}

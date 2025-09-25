import 'package:flutter/material.dart';



class ProjectsPage extends StatelessWidget {

  final List projects = [

    Project(title: 'COLLEGE OF COMPUTER STUDIES', description: '\nCOLLEGE OF COMPUTER STUDIES MISSION The College of Computer Studies (CCS) develops a society for competitive IT professionals through values-based quality education guided by the principles and best practices of the IT Program in order to promote nation building.VISION GRC-College of Computer Studies envisions producing quality IT professionals with values. PROGRAM DESCRIPTION The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing and administering; and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization. The program prepares graduates to address various user needs involving the selection, development, application, integration and management of computing technologies within an organization.', icon: Icons.computer, color: Colors.blue),
    Project(title: 'COLLEGE OF ENTREPRENEURSHIP', description: '\nCOLLEGE OF ENTREPRENEURSHIP MISSION GRC-College of Entrepreneurship prepares and supports its students with functional knowledge, practical skills with proper values, and work ethics as future entrepreneurs. VISION The College envisions producing successful entrepreneurs with values. PROGRAM DESCRIPTION The Bachelor of Science in Entrepreneurship is a four-year program that prepares its graduates with knowledge and skills necessary in establishing and running their own businesses.  This program will equip its graduates with the right attitudes and values in performing the entrepreneurial process which includes the finding and analyzing of opportunities, business planning, financing and business management. ', icon: Icons.leaderboard, color: Colors.green),
    Project(title: 'COLLEGE OF ACCOUNTANCY', description: '\nMISSION GRC- College of Accountancy will instill in minds and hearts of future certified public accountants that there is reliance in reaching their goals and to make home for them to be nurtured, motivated, encouraged to be competent and God- fearing individuals VISION GRC- College of Accountancy envisions to be recognized as one of the producers of highly competent and responsive professionals in the field of Accountancy. PROGRAM DESCRIPTION The Bachelor of Science in Accountancy (BSA) is a four-year program which provides general accounting education to learners who wish to pursue a professional career as accountants, particularly as public accountants for the civil service. The program develops accounting professionals who are steeped in the core values, namely: Fortitude, Excellence, and Uprightness. The program of study is a balanced mix of general education, business and professional courses aimed at developing not only a competent professional but a morally upright citizen of the Philippines and of the world. As a field of study, accountancy involves providing assurance and audit services for statutory financial reporting, tax-related services, and management advisory services. Accounting professionals assist various stakeholders in making economic decisions. ', icon: Icons.account_balance, color: Colors.orange),
    Project(title: 'COLLEGE OF BUSINESS ADMINISTRATION', description: '\nMISSION GRC-College of Business Administration prepares and supports its students with functional knowledge, practical skills with suitable values, and work ethics that can compete locally and globally. VISION GRC-College of Business Administration envisions producing quality business professionals with values.', icon: Icons.business_sharp, color: Colors.purple),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academics'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),

              // Project details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),

              // Arrow icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Project data model
class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
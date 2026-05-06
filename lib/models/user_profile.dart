class UserProfile {
  final String name;
  final String title;
  final String bio;
  final String imageUrl;
  final String email;
  final String phone;
  final String location;
  final List<String> skills;
  final List<Project> projects;
  final List<SocialLink> socialLinks;

  UserProfile({
    required this.name,
    required this.title,
    required this.bio,
    required this.imageUrl,
    required this.email,
    required this.phone,
    required this.location,
    required this.skills,
    required this.projects,
    required this.socialLinks,
  });

  factory UserProfile.demo() {
    return UserProfile(
      name: 'John Developer',
      title: 'Flutter & Web Developer',
      bio: 'Passionate about creating beautiful and functional applications. '
          'Experienced in Flutter, Dart, and web technologies.',
      imageUrl: 'https://api.dicebear.com/7.x/avataaars/svg?seed=John',
      email: 'john.developer@example.com',
      phone: '+1 (555) 123-4567',
      location: 'San Francisco, CA',
      skills: [
        'Flutter',
        'Dart',
        'JavaScript',
        'TypeScript',
        'React',
        'Firebase',
        'REST API',
        'UI/UX Design',
      ],
      projects: [
        Project(
          title: 'E-Commerce App',
          description:
              'A full-featured e-commerce application built with Flutter',
          imageUrl: 'https://via.placeholder.com/300x200?text=E-Commerce+App',
          technologies: ['Flutter', 'Firebase', 'Stripe'],
          link: 'https://example.com/project1',
        ),
        Project(
          title: 'Task Management App',
          description:
              'Collaborative task management application with real-time sync',
          imageUrl: 'https://via.placeholder.com/300x200?text=Task+Management',
          technologies: ['Flutter', 'Firestore', 'Provider'],
          link: 'https://example.com/project2',
        ),
        Project(
          title: 'Weather Dashboard',
          description: 'Beautiful weather dashboard with real-time data',
          imageUrl:
              'https://via.placeholder.com/300x200?text=Weather+Dashboard',
          technologies: ['Flutter', 'REST API', 'GetX'],
          link: 'https://example.com/project3',
        ),
      ],
      socialLinks: [
        SocialLink(
          name: 'GitHub',
          url: 'https://github.com',
          icon: '💻',
        ),
        SocialLink(
          name: 'LinkedIn',
          url: 'https://linkedin.com',
          icon: '💼',
        ),
        SocialLink(
          name: 'Twitter',
          url: 'https://twitter.com',
          icon: '🐦',
        ),
        SocialLink(
          name: 'Email',
          url: 'mailto:john.developer@example.com',
          icon: '📧',
        ),
      ],
    );
  }
}

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> technologies;
  final String link;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
    required this.link,
  });
}

class SocialLink {
  final String name;
  final String url;
  final String icon;

  SocialLink({
    required this.name,
    required this.url,
    required this.icon,
  });
}

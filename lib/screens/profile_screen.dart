import 'package:flutter/material.dart';
import '../models/user_profile.dart';
import '../widgets/profile_header.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/social_links_section.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late UserProfile userProfile;

  @override
  void initState() {
    super.initState();
    userProfile = UserProfile.demo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(
              name: userProfile.name,
              title: userProfile.title,
              imageUrl: userProfile.imageUrl,
              onEditPressed: _handleEditProfile,
              onDownloadPressed: _handleDownloadCV,
            ),
            AboutSection(
              bio: userProfile.bio,
              email: userProfile.email,
              phone: userProfile.phone,
              location: userProfile.location,
            ),
            SkillsSection(skills: userProfile.skills),
            ProjectsSection(projects: userProfile.projects),
            SocialLinksSection(
              socialLinks: userProfile.socialLinks,
              onMessagePressed: _handleSendMessage,
            ),
            // Footer
            Container(
              padding: const EdgeInsets.all(24),
              color: Colors.grey.shade900,
              child: Column(
                children: [
                  Text(
                    '© 2024 ${userProfile.name}. All rights reserved.',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Built with Flutter & ❤️',
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleEditProfile() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Edit Profile feature coming soon!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _handleDownloadCV() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('CV download started!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _handleSendMessage() {
    showDialog(
      context: context,
      builder: (context) => _MessageDialog(
        onClose: () => Navigator.pop(context),
      ),
    );
  }
}

class _MessageDialog extends StatefulWidget {
  final VoidCallback onClose;

  const _MessageDialog({required this.onClose});

  @override
  State<_MessageDialog> createState() => _MessageDialogState();
}

class _MessageDialogState extends State<_MessageDialog> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Send Message'),
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Your Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Your Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 5,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: widget.onClose,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _handleSendMessage,
          child: const Text('Send'),
        ),
      ],
    );
  }

  void _handleSendMessage() {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _messageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Message sent successfully!'),
        duration: Duration(seconds: 2),
      ),
    );

    widget.onClose();
  }
}

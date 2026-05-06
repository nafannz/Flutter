import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl;
  final VoidCallback onEditPressed;
  final VoidCallback onDownloadPressed;

  const ProfileHeader({
    Key? key,
    required this.name,
    required this.title,
    required this.imageUrl,
    required this.onEditPressed,
    required this.onDownloadPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade700, Colors.blue.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 24),
          Text(
            name,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white70,
                ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: onEditPressed,
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue.shade700,
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton.icon(
                onPressed: onDownloadPressed,
                icon: const Icon(Icons.download),
                label: const Text('Download CV'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

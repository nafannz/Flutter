import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  final String bio;
  final String email;
  final String phone;
  final String location;

  const AboutSection({
    Key? key,
    required this.bio,
    required this.email,
    required this.phone,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            bio,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: _ContactCard(
                  icon: Icons.email,
                  label: 'Email',
                  value: email,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _ContactCard(
                  icon: Icons.phone,
                  label: 'Phone',
                  value: phone,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _ContactCard(
                  icon: Icons.location_on,
                  label: 'Location',
                  value: location,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ContactCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue.shade700),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

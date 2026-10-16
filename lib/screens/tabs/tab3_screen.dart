import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final leaders = [
      {'name': 'Stephen Curry', 'team': 'GSW', 'stat': '32 PTS • 7 REB • 8 AST'},
      {'name': 'LeBron James', 'team': 'LAL', 'stat': '28 PTS • 11 REB • 9 AST'},
      {'name': 'Anthony Davis', 'team': 'LAL', 'stat': '24 PTS • 14 REB • 3 BLK'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Game Leaders')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: leaders.length,
        itemBuilder: (context, i) {
          final l = leaders[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                  child: Text('${i + 1}', style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                      Text(l['stat']!, style: const TextStyle(color: AppTheme.secondaryColor, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


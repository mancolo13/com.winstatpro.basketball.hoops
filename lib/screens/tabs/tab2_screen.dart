import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Team Shooting Stats')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _statBox('Field Goal %', '48.2% (42/87)', '44.8% (39/87)'),
          _statBox('3-Point %', '38.5% (15/39)', '35.0% (14/40)'),
          _statBox('Free Throw %', '84.0% (21/25)', '80.0% (16/20)'),
          _statBox('Total Rebounds', '46 (12 OFF)', '38 (8 OFF)'),
        ],
      ),
    );
  }

  Widget _statBox(String cat, String lakers, String warriors) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          Text(cat, style: const TextStyle(color: Colors.white60, fontSize: 12)),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lakers, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.secondaryColor)),
              Text(warriors, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}


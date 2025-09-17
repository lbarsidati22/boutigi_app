import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200),
        Text('Logout'),
        MainBottom(
          onTap: () async {
            await SupabaseAuthServices()
                .signOut();
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginView.routeName,
              (route) => false,
            );
          },
          text: 'تسجيل الخروج',
        ),
      ],
    );
  }
}

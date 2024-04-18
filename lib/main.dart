import 'package:flutter/material.dart';
import 'package:sparknex/screens/account_deactivation_screen.dart';
import 'package:sparknex/screens/account_deletion_screen.dart';
import 'package:sparknex/screens/account_settings_screen.dart';
import 'package:sparknex/screens/account_visibility_screen.dart';
import 'package:sparknex/screens/app_permission_screen.dart';
import 'package:sparknex/screens/blocked_user_screen.dart';
import 'package:sparknex/screens/change_email_screen.dart';
import 'package:sparknex/screens/change_password_screen.dart';
import 'package:sparknex/screens/chatroom_info_screen.dart';
import 'package:sparknex/screens/community_forums_screen.dart';
import 'package:sparknex/screens/contact_support_screen.dart';
import 'package:sparknex/screens/create_forums_screen.dart';
import 'package:sparknex/screens/edit_profile_screen.dart';
import 'package:sparknex/screens/feedback_Screen.dart';
import 'package:sparknex/screens/frequent_ask_ques_screen.dart';
import 'package:sparknex/screens/help_and_support.dart';
import 'package:sparknex/screens/logout_all_screen.dart';
import 'package:sparknex/screens/notification_screen.dart';
import 'package:sparknex/screens/notification_settings_screen.dart';
import 'package:sparknex/screens/parental_controls_screen.dart';
import 'package:sparknex/screens/privacy_policy_screen.dart';
import 'package:sparknex/screens/privacy_settings_screen.dart';
import 'package:sparknex/screens/profile_visibility_screen.dart';
import 'package:sparknex/screens/report_issue_screen.dart';
import 'package:sparknex/screens/chatting_screen.dart';
import 'package:sparknex/screens/report_sparker_screen.dart';
import 'package:sparknex/screens/settings_screen.dart';
import 'package:sparknex/screens/spark_bot_settings_screen.dart';
import 'package:sparknex/screens/sparkbot_personality_settings.dart';
import 'package:sparknex/screens/splash_screen.dart';
import 'package:sparknex/screens/terms_of_service.dart';
import 'package:sparknex/screens/topic_info_screen.dart';
import 'package:sparknex/screens/tutorial_screen.dart';
import 'package:sparknex/screens/user_interaction_controls.dart';

import 'screens/chatroom_settings_screen.dart';
import 'screens/report_room_screen.dart';
import 'screens/sparkbot_response_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 44, 5, 111)),
      ),

      
      // home: const SplashScreen(),
      // home:NotificationScreen()
      // home:TopicInfoScreen()
      // home:ChatRoomInfoScreen()
      // home:SparkBotPersonalitySettings()
      // home:PrivacyPolicyScreen()
      // home:TermsOfServiceScreen()
      // home:TutorialScreen()
      // home:CreateForumScreen()
      // home:FeedbackScreen()
      // home:CommunityForumsScreen()
      // home:ContactSupportScreen()
      // home:AppPermissionsScreen()
      // home:BlockedUserScreen ()
      // home:AccountVisibilityScreen()
      // home:ProfileVisibilityScreen()
      // home:ReportIssueScreen()
      // home:UserInteractionControls()
      // home:ParentalControlsScreen()
      // home:NotificationSettingsScreen()
      // home:SettingScreen()
      // home:AccountSettingsScreen()
      // home:ChangeEmailScreen()
      // home:ChangePasswordScreen ()
      // home:EditProfileScreen()
      // home:LogoutAllDevicesScreen()
      // home:AccountDeactivationScreen(),
      // home:AccountDeletionScreen()
      // home:const ChattingScreen()
      // home:ReportSparkerScreen()
      // home:PrivacySettingsScreen()
      // home:FAQPage()
      // home:HelpAndSupportScreen()
      // home:SparkBotSettings()
      // home:ReportRoomScreen()
      // home:ChatRoomSettingsScreen()
      home:SparkBotResponseSettings()
      // home:SparkBotPersonalitySettings()
      
    );
  }
}

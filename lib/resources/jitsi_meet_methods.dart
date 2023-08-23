import 'package:jitsi_meet_fix/feature_flag/feature_flag.dart';

import 'package:jitsi_meet_fix/jitsi_meet.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/resources/firestore_methods.dart';

// Create Meeting using jitsi meet.
class JitsiMeetMethods {
  final AuthMethods authMethods = AuthMethods();
  final FirestoreMethods firestoreMethods = FirestoreMethods();

  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution
          .MD_RESOLUTION; // Limit video resolution to 360p

      String name;
      if (username.isEmpty) {
        name = authMethods.user.displayName!;
      } else {
        name = username;
      }

      var options = JitsiMeetingOptions(
        room: roomName,
      )
        ..userDisplayName = name
        ..userEmail = authMethods.user.email
        ..userAvatarURL = authMethods.user.photoURL
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;

      firestoreMethods.addToMeetingHistory(roomName);
      await JitsiMeet.joinMeeting(options, listener: JitsiMeetingListener());
    } catch (error) {
      print("error: $error");
    }
  }
}

// Create Firebase app, add to web, then copy those api (key, domain, projectId, bucket, msgSenderId, appId.

class Configurations {
  static const _apiKey = "AIzaSyAb7y2eWKTmOFYyShlHLfsRdJisJ9NJYkE";
  static const _authDomain = "zoom-clone-18c2b.firebaseapp.com";
  static const _projectId = "zoom-clone-18c2b";
  static const _storageBucket = "zoom-clone-18c2b.appspot.com";
  static const _messagingSenderId = "1076788970315";
  static const _appId = "1:1076788970315:web:37bf79504fbaab9256dece";

//Make some getter functions
  String get apiKey => _apiKey;
  String get authDomain => _authDomain;
  String get projectId => _projectId;
  String get storageBucket => _storageBucket;
  String get messagingSenderId => _messagingSenderId;
  String get appId => _appId;
}

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  Future<void> initialize() async {
    // Notifications désactivées temporairement pour la compilation
  }

  Future<void> showNotification({
    required String title,
    required String body,
  }) async {
    // Notifications désactivées temporairement
    print('Notification: $title - $body');
  }
}

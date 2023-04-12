import 'dart:io';

class NetworkInfo {
  Future<bool> get isConnected => _checkInternetConnection();

  Future<bool> _checkInternetConnection() async {
    try {
      var socket = await Socket.connect(
        'example.com',
        80,
        timeout: const Duration(seconds: 2),
      );
      socket.destroy();
      return true;
    } on SocketException catch (_) {
      return false;
    } catch (_) {
      return false;
    }
  }
}

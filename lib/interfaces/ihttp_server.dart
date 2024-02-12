abstract class IHttpServer {
  Future startServer();
  Future restartServer();
  Future stopServer();
}

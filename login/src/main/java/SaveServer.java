import io.grpc.Server;
import io.grpc.ServerBuilder;

import java.io.IOException;
import java.util.logging.Logger;

public class SaveServer {

    private Logger logger = Logger.getLogger(SaveServer.class.getName());
    private static int port = 23335;
    private Server server;
    public SaveServer(ServerBuilder<?> serverBuilder){
        server = serverBuilder.addService(new SaveServiceImplBaseImpl()).build();

    }

    private void start() throws IOException {
        server.start();
        logger.info("Server has started, listening on " + port);
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                SaveServer.this.stop();

            }
        });
    }

    private void stop() {

        if(server != null)
            server.shutdown();

    }

    private void blockUntilShutdown() throws InterruptedException {
        if (server != null) {
            server.awaitTermination();
        }
    }

    public static void main(String[] args) throws IOException, InterruptedException {
        SaveServer saveServer;
        saveServer = new SaveServer(ServerBuilder.forPort(port));
        saveServer.start();
        saveServer.blockUntilShutdown();

    }
}


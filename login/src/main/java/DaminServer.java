import io.grpc.Server;
import io.grpc.ServerBuilder;

import java.io.IOException;
import java.util.logging.Logger;

public class DaminServer {

    private Logger logger = Logger.getLogger(DaminServer.class.getName());
    private static int port = 23334;
    private Server server;
    public DaminServer(ServerBuilder<?> serverBuilder){
        server = serverBuilder.addService(new DaminImplBaseImpl()).build();

    }

    private void start() throws IOException {
        server.start();
        logger.info("Server has started, listening on " + port);
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                DaminServer.this.stop();

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
        DaminServer daminServer;
        daminServer = new DaminServer(ServerBuilder.forPort(port));
        daminServer.start();
        daminServer.blockUntilShutdown();

    }
}


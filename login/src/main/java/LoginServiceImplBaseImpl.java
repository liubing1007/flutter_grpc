
import io.grpc.izhaohu.auth.AuthReply;
import io.grpc.izhaohu.auth.AuthRequest;
import io.grpc.izhaohu.auth.AuthServerGrpc;
import io.grpc.stub.StreamObserver;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginServiceImplBaseImpl extends AuthServerGrpc.AuthServerImplBase{
    private Logger logger = Logger.getLogger(LoginServiceImplBaseImpl.class.getName());
    @Override
    public void auth(AuthRequest request, StreamObserver<AuthReply> responseObserver) {
        logger.log(Level.INFO,"requst is coming. args1=" + request.getPwd());
        logger.log(Level.INFO,"requst is coming. args2=" + request.getUserName());
        logger.log(Level.INFO,"requst is coming. args3=" + request.getUdid());
        logger.log(Level.INFO,"requst is coming. args4=" + request.getManufacturer());
        logger.log(Level.INFO,"requst is coming. args5=" + request.getModel());
        logger.log(Level.INFO,"requst is coming. args6=" + request.getOsVersion());
        logger.log(Level.INFO,"requst is coming. args7=" + request.getAppVersion());
        logger.log(Level.INFO,"requst is coming. args8=" + request.getToken());
        logger.log(Level.INFO,"requst is coming. args9=" + request.getAppType());
        logger.log(Level.INFO,"requst is coming. args10=" + request.getType());
        if(request.getUserName().equals("n9999") && request.getPwd().equals("666666")) {
            AuthReply login = AuthReply.newBuilder().setCode(0).setTicket("168390673262D117D5F874395CDC2615")
                    .setAccountId(5182).setError("").build();
            responseObserver.onNext(login);
        }else{
            AuthReply login = AuthReply.newBuilder().setCode(1).setError("登录失败").build();
            responseObserver.onNext(login);
        }
        responseObserver.onCompleted();

    }
}

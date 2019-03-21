import io.grpc.izhaohu.senior.SaveSeniorBackReply;
import io.grpc.izhaohu.senior.SaveSeniorBackRequest;
import io.grpc.izhaohu.senior.SaveSeniorBackServerGrpc;
import io.grpc.stub.StreamObserver;

import java.util.logging.Level;
import java.util.logging.Logger;

public class SaveServiceImplBaseImpl extends SaveSeniorBackServerGrpc.SaveSeniorBackServerImplBase{
    private Logger logger = Logger.getLogger(SaveServiceImplBaseImpl.class.getName());
    @Override
    public void saveSeniorBack(SaveSeniorBackRequest request, StreamObserver<SaveSeniorBackReply> responseObserver) {
        logger.log(Level.INFO,"requst is coming. args1=" + request.getCmd());
        logger.log(Level.INFO,"requst is coming. args2=" + request.getUdid());
        logger.log(Level.INFO,"requst is coming. args3=" + request.getUserName());
        logger.log(Level.INFO,"requst is coming. args4=" + request.getTicket());
        logger.log(Level.INFO,"requst is coming. args5=" + request.getSeniorId());
        logger.log(Level.INFO,"requst is coming. args6=" + request.getTimeFlag());
        logger.log(Level.INFO,"requst is coming. args7=" + request.getCognitiveType());
        logger.log(Level.INFO,"requst is coming. args8=" + request.getBackable());
        logger.log(Level.INFO,"requst is coming. args9=" + request.getOutFlag());
        logger.log(Level.INFO,"requst is coming. args10=" + request.getDesc());
        if(request.getUserName().equals("n9999") && request.getTicket().equals("168390673262D117D5F874395CDC2615")
        && request.getCmd().equals("SAVE_SENIOR_BACK")) {
            SaveSeniorBackReply save= SaveSeniorBackReply.newBuilder().setCode(0).setError("").build();
            responseObserver.onNext(save);
        }else{
            SaveSeniorBackReply save = SaveSeniorBackReply.newBuilder().setCode(1).setError("参数错误").build();
            responseObserver.onNext(save);
        }
        responseObserver.onCompleted();

    }
}

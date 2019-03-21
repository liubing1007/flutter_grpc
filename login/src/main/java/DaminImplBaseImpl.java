import io.grpc.izhaohu.damins.*;
import io.grpc.stub.StreamObserver;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaminImplBaseImpl extends DaminsServerGrpc.DaminsServerImplBase{
    private Logger logger = Logger.getLogger(DaminImplBaseImpl.class.getName());
    @Override
    public void getDamins(DaminRequest request, StreamObserver<DaminReply> responseObserver) {
        logger.log(Level.INFO,"requst is coming. args1=" + request.getCmd());
        logger.log(Level.INFO,"requst is coming. args2=" + request.getUdid());
        logger.log(Level.INFO,"requst is coming. args3=" + request.getUserName());
        logger.log(Level.INFO,"requst is coming. args4=" + request.getTicket());
        if(request.getCmd().equals("GET_DOMAIN")
            && request.getUserName().equals("n9999")
            && request.getTicket().equals("168390673262D117D5F874395CDC2615")){
            DaminReply.Builder  daminReplyBuilder = DaminReply.newBuilder();
            daminReplyBuilder .setCode(0);
            List<Domain> domains = new ArrayList<Domain>();
            for(int i = 0; i<22; i++){
                AddressInfo addressInfo = AddressInfo.newBuilder().setId(62813).setStreetLine("瓶北路467号").setCity("上海市").setState("瓶北路467号")
                        .setCountry("中国").setZipCode("201100").setLat("31.057545").setLng("121.403958").setDistrict("闵行区").build();
                Domain.Builder DomainBuilder = Domain.newBuilder();
                DomainBuilder.setId(61);
                DomainBuilder.setDisplayName("上海潍坊社区四村长者照护之家");
                DomainBuilder.setName("wfscyly").setAttempt(0).setSalaryPerHour(1390)
                .setEmail("mgi21001@izhaohu.com").setTel("021-54321507").setPhone("13917287772")
                .setCreationTime("2014-11-13 11:22:03+0800").setLastModified("2014-11-13 11:22:03+0800")
                .setStatus(0).setBookOnline(false).setAppointmentVisit(true).setSeniorTotal(24).setWokerTotal(22)
                .setWithdrawFlag(true).setType(0).setBusinessMode(0);
                DomainBuilder.setAddressInfo(addressInfo);
                Domain domain = DomainBuilder.build();
                domains.add(domain);
            }
            daminReplyBuilder .setError("");
            DaminReply daminReply = daminReplyBuilder.addAllDomains(domains).build();
            responseObserver.onNext(daminReply);
        }else{
            DaminReply daminReply = DaminReply.newBuilder().setCode(1).setError("参数错误").build();
            responseObserver.onNext(daminReply);
        }
        responseObserver.onCompleted();

    }
}

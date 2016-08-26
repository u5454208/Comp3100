import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.services.ec2.AmazonEC2;
import com.amazonaws.services.ec2.AmazonEC2Client;
import com.amazonaws.services.ec2.model.*;

import java.io.IOException;
import java.security.Key;

/**
 * Created by lrz0927 on 23/08/2016.

public class StartApp {
    public static void main(String[] args) throws IOException {
        AWSCredentials credentials = new PropertiesCredentials(AwsConsoleApp.class.getResourceAsStream("AwsCredentials.properties"));
        AmazonEC2Client amazonEC2Client = new AmazonEC2Client(credentials);
        amazonEC2Client.setEndpoint();
        CreateSecurityGroupRequest csgr = new CreateSecurityGroupRequest();
        csgr.withGroupName("JavaSecurityGroup").withDescription("My security group");
        CreateSecurityGroupResult createSecurityGroupResult = amazonEC2Client.createSecurityGroup(csgr);
        IpPermission ipPermission = new IpPermission();
        ipPermission.withIpRanges("111.111.111.111/32","150.150.150.150/32")
                    .withIpProtocol("tcp")
                    .withFromPort(22)
                    .withToPort(22);
        AuthorizeSecurityGroupIngressRequest asgir = new AuthorizeSecurityGroupIngressRequest();
        asgir.withGroupName("JavaSecurityGroup").withIpPermissions(ipPermission);
        amazonEC2Client.authorizeSecurityGroupIngress(asgir);
        CreateKeyPairRequest createKeyPairRequest = new CreateKeyPairRequest();
        createKeyPairRequest.withKeyName("keyName");
        CreateKeyPairResult createKeyPairResult = amazonEC2Client.createKeyPair(createKeyPairRequest);
        KeyPair keyPair;
        keyPair = createKeyPairResult.getKeyPair();
        String privateKey = keyPair.getKeyMaterial();
        RunInstancesRequest runInstancesRequest = new RunInstancesRequest();
        runInstancesRequest.withImageId("");
    }
}
*/
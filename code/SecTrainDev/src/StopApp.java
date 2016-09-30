
import java.util.ArrayList;
import java.util.List;
import java.lang.*;
 
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.ec2.*;
import com.amazonaws.services.ec2.model.*;

public class StopApp implements java.io.Serializable{
    ArrayList<String> instanceIds;
    AmazonEC2 ec2;
    public StopApp(){
        AWSCredentials credentials = null;
        try {
            credentials = new ProfileCredentialsProvider().getCredentials();
        } catch (Exception e) {
            throw new AmazonClientException(
                    "Cannot load the credentials from the credential profiles file. " +
                    "Please make sure that your credentials file is at the correct " +
                    "location (~/.aws/credentials), and is in valid format.",
                    e);
        }
        // Create the AmazonEC2Client object so we can call various APIs.
        this.ec2 = new AmazonEC2Client(credentials);
        Region usWest2 = Region.getRegion(Regions.US_WEST_2);
        this.ec2.setRegion(usWest2);
    }
    public void setInstanceIds(String instanceId)
    {
    	this.instanceIds.add(instanceId);
    }
    public void terminate()
    {
        TerminateInstancesRequest TIR=new TerminateInstancesRequest(this.instanceIds);
        this.ec2.terminateInstances(TIR);
    }
    
}

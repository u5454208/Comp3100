import java.io.IOException;
import java.io.PrintWriter;


import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

/**
 * Created by lrz0927 on 25/10/16.
 */
@WebServlet(name = "Servlet")
public class StopApp extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * Default constructor.
     */
    ArrayList<String> instanceIds;
    AmazonEC2 ec2;

    public void init() {
        instanceIds = new ArrayList();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AWSCredentials credentials = null;
        try {
            credentials = new ProfileCredentialsProvider().getCredentials();// set credential
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
        String name = request.getParameter("name"); // get parameter from front end , to stop multiple instances
        int i=0,count=0;
        for(i=0;i<name.length();i++)
        {
            if(name.charAt(i)=='-')
            {
               count++;
            }
        }
        if(count==1)
        {
        	   this.instanceIds.add(name);
        }
        else
        {
            for(i=0;i<count;i++)
            {
        		     this.instanceIds.add(name.split(",")[i]);
            }
        }
        //this.instanceIds=a.getInstanceIds();
        TerminateInstancesRequest TIR = new TerminateInstancesRequest(this.instanceIds);
        this.ec2.terminateInstances(TIR);
    }
}

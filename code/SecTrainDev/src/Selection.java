import java.io.File;
import java.io.FileWriter;
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
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;
import java.util.*;
import java.lang.*;
import com.jcraft.jsch.*;

public class Selection extends HttpServlet {

		//String keyfile = "/Users/lrz0927/Desktop/Comp3100/resource/COMP3100.pem"; //the private key file for SSH connection
		String keyfile = "/home/ec2-user/COMP3100.pem"; //the private key file for SSH connection
		public void init()
		{

		}
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			
			response.setContentType("text/html;charset=UTF-8");
		    PrintWriter out = response.getWriter();
		    String select = request.getParameter("selection"); //this shows Parameters comes from front end. This one is for the problem the user selected
		    String publicDNS = request.getParameter("publicDNS");// This is the public DNS of target in Amazon web service EC2 instance, which is our virtual machine
			System.out.println(select); //for debuging
			if(select.equals("webbank"))
		    {
				String questionID= "bank"; // this is the name of Docker container running in new instance
		        out= response.getWriter();
				System.out.println("yep"); // for debuging
				new Selection().selections(questionID, publicDNS);
		        response.addHeader("publicDNS", request.getParameter("DNS")); // add response header for opening the new window in front end
		    }
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}	
		public void selections(String questionID, String PublicDNS){
		try{
	      JSch jsch=new JSch();
	      String host=null;
	      host = "ec2-user@" + PublicDNS; 
	      String user=host.substring(0, host.indexOf('@'));
	      System.out.println(host); //for debug
	      host=host.substring(host.indexOf('@')+1);
	      System.out.println(keyfile); // for debug
	      jsch.addIdentity(keyfile);
	      System.out.println("yep"); //for debug
	      java.util.Properties config = new java.util.Properties(); //avoid the problem of unknown hosts, though it's insecure 
	      config.put("StrictHostKeyChecking", "no");
	      Session session=jsch.getSession(user, host, 22);
			System.out.println("yep");// for debug
	      session.setConfig(config);
	      session.connect();
	      Channel channel=session.openChannel("exec");
	      String command = "docker start " + questionID; //command for start container. It is the same as the "docker start bank" in target terminal
	      ((ChannelExec)channel).setCommand(command);  
	      
	      channel.setInputStream(null);

	      ((ChannelExec)channel).setErrStream(System.err);
	      channel.connect();
	      Thread.sleep(60000);// time out function. It is used for set exploitation time for user
	      command = "docker stop " + questionID; 
		    	((ChannelExec)channel).setCommand(command);  
		    	channel.connect();// stop container
	      channel.disconnect();
	      session.disconnect();
	    }
	    catch(Exception e){
	      System.out.println(e);
	    }
	  }
}

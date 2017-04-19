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

public class Connection extends HttpServlet {

		String keyfile;
		public void init()
		{
			keyfile= "\\home\\ec2-user\\COMP3100.pem";
		}
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			// 设置响应内容类型
				 response.setContentType("text/html;charset=UTF-8");
		    PrintWriter out = response.getWriter();
		    selection = request.getParameter("selection");
		    	  if(selection.equals("webbank"))
		    {
		    		  String questionID= "bank";
		        out= response.getWriter();
		         			 new Connection().selection(questionID, response);
		        response.addHeader("publicDNS", request.getParameter("DNS"));
		    }
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}	
		public void selection(String questionID, String PublicDNS){
		try{
	      JSch jsch=new JSch();
	      String host=null;
	      host = "ec2-user@" + PublicDNS;
	      String user=host.substring(0, host.indexOf('@'));
	      host=host.substring(host.indexOf('@')+1);
	      jsch.addIdentity(keyfile);
	      java.util.Properties config = new java.util.Properties(); 
	      config.put("StrictHostKeyChecking", "no");
	      
	      Session session=jsch.getSession(user, host, 22);
	      session.setConfig(config);
	      session.connect();

	      Channel channel=session.openChannel("exec");
	      String command = "docker start " + questionID;
	      ((ChannelExec)channel).setCommand(command);  
	      
	      channel.setInputStream(null);

	      ((ChannelExec)channel).setErrStream(System.err);
	      channel.connect();
	      Thread.sleep(60000);
	      command = "docker stop " + questionID;
		    	((ChannelExec)channel).setCommand(command);  
		    	channel.connect();
	      channel.disconnect();
	      session.disconnect();
	    }
	    catch(Exception e){
	      System.out.println(e);
	    }
	  }
}

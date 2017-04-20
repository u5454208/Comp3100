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

		String keyfile = "/Users/lrz0927/Desktop/Comp3100/resource/COMP3100.pem";
		public void init()
		{

		}
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			// 设置响应内容类型
			response.setContentType("text/html;charset=UTF-8");
		    PrintWriter out = response.getWriter();
		    String select = request.getParameter("selection");
		    String publicDNS = request.getParameter("publicDNS");
			System.out.println(select);
			if(select.equals("webbank"))
		    {
				String questionID= "bank";
		        out= response.getWriter();
				System.out.println("yep");
				new Selection().selections(questionID, publicDNS);
		        response.addHeader("publicDNS", request.getParameter("DNS"));
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
	      System.out.println(host);
	      host=host.substring(host.indexOf('@')+1);
	      System.out.println(keyfile);
	      jsch.addIdentity(keyfile);
	      System.out.println("yep");
	      java.util.Properties config = new java.util.Properties(); 
	      config.put("StrictHostKeyChecking", "no");
	      Session session=jsch.getSession(user, host, 22);
			System.out.println("yep");
	      session.setConfig(config);
	      session.connect();
			System.out.println("yep");
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

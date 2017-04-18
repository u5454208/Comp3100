package tmp;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;
import java.util.*;
import java.lang.*;
import com.jcraft.jsch.*;

public class tmp{

	/* -*-mode:java; c-basic-offset:2; indent-tabs-mode:nil -*- */
	/**
	 * This program will demonstrate the user authentification by public key.
	 *   $ CLASSPATH=.:../build javac UserAuthPubKey.java
	 *   $ CLASSPATH=.:../build java UserAuthPubKey
	 * You will be asked username, hostname, privatekey(id_dsa) and passphrase. 
	 * If everything works fine, you will get the shell prompt
	 *
	 */
	  public static void main(String[] arg){
		String keyfile= "F:\\很坑的作业\\课程\\2017 semester 1\\comp3500\\COMP3100.pem";
	    try{
	      JSch jsch=new JSch();
	      String host=null;
	      Scanner in = new Scanner(System.in);
	      String PublicDNS = in.next();
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
	      String command = "docker start bank";
	      ((ChannelExec)channel).setCommand(command);  
	      
	      channel.setInputStream(null);

	      ((ChannelExec)channel).setErrStream(System.err);
	      channel.connect();
	      Thread.sleep(10000);
	      command = "docker stop bank";
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

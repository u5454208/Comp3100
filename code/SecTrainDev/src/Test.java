/**
 * Created by lrz0927 on 10/3/17.
 */



import com.spotify.docker.client.DefaultDockerClient;
import com.spotify.docker.client.DockerClient;
import com.spotify.docker.client.DockerClient.AttachParameter;
import com.spotify.docker.client.LogStream;
import com.spotify.docker.client.exceptions.DockerCertificateException;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.lang.*;
public class text extends HttpServlet {

	String selection;
public void init()
{
    selection=new String();
}
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    select	ion = request.getParameter("selection");
    if(selection.equals("webbank"))
    {
    	String questionID= "c0fb4f9a5021";
        out= response.getWriter();
        new tmp().selection(questionID, response);
    }
}
// 处理 POST 方法请求的方法
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
}
	public void selection(String questionID) throws DockerCertificateException {
		// TODO Auto-generated method stub
		final DockerClient docker = DefaultDockerClient.fromEnv().build();
		docker.startContainer(questionID);
		
		docker.stopContainer(questionID, 1800);
		
	}

}

package itfinch.lifestyleandspaces.controllers;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.util.Closeable;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@SuppressWarnings("serial")
@Controller
public class FileServlet extends HttpServlet{

	private static final Logger logger = Logger.getLogger(FileServlet.class);
	
	@RequestMapping(value="/file",method=RequestMethod.GET)
	public void display(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String imagePath = request.getParameter("path");
        // Decode the file name (might contain spaces and on) and prepare file object.
        File file = new File(imagePath);
        // Get content type by filename.
        String contentType = request.getServletContext().getMimeType(file.getName());
        // If content type is unknown, then set the default value.
        // For all content types, see: http://www.w3schools.com/media/media_mimeref.asp
        // To add new content types, add new mime-mapping entry in web.xml.
        if (contentType == null) 
        {
            contentType = "application/octet-stream";
        }
        // Init servlet response.
        response.reset();
        response.setBufferSize(100000);
        response.setContentType(contentType);
        response.setHeader("Content-Length", String.valueOf(file.length()));
        response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
        // Prepare streams.
        BufferedInputStream input = null;
        BufferedOutputStream output = null;

        try {
            // Open streams.
            input = new BufferedInputStream(new FileInputStream(file), 100000);
            output = new BufferedOutputStream(response.getOutputStream(), 100000);
            // Write file contents to response.
            byte[] buffer = new byte[100000];
            int length;
            while ((length = input.read(buffer)) > 0) 
             {
                output.write(buffer, 0, length);
             }
            }catch (Exception e) 
        	{
            	logger.error("Image Not Found.!");
			}
	    output.close();
	}
    @SuppressWarnings("unused")
	private static void close(Closeable resource) {
        if (resource != null) {
            try {
                resource.close();
            } catch (IOException e) {
                logger.info(e);
            }
        }
    }

}


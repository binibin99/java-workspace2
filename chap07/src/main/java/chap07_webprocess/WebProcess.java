package chap07_webprocess;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;

public interface WebProcess {
	
	String process(HttpServletRequest req);
	
}

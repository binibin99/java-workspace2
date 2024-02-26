package chap07.webProcess;

import javax.servlet.http.HttpServletRequest;

public interface WebProcess {
	
	String process(HttpServletRequest request);
}

package chap02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CurrentTime
 */
@WebServlet("/chap02/CurrentTime")

public class CurrentTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrentTime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request : ��û��ü. Ŭ���̾�Ʈ�� ��û ������ �����ϰ� �ִ� ��ü
		//response : ���䰴ü. Ŭ���̾�Ʈ�� ���� ������ �����ϰ� �ִ� ��ü
		//text/html : ������ ���� �����ϴ� ���. MIME Ÿ�� �̶����.
		
		response.setContentType("text/html; charset=EUC-KR");
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int min = c.get(Calendar.MINUTE);
		int sec = c.get(Calendar.SECOND);
		//�������� �������� ��½�Ʈ��
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>����ð�</title></head>");
		out.println("<body>");
		out.println("<h1>����ð��� " + hour + "�� " + min + "�� " + 
		sec + "�� �Դϴ�.</h1></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
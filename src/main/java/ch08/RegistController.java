package ch08;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistController
 */
@WebServlet("/rcontrol")
public class RegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegistService service = new RegistService();

    @Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		service = new RegistService();
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public RegistController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action"); // action 파라미터의 값을 얻어온다
		String view = "";

		if (action == null) {
			getServletContext().getRequestDispatcher("/rcontrol?action=list").forward(request, response);
		} else {
			switch (action) {
			case "list":
				view = list(request, response);
				break;
			case "info":
				view = info(request, response);
				break;
			case "info2":
				view = info2(request, response);
				break;
			case "confirm":
				view = confirm(request, response);
				break;
			}

			getServletContext().getRequestDispatcher("/ch08/" + view).forward(request, response);
		}
	}

	// 상품 한가지의 정보만 가져오는 메소드
	private String info(HttpServletRequest request, HttpServletResponse response) {
		// find메소드 사용
		Regist regist= service.find(request.getParameter("id"));
		// setAttribute는 key, value이다
		request.setAttribute("r", regist);
		return "registInfo.jsp";
	}
	
	private String info2(HttpServletRequest request, HttpServletResponse response) {
		// find메소드 사용
		Regist regist= service.find(request.getParameter("id"));
		// setAttribute는 key, value이다
		request.setAttribute("r", regist);
		return "registInfo2.jsp";
	}

	// 모든 상품을 가져오는 메소드
	private String list(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Regist> rlist = service.findAll();
		request.setAttribute("regists", rlist);
		return "registList.jsp";
	}

	//등급 표시하는 메소드
	private String confirm(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Regist> rlist = service.findAll();
		request.setAttribute("regists", rlist);
		return "registListDetail.jsp";
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

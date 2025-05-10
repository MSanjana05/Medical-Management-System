package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.newuser.dao.NewuserDao;
import net.newuser.model.Newuser;

import java.io.IOException;

/**
 * Servlet implementation class NewuserServlet
 */
@WebServlet("/register")
public class NewuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NewuserDao newuserDao = new NewuserDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/new_user.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String blood=request.getParameter("blood");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		String aname=request.getParameter("aname");
		String acontact=request.getParameter("acontact");
		
		Newuser  newuser = new Newuser();
		newuser.setName(name);
		newuser.setAge(age);
		newuser.setGender(gender);
		newuser.setBlood(blood);
		newuser.setAddress(address);
		newuser.setContact(contact);
		newuser.setAname(aname);
		newuser.setAcontact(acontact);
		
		try {
			NewuserDao.registeruser(newuser);
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/success.jsp");
			dispatcher.forward(request, response);
			}

		public NewuserDao getnewuserDao() {
			return newuserDao;
		}

		public void setnewuserDao(NewuserDao NewuserDao) {
			 NewuserDao = newuserDao;
		}
		
	}



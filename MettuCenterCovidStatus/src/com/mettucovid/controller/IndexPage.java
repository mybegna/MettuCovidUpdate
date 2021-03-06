package com.mettucovid.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mettucovid.dao.CasesDao;
import com.mettucovid.dao.NewsDao;
import com.mettucovid.dao.PatientDao;
import com.mettucovid.dto.CaseNumbers;
import com.mettucovid.dto.News;


/**
 * Servlet implementation class IndexPage
 */
@WebServlet("/IndexPage")
public class IndexPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<CaseNumbers> counttempList = new ArrayList<CaseNumbers>();
			counttempList= PatientDao.findCaseNumbers();
			ArrayList<News> newsList = new ArrayList<News>();
			newsList = NewsDao.listAllnews();
			CaseNumbers ethCases = CasesDao.findOne(1);
			request.setAttribute("counttempList", counttempList);
			request.setAttribute("newsList", newsList);
			request.setAttribute("ethCases", ethCases);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

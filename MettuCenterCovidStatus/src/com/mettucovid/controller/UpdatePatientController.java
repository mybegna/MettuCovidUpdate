package com.mettucovid.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mettucovid.dao.PatientDao;
import com.mettucovid.dto.Patient;



/**
 * Servlet implementation class UpdatePatientController
 */
@WebServlet("/UpdatePatientController")
public class UpdatePatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdatePatientController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Patient patient = new Patient();
		int patientId = Integer.parseInt(request.getParameter("id"));

		try {
			patient = PatientDao.findOne(patientId);
			request.setAttribute("patient", patient);
			request.setAttribute("id", patientId);

			request.getRequestDispatcher("UpdatePatient.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Patient patient = new Patient();

		patient.setFirstName(request.getParameter("firstName"));
		patient.setLastName(request.getParameter("lastName"));
		patient.setAge(Integer.parseInt(request.getParameter("age")));
		patient.setGender(request.getParameter("gender"));
		patient.setAddress(request.getParameter("address"));
		patient.setRegion(request.getParameter("region"));
		patient.setCountry(request.getParameter("country"));
		patient.setPhoneNo(Long.parseLong(request.getParameter("phoneNo")));
		patient.setRelativePhoneNo(Long.parseLong(request.getParameter("relativePhoneNo")));
		patient.setTravelHistory(request.getParameter("travelHistory"));
		patient.setPreDisease(request.getParameter("preDisease"));
		patient.setNatureOfJob(request.getParameter("natureOfJob"));
		patient.setAdmittedOn(request.getParameter("admittedOn"));
		patient.setContactWithCases(request.getParameter("contactWithCases"));
		patient.setPresentStatus(request.getParameter("presentStatus"));
		patient.setStatus("active");

		int id = Integer.parseInt(request.getParameter("patientId"));

		try {
			int result = PatientDao.updatePatient(patient, id);

			if (result > 0) {
				HttpSession session = request.getSession();
				String SuccessText = "Record Updated";
				session.setAttribute("SuccessText", SuccessText);
				request.getRequestDispatcher("ViewPatientController").forward(request, response);

			} else {
				request.getRequestDispatcher("UpdatePatient.jsp").forward(request, response);
			}

		} catch (

				SQLException e)

		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}



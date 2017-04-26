<%@ page import="Project.*" import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="verifyLogin.jsp"%>

<% 	DBController dbController = (DBController) session.getAttribute("dbController");
	String name = request.getParameter("schoolName");
	String state = request.getParameter("state");
	String location = request.getParameter("location");
	String control = request.getParameter("control");
	int numStudents = Integer.parseInt(request.getParameter("numberOfStudents"));
	double percentFemale = Double.parseDouble(request.getParameter("percentFemale"));
	int satVerbal = Integer.parseInt(request.getParameter("satVerbal"));
	int satMath = Integer.parseInt(request.getParameter("satMath"));
	int expenses = Integer.parseInt(request.getParameter("expenses"));
	double perFA = Double.parseDouble(request.getParameter("percentFA"));
	double percentAdmitted = Double.parseDouble(request.getParameter("percentAdmitted"));
	int numApplicants = Integer.parseInt(request.getParameter("numberOfApplicants"));
	double percentEnrolled = Double.parseDouble(request.getParameter("percentEnrolled"));
	int aScale = Integer.parseInt(request.getParameter("qualityAcademic"));
	int sScale = Integer.parseInt(request.getParameter("qualitySocial"));
	int lScale = Integer.parseInt(request.getParameter("qualityLife"));
	
	ArrayList<String> newEmp = new ArrayList<String>();
	if(!request.getParameter("emp1").equals("")) newEmp.add(request.getParameter("emp1"));
	if(!request.getParameter("emp2").equals("")) newEmp.add(request.getParameter("emp2"));
	if(!request.getParameter("emp3").equals("")) newEmp.add(request.getParameter("emp3"));
	if(!request.getParameter("emp4").equals("")) newEmp.add(request.getParameter("emp4"));
	if(!request.getParameter("emp5").equals("")) newEmp.add(request.getParameter("emp5"));
	
	
	int value = dbController.addUniversity(name,state,location,control,numStudents,percentFemale,satVerbal,satMath,expenses,perFA,
			numApplicants,percentAdmitted,percentEnrolled,aScale,sScale,lScale,newEmp);
	
	if(value == 0) response.sendRedirect("manageUniv.jsp");
	else if (value == 1) response.sendRedirect("addUniv.jsp?error=1");
	else if (value == 2) response.sendRedirect("addUniv.jsp?error=2");
	else response.sendRedirect("addUniv.jsp?error=3");
	%>
<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	DTO dto =  new DTO();
	
	dto.setEntry_no(request.getParameter("entry_no"));
	int score1 = Integer.parseInt(request.getParameter("score1"));
	int score2 = Integer.parseInt(request.getParameter("score2"));
	int score3 = Integer.parseInt(request.getParameter("score3"));
	int score4 = Integer.parseInt(request.getParameter("score4"));
	int score5 = Integer.parseInt(request.getParameter("score5"));
	
	dto.setScore1(score1);
	dto.setScore2(score1);
	dto.setScore3(score1);
	dto.setScore4(score1);
	dto.setScore5(score1);
	int max = score1;
	int min = score1;
	
	if(score2>max){
		max=score2;
	}else if(min>score2){
		min=score2;
	}
	if(score3>max){
		max=score3;
	}else if(min>score3){
		min=score3;
	}
	if(score4>max){
		max=score4;
	}else if(min>score4){
		min=score4;
	}
	if(score5>max){
		max=score5;
	}else if(min>score5){
		min=score5;
	}
	int tot = score1+score2+score3+score4+score5;
	double avg = (tot-max-min)/3.;
	
	
	
	dto.setS_max(max);
	dto.setS_min(min);
	dto.setS_tot(tot);
	dto.setS_ave(avg);
	
	DAO dao = new DAO();
	dao.insert(dto);
	response.sendRedirect("index.jsp");
%>

<!DOCTYPE html>
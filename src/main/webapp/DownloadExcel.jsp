<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="org.apache.poi.ss.util.CellRangeAddress"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.ss.usermodel.*" %>
<%@page import="metier.Connect"%>
<%@page import="metier.verifier"%>

<%
	Connection con = Connect.getConnection();
	Statement s = con.createStatement();
	
  	ResultSet rs = s.executeQuery("SELECT * FROM etudiant");
  	
    HSSFWorkbook workbook = new HSSFWorkbook();
    HSSFSheet sheet = workbook.createSheet("Data");

    HSSFRow headerRow = sheet.createRow(0);
    headerRow.createCell((short)0).setCellValue("APPOGGE");
    headerRow.createCell((short)1).setCellValue("Nom");
    headerRow.createCell((short)2).setCellValue("Prenom");
    headerRow.createCell((short)3).setCellValue("CNE");
    headerRow.createCell((short)4).setCellValue("CIN");

    int rownum = 1;
    while (rs.next()) {
      HSSFRow row = sheet.createRow(rownum++);
      row.createCell((short)0).setCellValue(rs.getInt("APPOGGE"));
      row.createCell((short)1).setCellValue(rs.getString("Nom"));
      row.createCell((short)2).setCellValue(rs.getString("Prenom"));
      row.createCell((short)3).setCellValue(rs.getString("CNE"));
      row.createCell((short)4).setCellValue(rs.getString("CIN"));
    }

    response.setContentType("application/vnd.ms-excel");
    response.setHeader("Content-Disposition", "attachment; filename=Etudiants.xls");
    OutputStream fileOut = response.getOutputStream();
    
  	workbook.write(fileOut);
  	fileOut.flush();
  	fileOut.close();
  	
    rs.close();
    s.close();
    con.close();
%>

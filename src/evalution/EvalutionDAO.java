package evalution;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class EvalutionDAO {

	@SuppressWarnings("unused")
	public int write(EvalutionDTO evalutionDTO) {
		  String SQL = "INSERT INTO EVALUATION VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0) ";
		  Connection conn= null;
		  PreparedStatement pstmt= null;
		  ResultSet rs= null;
		  try {
			  conn= DatabaseUtil.getConnection();
			  pstmt =conn.prepareStatement(SQL);
		   pstmt.setString(1, evalutionDTO.getUserID());
		   pstmt.setString(2, evalutionDTO.getMyname());
		   pstmt.setString(3, evalutionDTO.getBecause());
		   pstmt.setInt(4, evalutionDTO.getStartyear());
		   pstmt.setString(5, evalutionDTO.getTimeDivide());
		   pstmt.setString(6, evalutionDTO.getState());
		   pstmt.setString(7, evalutionDTO.getEvaluationTitle());
		   pstmt.setString(8, evalutionDTO.getEvaluationContent());
		   pstmt.setString(9, evalutionDTO.getTotalScore());
		   return pstmt.executeUpdate();
		  
		   } catch(Exception e) {
		   e.printStackTrace();
		  }
		  return -2; // 데이터 베이스 오류
	 }
	
	public ArrayList<EvalutionDTO> getList(String EvaluationTitle, String searchType, 
			String search, int pageNumber  ){
		if(EvaluationTitle.equals("전체")) {
			EvaluationTitle="";
		}
		ArrayList<EvalutionDTO> evalutionList =null;
		String SQL = "";
		Connection conn= null;
		  PreparedStatement pstmt= null;
		  ResultSet rs= null;
		try {
			if(searchType.equals("최신순")) {
				SQL ="SELECT * FROM EVALUATION WHERE timedivide LIKE ? AND "
						+ "CONCAT(myname, because, evaluationTitle, evaluationContent "
						+ "LIKE ? ORDER BY evalutionID DESC LIMIT " 
						+ pageNumber * 5 +"," +pageNumber* 5 + 6;
			} else if (searchType.equals("추천순")) {
				SQL ="SELECT * FROM EVALUATION WHERE timedivide LIKE ? AND "
						+ "CONCAT(myname, because, evaluationTitle, evaluationContent "
						+ "LIKE ? ORDER BY DESC LIMIT " 
						+ pageNumber * 5 +"," +pageNumber* 5 + 6;
			}
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "%" + timedivide +"%");
			pstmt.setString(1, "%" + timedivide +"%");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;
				}		
				else {
					return 0;
				}
			}
			return -1;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try{ if(conn != null) conn.close(); } catch(Exception e) {e.printStackTrace();}
			try{ if(conn != null) conn.close(); } catch(Exception e) {e.printStackTrace();}
			try{ if(rs != null) rs.close(); } catch(Exception e) {e.printStackTrace();}
		}
		return -2;
	}
	 
}

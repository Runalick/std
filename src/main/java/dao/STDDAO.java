package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.STDDTO;



public class STDDAO {

	private static STDDAO instance = null;
	public synchronized static STDDAO getInstance() {
		if(instance == null) {
			instance = new STDDAO();
		}
		return instance;
	}
	
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	public int insert(STDDTO dto) throws Exception{
		String sql = "insert into student values(student_seq.nextval,?,?,?,?,default)";
		try (Connection con = this.getConnection();
				PreparedStatement stat = con.prepareStatement(sql);
				){		
			stat.setString(1, dto.getName());
			stat.setInt(2, dto.getKor());
			stat.setInt(3, dto.getEng());
			stat.setInt(4, dto.getMath());
			
			int result = stat.executeUpdate();
			con.commit();
			return result;
		}	
	};
	
	public ArrayList<STDDTO> list() throws Exception{
		String sql = "select sid,name,kor,eng,math,exam_date,(kor+eng+math),(kor+eng+math)/3 from student order by 7 desc";
		ArrayList<STDDTO> list = new ArrayList<>();
		int rank = 1;
		try (Connection con = 
				this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				){ while(rs.next()) {
					int sid = rs.getInt("sid");
					String name = rs.getString("name");
					int kor = rs.getInt("kor");
					int eng = rs.getInt("eng");
					int math = rs.getInt("math");
					String date= rs.getString("exam_date");
					int all = kor+eng+math;
					double avg = Math.round(all/3f*100)/100.0; 
					list.add(new STDDTO(sid,name,kor,eng,math,date));
					
				}	
		}
		return list;
	}
	
	public int del(int sid) throws Exception{
		String sql = "delete from student where sid=?";
		try (Connection con = this.getConnection();
				PreparedStatement stat = con.prepareStatement(sql);
				){		
			stat.setInt(1, sid);
			int result = stat.executeUpdate();
			con.commit();
			return result;
		}
	}
	public int update(int sid,String name,int kor,int eng,int math)throws Exception{
		String sql = "update student set name=?,kor=?,eng=?,math=? where sid=?";
		
				try (Connection con = this.getConnection();
						PreparedStatement stat = con.prepareStatement(sql);) {
					stat.setString(1, name);
					stat.setInt(2, kor);
					stat.setInt(3, eng);
					stat.setInt(4, math);
					stat.setInt(5, sid);
					int result = stat.executeUpdate();
					con.commit();
					return result;
				}
		
	}
	
	
	
	
}

package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserDAO {
	
	private Connection conn; 
	private PreparedStatement pstmt;
	
	public UserDAO() { 
		try {
			String dbURL = "jdbc:mysql://localhost:3306/User";
			String dbID = "root";
			String dbPwd ="wjdtlgus00,!,!";
			Class.forName("com.mysql.jdbc.Driver");  
			conn = DriverManager.getConnection(dbURL,dbID,dbPwd); 
			System.out.println("���� ���� �Ϸ�");
		} catch (Exception e) {
			System.out.println("���� ���� ����");
			e.printStackTrace();
		}
	}
	
	public int join(User user) {
		  String sql = "insert into user values(?, ?, ?, ?)";
		  try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, user.getName());
		    pstmt.setString(2, user.getNumber());
		    pstmt.setString(3, user.getEmail());
		    pstmt.setString(4, user.getContent());
		    System.out.println("�Է� �Ϸ�");
		    return pstmt.executeUpdate();
		  }catch (Exception e) {
			  System.out.println("���� �߻�");
		 	e.printStackTrace();
		  }
		  return -1;
		}

}
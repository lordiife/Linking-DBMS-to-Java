import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Code1_0248324 {
	
	String dbUrl = "jdbc:mysql://localhost:3306/project_0248324";
	String dbClass = "com.mysql.jdbc.Driver";
	
	Connection con;
	Statement stat;
	String query;

	public void connect() {
		System.out.println("connect()...");
		try {
			Class.forName(dbClass).newInstance();
			con = DriverManager.getConnection(dbUrl,"root","1126");
			stat = con.createStatement();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void disconnect() {
		System.out.println("disconnect()...");
		try {
			if(!(con.isClosed())) {
				con.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
//	1
	
	public void insertDoctor_0248324(String Doctor_ID,String First_Name,String Middle_Name,String Last_Name) {
		System.out.println("insertDoctor_0248324()...");
		String query = "INSERT INTO Doctor_0248324 VALUES('"+Doctor_ID+"','"+First_Name+"','"+Middle_Name+"','"+Last_Name+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertSpecialization_0248324(String Doctor_ID,String Specialization) {
		System.out.println("insertSpecialization_0248324()...");
		String query = "INSERT INTO Specialization_0248324 VALUES('"+Doctor_ID+"','"+Specialization+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertQualification_0248324(String Doctor_ID,String Qualification) {
		System.out.println("insertQualification_0248324()...");
		String query = "INSERT INTO Qualification_0248324 VALUES('"+Doctor_ID+"','"+Qualification+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertPatient_0248324(String Patient_ID,String DOB,String Locality,String Town_City, String Doctor_ID) {
		System.out.println("insertPatient_0248324()...");
		String query = "INSERT INTO Patient_0248324 VALUES('"+Patient_ID+"','"+DOB+"','"+Locality+"','"+Town_City+"','"+Doctor_ID+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertMedicine_0248324(String MCode,double Price,int Quantity) {
		System.out.println("insertMedicine_0248324()...");
		String query = "INSERT INTO Medicine_0248324 VALUES('"+MCode+"','"+Price+"','"+Quantity+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertBill_0248324(String Patient_ID,String MCode) {
		System.out.println("insertBill_0248324()...");
		String query = "INSERT INTO Bill_0248324 VALUES('"+Patient_ID+"','"+MCode+"')";
		try {
			connect();
			stat.executeUpdate(query);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
//	2
	
	public void getPatient_0248324() {
		System.out.print("getPatient_0248324()...");
		String myData = "";
		String query = "SELECT * FROM Patient_0248324";
		ResultSet rs;
		try {
			connect();
			rs = stat.executeQuery(query);
			while(rs.next()) {
				myData+=rs.getObject(1).toString() + " ";
				myData+=rs.getObject(2).toString() + " ";
				myData+=rs.getObject(3).toString() + " ";
				myData+=rs.getObject(4).toString() + " ";
				myData+=rs.getObject(5).toString() + " ";
			}
			System.out.println(myData);
		}catch(Exception e){
			e.printStackTrace();
		}
		disconnect();
	}
	
	public void getMedicine_0248324() {
		System.out.print("getMedicine_0248324()...");
		String myData = "";
		String query = "SELECT * FROM Medicine_0248324";
		ResultSet rs;
		try {
			connect();
			rs = stat.executeQuery(query);
			while(rs.next()) {
				myData+=rs.getObject(1).toString() + " ";
				myData+=rs.getObject(2).toString() + " ";
				myData+=rs.getObject(3).toString() + " ";
			}
			System.out.println(myData);
		}catch(Exception e){
			e.printStackTrace();
		}
		disconnect();
	}
	
//	3
	
	public void updateMedicinePrice_0248324() {
	    System.out.println("updateMedicinePrice_0248324()...");
	    String query = "UPDATE Medicine_0248324 SET Price = Price + 2";
	    int rowsUpdated;
	    try {
	        connect();
	        rowsUpdated = stat.executeUpdate(query);
	        System.out.println(rowsUpdated);
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	        disconnect();
	}

// Main	
	
	public static void main(String args[]) {
		Code1_0248324 hh = new Code1_0248324();
		
//		hh.insertDoctor_0248324("1234567","John","Mark","Doe");
//		hh.insertDoctor_0248324("1234568","Jane","Mark","Doe");
		
//		hh.insertSpecialization_0248324("1234567","Heart");
//		hh.insertSpecialization_0248324("1234568","Skin");		
		
//		hh.insertQualification_0248324("1234567","A");
//		hh.insertQualification_0248324("1234568","B");
		
		hh.insertPatient_0248324("1112223334","07-07-1968","Amman","Amman","0246194");
//		hh.insertPatient_0248324("1112223335","08-08-1986","Al-Balqa","Al-Salt","1234568");
		
//		hh.insertMedicine_0248324("11122233344455566677",123.45,2);
//		hh.insertMedicine_0248324("11122233344455566678",100.25,2);
		
//		hh.insertBill_0248324("1112223334","11122233344455566677");
//		hh.insertBill_0248324("1112223335","11122233344455566677");
		
		hh.getPatient_0248324();
		
//		hh.updateMedicinePrice_0248324();
		
	}
	
}

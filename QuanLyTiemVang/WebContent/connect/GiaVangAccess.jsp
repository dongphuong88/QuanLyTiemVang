<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement,java.sql.PreparedStatement"%>
<%@ page import="java.util.HashMap,java.util.List,java.util.Map,java.util.ArrayList"%>
<%
	String connectionString = "jdbc:sqlserver://localhost:1433;"
			+ "databaseName=Cam_Do_Database;integratedSecurity=true;";

	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	Connection con = DriverManager.getConnection(connectionString);

	// Page processing
	if (request.getParameter("update") != null) {
		PreparedStatement stmt = con
				.prepareStatement("UPDATE LOAIVANGS SET GiaMua=?, GiaBan=? WHERE LoaiVang=?");
		int buyPrice, sellPrice;
		sellPrice = Integer.parseInt(request.getParameter("sell9999"));
		buyPrice = Integer.parseInt(request.getParameter("buy9999"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "9999");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sellNuTrang24K"));
		buyPrice = Integer.parseInt(request.getParameter("buyNuTrang24K"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "NuTrang24K");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sell680"));
		buyPrice = Integer.parseInt(request.getParameter("buy680"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "680");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sell625"));
		buyPrice = Integer.parseInt(request.getParameter("buy625"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "625");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sell610"));
		buyPrice = Integer.parseInt(request.getParameter("buy610"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "610");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sell600"));
		buyPrice = Integer.parseInt(request.getParameter("buy600"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "600");
		stmt.executeUpdate();
		sellPrice = Integer.parseInt(request.getParameter("sell560"));
		buyPrice = Integer.parseInt(request.getParameter("buy560"));
		stmt.setInt(1, buyPrice);stmt.setInt(2, sellPrice);stmt.setString(3, "560");
		stmt.executeUpdate();
		
		if( request.getParameter("prevPage") != null) 
			response.sendRedirect(request.getParameter("prevPage"));
		else
			response.sendRedirect("../index.jsp");
	}// End UpdatePage
	else {
		// Mapping data
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM LOAIVANGS");
		Map<String, Map<String,Integer>> goldPriceTable = new HashMap<String, Map<String,Integer>>();
		while( rs.next()) {
			Map<String,Integer> price = new HashMap<>();
			price.put("GiaMua", rs.getInt("GiaMua"));
			price.put("GiaBan", rs.getInt("GiaBan"));
			goldPriceTable.put(rs.getString("LoaiVang"), price);
		}
%>
<html>
<head>
	<script>
		if (typeof(Storage) !== "undefined") {
			localStorage.setItem("buy9999", <%= goldPriceTable.get("9999").get("GiaMua") %>);
			localStorage.setItem("sell9999", <%= goldPriceTable.get("9999").get("GiaBan") %>);
			localStorage.setItem("buyNuTrang24K", <%= goldPriceTable.get("NuTrang24K").get("GiaMua") %>);
			localStorage.setItem("sellNuTrang24K", <%= goldPriceTable.get("NuTrang24K").get("GiaBan") %>);
			localStorage.setItem("buy680", <%= goldPriceTable.get("680").get("GiaMua") %>);
			localStorage.setItem("sell680", <%= goldPriceTable.get("680").get("GiaBan") %>);
			localStorage.setItem("buy625", <%= goldPriceTable.get("625").get("GiaMua") %>);
			localStorage.setItem("sell625", <%= goldPriceTable.get("625").get("GiaBan") %>);
			localStorage.setItem("buy610", <%= goldPriceTable.get("610").get("GiaMua") %>);
			localStorage.setItem("sell610", <%= goldPriceTable.get("610").get("GiaBan") %>);
			localStorage.setItem("buy600", <%= goldPriceTable.get("600").get("GiaMua") %>);
			localStorage.setItem("sell600", <%= goldPriceTable.get("600").get("GiaBan") %>);
			localStorage.setItem("buy560", <%= goldPriceTable.get("560").get("GiaMua") %>);
			localStorage.setItem("sell560", <%= goldPriceTable.get("560").get("GiaBan") %>);
			
			window.location = "../GiaVang.html";
		}else {
			alert("Sorry, your browser does not support Web Storage...");
			window.location = "../index.jsp";
		}
	</script>
</head>
<body>
</body>
</html>		
<%
	}// End Content Page
%>
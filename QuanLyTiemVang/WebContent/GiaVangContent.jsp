<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="w3/css/w3.css">
    <link rel="stylesheet" href="w3/js/w3data.js">
    <script src="js/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.0/css/font-awesome.min.css">
    <style>
        .ipadMiniScreen {
            border: solid 1px red;
            width: 768px;
            height: 1024px;
            left: 0px;
            z-index: -1;
            position: absolute;
        }
        
        .iphoneScreen {
            border: solid 1px green;
            width: 480px;
            height: 640px;
            position: fixed;
            z-index: -1;
        }
        
        input[type] {
            font-size: 2.0em;
            height: 100%;
        }
    </style>
</head>
<body>
    <div class="row" style="border:solid 1px green;">
        <div class="ipadMiniScreen"></div>
        <div class="iphoneScreen"></div>
    </div>
<header class="w3-container w3-teal">
        <h1>Cập Nhật Giá</h1>
    </header>
    <form action="GiaVang.jsp" method="get">
    <div class="w3-container">
        <div class="w3-half w3-container">
            <p>
                <label>999.9 Bán:</label>
                <input name="sell9999" class="w3-input" type="number" value=<%= request.getParameter("sell9999")%>>
                
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>999.9 Mua:</label>
                <input name="buy9999" class="w3-input" type="number" value=<%= request.getParameter("buy9999")%>>
            </p>
        </div>
        <div class="w3-container w3-center">
        	<input hidden name="update" value="true">
            <a class="w3-btn w3-blue" onclick="updatePrice()">Tính Theo Giá 999.9</a>
            <button class="w3-btn w3-green" type="submit" style="width:33%">Lưu và Thoát</button>
            <a class="w3-btn w3-red" href=<%= request.getParameter("prevPage")%>>Không Lưu và Thoát</a>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>Nữ Trang 24k Bán:</label>
                <input name="sellNuTrang24K" class="w3-input" type="number" value=<%= request.getParameter("sellNuTrang24K")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>Nữ Trang 24k Mua:</label>
                <input name="buyNuTrang24K" class="w3-input" type="number" value=<%= request.getParameter("buyNuTrang24K")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>680 Bán:</label>
                <input name="sell680" class="w3-input" type="number" value=<%= request.getParameter("sell680")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>680 Mua:</label>
                <input name="buy680" class="w3-input" type="number" value=<%= request.getParameter("buy680")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>625 Bán:</label>
                <input name="sell625" class="w3-input" type="number" value=<%= request.getParameter("sell625")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>625 Mua:</label>
                <input name="buy625" class="w3-input" type="number" value=<%= request.getParameter("buy625")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>610 Bán:</label>
                <input name="sell610" class="w3-input" type="number" value=<%= request.getParameter("sell610")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>610 Mua:</label>
                <input name="buy610" class="w3-input" type="number" value=<%= request.getParameter("buy610")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>600 Bán:</label>
                <input name="sell600" class="w3-input" type="number" value=<%= request.getParameter("sell600")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>600 Mua:</label>
                <input name="buy600" class="w3-input" type="number" value=<%= request.getParameter("buy600")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>560 Bán:</label>
                <input name="sell560" class="w3-input" type="number" value=<%= request.getParameter("sell560")%>>
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>560 Mua:</label>
                <input name="buy560" class="w3-input" type="number" value=<%= request.getParameter("buy560")%>>
            </p>
        </div>
        
    </div>
    </form>
    <script src="js/common.js"></script>
    <script>
        // Update all price from buy9999 price
        function updatePrice() {
            var sellPrice = $('input[name*="sell9999"]').val();
            $('input[name*="buy9999"]').val(sellPrice - 70);
            $('input[name*="sellNuTrang24K"]').val(sellPrice - 15);
            $('input[name*="sell680"]').val(Math.ceil(sellPrice*.73));
            $('input[name*="sell625"]').val(Math.ceil(sellPrice*.675));
            $('input[name*="sell610"]').val(Math.ceil(sellPrice*.66));
            $('input[name*="sell600"]').val(Math.ceil(sellPrice*.65));
            $('input[name*="sell560"]').val(Math.ceil(sellPrice*.64));
            
            $('input[name*="buyNuTrang24K"]').val($('input[name*="sellNuTrang24K"]').val() - 80);
            $('input[name*="buy680"]').val($('input[name*="sell680"]').val() - 240);
            $('input[name*="buy625"]').val($('input[name*="sell625"]').val() - 240);
            $('input[name*="buy610"]').val($('input[name*="sell610"]').val() - 240);
            $('input[name*="buy600"]').val($('input[name*="sell600"]').val() - 240);
            $('input[name*="buy560"]').val($('input[name*="sell560"]').val() - 280);
        }
    </script>
</body>
</html>
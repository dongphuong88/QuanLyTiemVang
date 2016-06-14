<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
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
        <h1>Cập nhật giá</h1>
    </header>
    
    <div class="w3-container">
        <div class="w3-half w3-container">
            <p>
                <label>9999 Bán:</label>
                <input id="sell9999" class="w3-input" onfocus="$(this).select()" type="number">
                
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>9999 Mua:</label>
                <input id="buy9999" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-container w3-center">
            <button class="w3-btn w3-blue" onclick="updatePrice()">Tính theo giá 9999</button>
            <button class="w3-btn w3-green" style="width:33%">Lưu giá</button>
            <button class="w3-btn w3-red">Không lưu và thoát</button>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>Nữ trang 24k Bán:</label>
                <input id="sellNuTrang24K" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>Nữ trang 24k Mua:</label>
                <input id="buyNuTrang24K" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>680 Bán:</label>
                <input id="sell680" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>680 Mua:</label>
                <input id="buy680" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>625 Bán:</label>
                <input id="sell625" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>625 Mua:</label>
                <input id="buy625" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>610 Bán:</label>
                <input id="sell610" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>610 Mua:</label>
                <input id="buy610" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>600 Bán:</label>
                <input id="sell600" class="w3-input" type="number">
            </p>
        </div>
        <div class="w3-half w3-container">
            <p>
                <label>600 Mua:</label>
                <input id="buy600" class="w3-input" type="number">
            </p>
        </div>
        
    </div>
    
    <script src="js/common.js"></script>
    <script>
        // Update all price from buy9999 price
        function updatePrice() {
            var buyPrice = $('#sell9999').val();
            $('#buy9999').val(buyPrice - 70);
            $('#sellNuTrang24K').val(buyPrice - 10);
            $('#sell680').val(Math.ceil(buyPrice*.73));
            $('#sell625').val(Math.ceil(buyPrice*.675));
            $('#sell610').val(Math.ceil(buyPrice*.66));
            $('#sell600').val(Math.ceil(buyPrice*.65));
            
            $('#buyNuTrang24K').val($('#sellNuTrang24K').val() - 80);
            $('#buy680').val($('#sell680').val() - 80);
            $('#buy625').val($('#sell625').val() - 80);
            $('#buy610').val($('#sell610').val() - 80);
            $('#buy600').val($('#sell600').val() - 80);
        }
    </script>
</body>
</html>
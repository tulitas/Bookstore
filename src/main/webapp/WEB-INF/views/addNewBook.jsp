<%--
  Created by IntelliJ IDEA.
  User: SergejK
  Date: 02-Jun-20
  Time: 08:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style>
        .navbar {
            overflow: hidden;
            background-color: #333;
            font-family: Arial, Helvetica, sans-serif;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            cursor: pointer;
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
            background-color: red;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .show {
            display: block;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        .remove_button {
            padding: 10px 15px;
            font-size: 24px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #e60000;
            background-color: #00008B;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }

        .add_button {

            padding: 15px 25px;
            font-size: 24px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #fff;
            background-color: #00008B;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }

        button:hover {

            background-color: #3e8e41;
        }

        button:active {

            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }

        textarea {

            position: absolute;
            top: 98px;
            right: 450px;


        }




    </style>

    <title>Title</title>
</head>
<body>

<style>body {background: #999999}</style>
<br/>

<div style="float: right">
    <form action="${pageContext.request.contextPath}valid" method="post">
        <label for="enterbookauthor">Enter Book Author</label><br/>
        <input type="text" name="bookauthor" id="enterbookauthor" size="40"/><br/>

        <br/>
        <label for="enterbookname">Enter Book Name</label><br/>
        <input id="enterbookname" type="text" name="bookname" size="40"/>
        <br/>

        <label for="enterbooktitle">Enter Book Title</label><br/>
        <input id="enterbooktitle" type="text" name="booktitle" size="40"/>
        <br/>

        <label for="enterbookpages">Enter Book Pages</label><br/>
        <input id="enterbookpages" type="text" name="bookpages" size="40"/>
        <br/>

        <label for="enterbookprice">Enter Book Price</label><br/>
        <input id="enterbookprice" type="text" name="bookprice" size="40"/>
        <br/>


        <label for="genre">Select Book Genre</label>
        <div><select id="genre" name="bookgenre"> size="3" multiple="multiple"
            <option value="Comedy"/>
            Comedy
            <option value="Horror"/>
            Horror
            <option value="Dramma"/>
            Dramma
        </select></div>
        <br/>


        <br/>
        <br/>
        <br/>
        <p>

            <button class="add_button">Add Book</button>
        </p>


    </form>



</div>
<br/>
<div style="height: 200px; width: 120px; border: 3px dashed #e03c32; float: left">
    <p>
        <strong><a href="/">Menu</a></strong> <br/>
        <a href="${pageContext.request.contextPath}options">Book List</a>
    </p>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 05/06/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./taglib.jsp" %>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<ul class="float-left border-r border-[#E5E8EB] list-none w-[300px] h-[calc(100%-70px)] py-4">
    <li>
        <a class="sidebar-item block w-[85%] mx-auto px-4 py-2 font-medium text-lg cursor-pointer border-l-[3px] border-white transition-all hover:bg-[#FFF9E9] hover:text-[#FFC326] hover:border-l-[3px] hover:border-[#FFC326]"
           href="<c:url value="res-rescue-request"/>">Quản lý yêu cầu
            cứu hộ</a>
    </li>
    <li>
        <a class="sidebar-item block w-[85%] mx-auto px-4 py-2 font-medium text-lg cursor-pointer border-l-[3px] border-white transition-all hover:bg-[#FFF9E9] hover:text-[#FFC326] hover:border-l-[3px] hover:border-[#FFC326]"
           href="<c:url value="res-rescue-service"/>">Quản lý dịch vụ cứu hộ</a>
    </li>
    <li>
        <a class="sidebar-item block w-[85%] mx-auto px-4 py-2 font-medium text-lg cursor-pointer border-l-[3px] border-white transition-all hover:bg-[#FFF9E9] hover:text-[#FFC326] hover:border-l-[3px] hover:border-[#FFC326]"
           href="<c:url value="billing"/>">Lập hóa đơn</a>
    </li>
    <li>
        <a class="sidebar-item block w-[85%] mx-auto px-4 py-2 font-medium text-lg cursor-pointer border-l-[3px] border-white transition-all hover:bg-[#FFF9E9] hover:text-[#FFC326] hover:border-l-[3px] hover:border-[#FFC326]"
           href="<c:url value="maintain-fee"/>">Nộp phí duy trì</a>
    </li>
</ul>
</body>
</html>

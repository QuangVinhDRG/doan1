<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Báo cáo thống kê</title>
</head>
<body>
<%@ include file="../../commons/header_admin.jsp" %>
<%@ include file="../../commons/sidebar_admin.jsp" %>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-hidden overflow-x-hidden pt-10 pb-20">
    <div class="w-[90%] flex justify-end items-center">
        <div class="mr-2">
            <label class="font-medium text-xl" for="chart">Loại biểu đồ: </label>
            <select class="w-[250px] relative border border-gray-400 px-4 py-2 cursor-pointer outline-none" name=""
                    id="chart">
                <option value="">Doanh thu</option>
                <option value="">Người dùng</option>
                <option value="">Cứu hộ</option>
            </select>
        </div>
        <button class="bg-[#FFC326] text-white font-medium py-2 px-4 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] transition-all">
            Tạo báo cáo
        </button>
    </div>
    <div>
        <img class="block mx-auto mt-10" src="../../images/chart.png" alt="">
    </div>
</div>
</body>
</html>

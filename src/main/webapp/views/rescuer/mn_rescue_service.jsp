<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 08:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Dịch vụ cứu hộ</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../../commons/header_rescuer.jsp" %>
<%@ include file="../../commons/sidebar_rescuer.jsp" %>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <div class="flex justify-between w-[90%] mx-auto">
        <div>
            <label class="font-medium" for="license-plates">Trạng thái: </label>
            <select class="relative border border-gray-400 px-2 py-1 cursor-pointer outline-none"
                    name=""
                    id="license-plates">
                <option value="">Tất cả</option>
                <option value="">Hỗ trợ</option>
                <option value="">Không hỗ trợ</option>
            </select>
        </div>
        <div class="relative w-[70%]">
            <input type="text" placeholder="Tìm kiếm..."
                   class="w-full border border-gray-400 px-2 py-1 outline-none">
            <i class="fa-solid fa-magnifying-glass absolute right-2 top-1/2 -translate-y-1/2 cursor-pointer"></i>
        </div>
    </div>
    <table class="w-[90%] mx-auto mt-4">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã dịch vụ</th>
            <th class="w-[15%]">Tên dịch vụ</th>
            <th class="w-[20%]">Giá dịch vụ</th>
            <th class="">Mô tả</th>
            <th class="w-[15%]">Cung cấp dịch vụ</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="i" begin="1" end="9">
            <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="DVCH0${i}"/></td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Vá lốp xe</td>
                <td class="py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">20.000 VND</td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">Vá lốp xe đạp, xe máy, xe ô tô,...</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                    <input type="checkbox"
                           class="w-[20px] h-[20px] cursor-pointer accent-[#FFC326]">
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <form class="bg-[#FFF8E7] pt-10 pb-20 w-[90%] mx-auto mt-20 relative" method="get">
        <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">ĐỀ NGHỊ THÊM DỊCH VỤ CỨU HỘ</span>
        <div class="mt-6 flex justify-center items-center">
            <input type="text" placeholder="Tên dịch vụ"
                   class="w-[30%] py-2 px-4 bg-transparent border border-black outline-none mr-1">
            <input type="text" placeholder="Mô tả dịch vụ"
                   class="w-[65%] py-2 px-4 bg-transparent border border-black outline-none">
        </div>
        <span class="block text-white font-medium bg-[#339AF0] px-4 py-2 w-fit ml-[25px] mt-2 border border-[#339AF0] hover:bg-white hover:text-[#339AF0] cursor-pointer transition-all">+ Thêm dịch vụ</span>
        <button class="block text-white font-medium bg-[#FFC326] px-4 py-2 w-fit ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[25px] right-[25px]">
            Gửi yêu cầu
        </button>
    </form>
</div>
</body>
</html>

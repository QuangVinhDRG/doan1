<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Phí duy trì</title>
</head>
<body>
<%@ include file="../../commons/header_admin.jsp" %>
<%@ include file="../../commons/sidebar_admin.jsp" %>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <div class="pt-10 relative">
        <button id="btn-add-package"
                class="bg-[#FFC326] text-white font-medium py-2 px-4 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] transition-all absolute right-[5%]">
            + Thêm gói
        </button>
        <table class="w-[90%] mx-auto mt-12">
            <thead class="block pr-[17px] py-3 bg-gray-300">
            <tr class="table w-full ">
                <th class="w-[10%]">Mã gói</th>
                <th class="w-[15%]">Tên gói</th>
                <th class="w-[15%]">Giá tiền</th>
                <th class="">Mô tả</th>
                <th class="w-[15%]">Hành động</th>
            </tr>
            </thead>
            <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
            <c:forEach var="i" begin="1" end="9">
                <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                    <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="GDT0${i}"/></td>
                    <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Gói 1 tháng</td>
                    <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">100.000 VND</td>
                    <td class="py-3 border-b border-[#D4D4D4] border-collapse">Gói duy trì tài khoản có hiệu lực 1 tháng
                        kể từ ngày được xác nhận đã nhận tiền
                    </td>
                    <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                        <i class="edit-icon fa-solid fa-pen-to-square text-3xl hover:brightness-125 text-[#FFC326]"></i>
                            <%--                    <i class="fa-solid fa-lock text-3xl hover:brightness-125 text-red-500"></i>--%>
                        <i class="fa-solid fa-unlock text-3xl hover:brightness-125 text-green-500"></i>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%-- Add maintain fee Modal --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] hidden"
     id="add-package-modal">
    <span class="block relative py-1 font-bold text-xl">Thêm mới gói duy trì tài khoản<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <form class="mt-3" method="get">
        <div>
            <input type="text" placeholder="Tên gói"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none">
            <div class="mt-1 flex justify-center items-center">
                <input type="text" placeholder="Thời lượng gói"
                       class="w-[40%] py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                <input type="text" placeholder="Giá tiền"
                       class="w-[60%] py-2 px-4 bg-transparent border border-gray-300 outline-none">
            </div>
            <textarea class="p-4 outline-none border border-gray-300 my-1 w-full h-[150px]" name=""
                      placeholder="Mô tả gói"></textarea>
        </div>
        <span class="block text-center text-white font-medium bg-[#339AF0] w-[100px] py-2 mt-2 border border-[#339AF0] hover:bg-white hover:text-[#339AF0] cursor-pointer transition-all">+ Thêm</span>
        <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[25px] right-[40px]">
            Lưu
        </button>
    </form>
</div>

<%-- Update maintain fee Modal --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] hidden"
     id="update-package-modal">
    <span class="block relative py-1 font-bold text-xl">Cập nhật gói duy trì tài khoản<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <form class="mt-3" method="get">
        <div>
            <span class="py-2 px-4 bg-transparent border border-gray-300 outline-none block">Mã gói: <span
                    class="
                  font-medium">GTT01</span></span>
            <input type="text" value="Gói kim cương"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
            <div class="mt-1 flex justify-center items-center">
                <input type="text" value="12 tháng"
                       class="w-[40%] py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                <input type="text" value="1 200 000 VND"
                       class="w-[60%] py-2 px-4 bg-transparent border border-gray-300 outline-none">
            </div>
            <textarea class="p-4 outline-none border border-gray-300 my-1 w-full h-[150px]">Gói phí duy trì tài khoản đơn vị cứu hộ 12 tháng</textarea>
        </div>
        <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[10px] right-[40px]">
            Lưu
        </button>
    </form>
</div>
<script src="../../js/admin/mn_maintain_fee.js"></script>
</body>
</html>

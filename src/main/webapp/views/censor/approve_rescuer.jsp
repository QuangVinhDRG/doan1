<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Duyệt đơn vị cứu hộ</title>
</head>
<body>
<%@ include file="../../commons/header_censor.jsp" %>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="pt-10 pb-20">
    <table class="w-[90%] mx-auto">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã tài khoản</th>
            <th class="w-[15%]">Tên đơn vị cứu hộ</th>
            <th class="w-[15%]">Email</th>
            <th class="">Địa chỉ</th>
            <th class="w-[15%]">Số điện thoại</th>
            <th class="w-[10%]">Hồ sơ</th>
            <th class="w-[15%]">Hành động</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="i" begin="1" end="9">
            <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="DVCH0${i}"/></td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Dana Rescue</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">dana.res@gmail.com</td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">48 Cao Thắng, P. Thanh Bình, Q. Hải
                    Châu
                </td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">0945123605</td>
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse">
                    <a class="text-[#339AF0] underline" href="">Xem hồ sơ</a>
                </td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                    <i class="fa-solid fa-circle-check text-3xl text-[#339AF0] transition-all hover:brightness-125"></i>
                    <i class="fa-solid fa-circle-xmark text-3xl text-[#E53629] transition-all hover:brightness-125"></i>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%-- Modal-approve --%>
<form class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white py-5 px-10 w-[700px] hidden"
      id="approve-modal" action="res-rescue-request">
    <span class="block relative py-1 font-bold text-xl">Xác nhận duyệt đơn vị cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <span class="block mt-1">Mã tài khoản: <span class="font-medium">TK00000001</span></span>
    <span class="block mt-1">Tên đơn vị cứu hộ: <span class="font-medium">Hoa Long Resc</span></span>
    <span class="block mt-1">Email: <span class="font-medium">hlr@gmail.com</span></span>
    <span class="block mt-1">Địa chỉ: <span
            class="font-medium">48 Cao Thắng, P. Thanh Bình, Q. Hải Châu, TP. Đà Nẵng</span></span>
    <span class="block mt-1">Số điện thoại đơn vị: <span class="font-medium">0236512425</span></span>
    <span class="block mt-1">Tên người đại diện: <span class="font-medium">Nguyễn Hoa Long</span></span>
    <span class="block mt-1">Số CCCD: <span class="font-medium">083521451268</span></span>
    <span class="block mt-1">Số điện thoại người đại diện: <span class="font-medium">0975126354</span></span>
    <div class="mt-10 flex justify-end">
        <button class="mr-1 w-[100px] font-medium bg-blue-500 text-white py-2 border border-blue-500 hover:bg-white hover:text-blue-500 transition-all">
            OK
        </button>
        <span class="close-modal w-[100px] font-medium bg-red-500 text-white py-2 border border-red-500 hover:bg-white hover:text-red-500 transition-all text-center cursor-pointer">
            Cancel
        </span>
    </div>
</form>
</body>
</html>

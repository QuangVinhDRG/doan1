<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Yêu cầu cứu hộ</title>
</head>
<body>
<%@ include file="../../commons/header_admin.jsp" %>
<%@ include file="../../commons/sidebar_admin.jsp" %>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-hidden overflow-x-hidden">
    <div class="flex justify-center items-center mt-8 mb-2">
        <div>
            <label class="font-medium" for="license-plates">Dịch vụ: </label>
            <select class="w-[200px] relative border border-gray-400 px-2 py-1 cursor-pointer outline-none"
                    name=""
                    id="license-plates">
                <option value="">Tất cả</option>
                <option value="">Vá lốp xe</option>
                <option value="">Thay nhớt xe</option>
                <option value="">Đổ xăng</option>
            </select>
        </div>
        <div>
            <label class="font-medium ml-10" for="status">Trạng thái: </label>
            <select class="w-[200px] relative border border-gray-400 px-2 py-1 cursor-pointer outline-none" name=""
                    id="status">
                <option value="">Tất cả</option>
                <option value="">Chờ xác nhận</option>
                <option value="">Đang thực hiện</option>
                <option value="">Đã xác nhận</option>
            </select>
        </div>
    </div>
    <table class="w-[90%] mx-auto">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã YCCH</th>
            <th class="w-[15%]">Biển số xe</th>
            <th class="w-[20%]">Thời gian yêu cầu</th>
            <th class="">Vị trí</th>
            <th class="w-[15%]">Dịch vụ</th>
            <th class="w-[15%]">Trạng thái</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="i" begin="1" end="9">
            <tr class="data-row text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="YCCH0${i}"/></td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">43A - 55555</td>
                <td class="py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">03/06/2024 - 09:00:00</td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">48 Cao Thắng, P. Thanh Bình, Q. Hải
                    Châu
                </td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Vá lốp xe</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Đã hoàn thành</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%-- Rescue Detail --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] h-[600px] overflow-y-auto overflow-x-hidden hidden"
     id="rescue-detail-modal">
    <span class="block relative py-1 font-bold text-xl">Chi tiết yêu cầu cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <span class="block mt-1">Mã yêu cầu cứu hộ: <span class="font-medium">YCCH000001</span></span>
    <span class="block mt-1">Tên khách hàng: <span class="font-medium">Nguyễn Thọ Quang Vinh</span></span>
    <span class="block mt-1">Biển số xe: <span class="font-medium">43K1 - 55236</span></span>
    <span class="block mt-1">Thời gian yêu cầu: <span
            class="font-medium">07/06/2024 09:01:03</span></span>
    <span class="block mt-1">Vị trí: <span class="font-medium">X. Hòa Ninh, H. Hòa Vang, TP. Đà Nẵng</span></span>
    <span class="block mt-1">Dịch vụ: <span class="font-medium">Cứu hộ lốp xe, Cung cấp nhiên liệu</span></span>
    <span class="block mt-1">Mô tả:
        <span class="block font-medium">
            - Xịt lốp xe (2 lỗ) </br>
            - Hết xăng (Xăng 95)
        </span>
    </span>
    <span class="block mt-1">Hình ảnh:</span>
    <div class="flex justify-between">
        <img class="w-[300px] h-[200px] object-cover"
             src="https://www.zuttoride.vn/uploads/image/Nga/lop-xe-may-bi-hong.jpg" alt="">
        <img class="w-[300px] h-[200px] object-cover"
             src="https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2022-09/RJH9mLwkrC.jpg&w=1200&q=75"
             alt="">
    </div>
    <span class="block mt-1">Trạng thái: <span class="font-medium text-green-500">Đã hoàn thành</span></span>

    <h1 class="mt-10 mb-2 font-bold text-2xl text-center border-t border-t-gray-300 pt-3">ĐÁNH GIÁ CỦA KHÁCH HÀNG</h1>
    <div class="flex">
        <span class="mr-2 p-2 text-[#FFC326] font-medium w-[40px] h-[40px] text-center rounded-full border border-[#FFC326] cursor-pointer">NV</span>
        <div>
            <span class="font-medium">Nguyễn Thọ Quang Vinh</span>
            <div>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
            </div>
            <span>Dịch vụ tốt, tiếp ứng kịp thời, sửa nhanh chóng</span>
        </div>
    </div>
</div>
<script src="../../js/admin/mn_rescue_request.js"></script>
</body>
</html>

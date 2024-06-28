<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 09:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Lập hóa đơn</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../../commons/header_rescuer.jsp" %>
<%@ include file="../../commons/sidebar_rescuer.jsp" %>
<div class="inline-block w-[calc(100%-300px)] pt-10 pb-20">
    <div class="w-[90%] flex justify-center items-center mx-auto">
        <input class="border border-[#D4D4D4] py-2 px-4 mr-1 w-[80%] outline-none" type="text"
               placeholder="Nhập mã yêu cầu cứu hộ">
        <span class="bg-[#FFC326] text-white font-medium py-2 px-4 border border-[#FFC326] cursor-pointer transition-all hover:text-[#FFC326] hover:bg-white">Tạo hóa đơn</span>
    </div>
    <form class="mt-10 w-[90%] border border-black p-10 mx-auto relative" method="get">
        <span class="block text-center text-3xl font-bold">HÓA ĐƠN SỬ DỤNG DỊCH VỤ CỨU HỘ</span>
        <span class="block mt-2 text-lg italic font-medium text-center">Mã yêu cầu cứu hộ: YCCH01</span>
        <div class="mt-6">
            <span class="block text-xl font-bold">Thông tin khách hàng</span>
            <div class="mt-1">
                <span class="font-medium">Mã khách hàng: </span>
                <span>KH01</span>
            </div>
            <div>
                <span class="font-medium">Họ và tên khách hàng: </span>
                <span>Nguyễn Văn A</span>
            </div>
            <div>
                <span class="font-medium">Số điện thoại: </span>
                <span>0912546125</span>
            </div>
            <div>
                <span class="font-medium">Số CCCD: </span>
                <span>084503259456</span>
            </div>
            <div>
                <span class="font-medium">Email: </span>
                <span>ngva@gmail.com</span>
            </div>
        </div>
        <div class="mt-6">
            <span class="block text-xl font-bold">Thông tin đơn vị cứu hộ</span>
            <div>
                <span class="font-medium">Mã đơn vị cứu hộ: </span>
                <span>DVCH01</span>
            </div>
            <div>
                <span class="font-medium">Tên đơn vị cứu hộ: </span>
                <span>Danang Rescue</span>
            </div>
            <div>
                <span class="font-medium">Số điện thoại: </span>
                <span>0925613524</span>
            </div>
            <div>
                <span class="font-medium">Email: </span>
                <span>dana.res@gmail.com</span>
            </div>
            <div>
                <span class="font-medium">Địa chỉ: </span>
                <span>48 Cao Thắng, P. Thanh Bình, Q. Hải Châu, TP. Đà Nẵng</span>
            </div>
            <div>
                <span class="font-medium">Họ và tên người đại diện: </span>
                <span>Nguyễn Văn B</span>
            </div>
            <div>
                <span class="font-medium">Số điện thoại người đại diện: </span>
                <span>0912546213</span>
            </div>
        </div>
        <div class="mt-6">
            <span class="block text-xl font-bold">Thông tin dịch vụ và thanh toán</span>
            <table class="w-full mt-1">
                <thead class="bg-[#F2F2F2]">
                <tr>
                    <th class="py-2">STT</th>
                    <th>Tên dịch vụ</th>
                    <th>Mô tả</th>
                    <th>Giá dịch vụ</th>
                </tr>
                </thead>
                <tbody class="bg-[F8FAFA]">
                <c:forEach var="i" begin="1" end="3">
                    <tr class="border-b border-[#D4D4D4]">
                        <td class="text-center py-2"><c:out value="${i}"/></td>
                        <td class="text-center">Vá lốp</td>
                        <td class="text-center">Lốp thủng đinh</td>
                        <td class="text-center">20.000 VND</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="3" class="text-center py-2 font-bold">TỔNG TIỀN</td>
                    <td class="text-center">60.000 VND</td>
                </tr>
                </tbody>
            </table>
            <span class="block text-xl font-bold mt-6">Phương thức thanh toán</span>
            <div class="mt-1">
                <div>
                    <input class="cursor-pointer" type="radio" name="payment" id="cash">
                    <label class="cursor-pointer" for="cash">Tiền mặt</label>
                </div>
                <div>
                    <input class="cursor-pointer" type="radio" name="payment" id="online">
                    <label class="cursor-pointer" for="online">Thanh toán trực tuyến</label>
                </div>
            </div>
        </div>
        <button class="bg-[#FFC326] text-white font-medium px-4 py-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] absolute right-10 bottom-8">
            Lưu hóa đơn
        </button>
    </form>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Nộp phí duy trì</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../../commons/header_rescuer.jsp" %>
<%@ include file="../../commons/sidebar_rescuer.jsp" %>
<div class="w-[calc(100%-300px)] h-[calc(100%-70px)] inline-block overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <div class="flex w-[90%] mx-auto justify-center p-10 border border-black relative">
        <div class="w-1/2">
            <span class="block text-center text-xl font-bold underline mb-4">GÓI THANH TOÁN</span>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="one-month">
                <label for="one-month">1 tháng - 100.000 VND</label>
            </div>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="two-month">
                <label for="two-month">2 tháng - 190.000 VND</label>
            </div>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="three-month">
                <label for="three-month">3 tháng - 280.000 VND</label>
            </div>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="four-month">
                <label for="four-month">4 tháng - 370.000 VND</label>
            </div>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="six-month">
                <label for="six-month">6 tháng - 550.000 VND</label>
            </div>
            <div class="pl-[150px]">
                <input type="radio" name="payment-package" id="twelve-month">
                <label for="twelve-month">12 tháng - 1.090.000 VND</label>
            </div>
        </div>
        <div class="w-1/2">
            <span class="block text-center text-xl font-bold underline mb-4">THÔNG TIN CHUYỂN KHOẢN</span>
            <span class="block font-medium">Chủ tài khoản: <span class="font-normal">NGUYỄN THỌ QUANG VINH</span></span>
            <span class="block font-medium">Số tài khoản: <span class="font-normal">102845123645</span></span>
            <span class="block font-medium">Ngân hàng: <span class="font-normal">Vietinbank - Ngân hàng TMCP Ngoại thương Việt Nam</span></span>
            <span class="block font-medium">Số tiền: <span class="font-normal">100.000 VND</span></span>
            <span class="block font-medium">Nội dung chuyển khoản: <span
                    class="font-normal">DVCH01_CKPDT_G1T</span></span>
            <form action="get">
                <input type="file" accept="image/*" id="evidence" class="hidden">
                <label for="evidence"
                       class="bg-transparent outline-none border border-gray-400 px-5 py-4 w-full text-black cursor-pointer block mt-2">
                    <i class="fa-solid fa-cloud-arrow-up"></i>
                    Ảnh minh chứng chuyển khoản
                </label>
                <button class="border border-[#FFC326] bg-[#FFC326] text-white hover:bg-white hover:text-[#FFC326] transition-all py-2 px-4 absolute bottom-2 right-2">
                    Xác
                    nhận
                </button>
            </form>
        </div>
    </div>
    <span class="mt-10 text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">LỊCH SỬ THANH TOÁN PHÍ DUY TRÌ</span>
    <table class="w-[90%] mx-auto mt-6">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[15%]">Mã gói duy trì</th>
            <th class="w-[15%]">Tên gói</th>
            <th class="">Thời gian thanh toán</th>
            <th class="w-[15%]">Giá gói</th>
            <th class="w-[15%]">Trạng thái</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="i" begin="1" end="9">
            <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse"><c:out
                        value="TT01${i}"/></td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Gói 1 tháng</td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">06/06/2024 - 08:00:00</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">100.000 VND
                </td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Đã thanh toán</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

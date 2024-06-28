<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 15/06/2024
  Time: 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Cập nhật thông tin tài khoản</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../../commons/header_censor.jsp" %>
<form class="w-[1200px] mx-auto my-10 border border-gray-300 p-10" method="post">
    <div class="flex pb-10">
        <div class="w-1/2 pr-10">
            <h2 class="text-xl font-bold uppercase mb-4">Thông tin cá nhân</h2>
            <div>
                <label class="font-medium block mt-2" for="full-name">Họ và tên</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text"
                       value="Nguyễn Thọ Quang Vinh"
                       id="full-name"
                       disabled>
            </div>
            <div>
                <label class="font-medium block mt-2" for="identity-number">Số CCCD</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text" value="089103209375"
                       id="identity-number"
                       disabled>
            </div>
            <div class="flex justify-between">
                <div class="inline-block w-[calc(50%-3px)]">
                    <label class="font-medium block mt-2" for="phone-number">Số điện thoại</label>
                    <input class="outline-none border border-gray-300 w-full px-4 py-2" type="tel" value="0845136521"
                           id="phone-number"
                           disabled>
                </div>
                <div class="inline-block w-[calc(50%-3px)]">
                    <label class="font-medium block mt-2" for="email">Email</label>
                    <input class="outline-none border border-gray-300 w-full px-4 py-2" type="email"
                           value="ntqvinh@gmail.com" id="email"
                           disabled>
                </div>
            </div>
            <div>
                <label class="font-medium block mt-2" for="address">Địa chỉ</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text"
                       value="X. Hòa Ninh, H. Hòa Vang, TP. Đà Nẵng" id="address"
                       disabled>
            </div>
        </div>
        <div class="w-1/2">
            <h2 class="text-xl font-bold uppercase mb-4">Thông tin tài khoản</h2>
            <div>
                <label class="font-medium block mt-2" for="account-type">Loại tài khoản</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text" value="Kiểm duyệt viên"
                       id="account-type"
                       disabled>
            </div>
            <div class="relative">
                <label class="font-medium block mt-2" for="current-password">Mật khẩu hiện tại</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="password" value="123456789"
                       id="current-password"
                       disabled>
                <i class="fa-solid fa-eye-slash absolute text-[#D4D4D4] bottom-[13px] right-2 cursor-pointer"></i>
            </div>
            <div class="relative">
                <label class="font-medium block mt-2" for="new-password">Mật khẩu mới</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="password" value="123456789"
                       id="new-password"
                       disabled>
                <i class="fa-solid fa-eye-slash absolute text-[#D4D4D4] bottom-[13px] right-2 cursor-pointer"></i>
            </div>
            <div class="relative">
                <label class="font-medium block mt-2" for="repeat-password">Nhập lại mật khẩu mới</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="password" value="123456789"
                       id="repeat-password"
                       disabled>
                <i class="fa-solid fa-eye-slash absolute text-[#D4D4D4] bottom-[13px] right-2 cursor-pointer"></i>
            </div>
        </div>
    </div>
    <div class="flex justify-end">
        <span class="w-[120px] text-center font-medium cursor-pointer mr-1 transition-all bg-[#FFC326] text-white py-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326]">Chỉnh sửa</span>
        <button class="w-[120px] bg-[#0D99FF] font-medium text-white py-2 transition-all border border-[#0D99FF] hover:bg-white hover:text-[#0D99FF]">
            Lưu
        </button>
    </div>
</form>
</body>
</html>

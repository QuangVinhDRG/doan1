<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 15/06/2024
  Time: 10:18
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
<%@ include file="../../commons/header_rescuer.jsp" %>
<form class="w-[1200px] mx-auto my-10 border border-gray-300 p-10" method="post">
    <div class="flex pb-10">
        <div class="w-1/2 pr-10">
            <h2 class="text-xl font-bold uppercase mb-4">Thông tin đơn vị cứu hộ</h2>
            <div>
                <label class="font-medium block mt-2" for="full-name">Tên đơn vị cứu hộ</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text"
                       value="Hoa Long Res"
                       id="full-name"
                       disabled>
            </div>
            <div>
                <label class="font-medium block mt-2" for="identity-number">Tên người đại diện</label>
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text" value="Nguyễn Hoa Long"
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
                           value="hlr@gmail.com" id="email"
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
                <input class="outline-none border border-gray-300 w-full px-4 py-2" type="text" value="Đơn vị cứu hộ"
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
    <div>
        <h2 class="text-center font-bold text-2xl mb-4">HỒ SƠ ĐƠN VỊ CỨU HỘ</h2>
        <div class="mt-2 flex justify-between items-center border border-gray-300">
            <span class="w-1/4 outline-none px-4 py-2 font-medium">
                  Giấy phép kinh doanh
            </span>
            <span class="w-[calc(75%-150px)] outline-none px-4 py-2">
                Được cấp bởi Sở Kế hoạch và Đầu tư, cho phép hoạt động trong lĩnh vực cứu hộ, sửa chữa ô tô.
            </span>
            <div class="w-[150px] flex justify-between items-center px-4">
                <i class="fa-solid fa-download text-xl text-[#007c00] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-cloud-arrow-up text-xl text-[#0568e9] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-trash text-xl text-red-500 cursor-pointer hover:opacity-50 transition-all"></i>
            </div>
        </div>
        <div class="mt-2 flex justify-between items-center border border-gray-300">
            <span class="w-1/4 outline-none px-4 py-2 font-medium">
                  Giấy đăng ký xe
            </span>
            <span class="w-[calc(75%-150px)] outline-none px-4 py-2">
                Chứng nhận đăng ký phương tiện dùng cho hoạt động cứu hộ.
            </span>
            <div class="w-[150px] flex justify-between items-center px-4">
                <i class="fa-solid fa-download text-xl text-[#007c00] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-cloud-arrow-up text-xl text-[#0568e9] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-trash text-xl text-red-500 cursor-pointer hover:opacity-50 transition-all"></i>
            </div>
        </div>
        <div class="mt-2 flex justify-between items-center border border-gray-300">
            <span class="w-1/4 outline-none px-4 py-2 font-medium">
                  Giấy chứng nhận kiểm định an toàn kỹ thuật và bảo vệ môi trường xe cơ giới
            </span>
            <span class="w-[calc(75%-150px)] outline-none px-4 py-2">
                Đảm bảo xe cứu hộ đáp ứng các tiêu chuẩn về an toàn và môi trường.
            </span>
            <div class="w-[150px] flex justify-between items-center px-4">
                <i class="fa-solid fa-download text-xl text-[#007c00] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-cloud-arrow-up text-xl text-[#0568e9] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-trash text-xl text-red-500 cursor-pointer hover:opacity-50 transition-all"></i>
            </div>
        </div>
        <div class="mt-2 flex justify-between items-center border border-gray-300">
            <span class="w-1/4 outline-none px-4 py-2 font-medium">
                  Giấy phép hoạt động dịch vụ cứu hộ
            </span>
            <span class="w-[calc(75%-150px)] outline-none px-4 py-2">
                Được cấp bởi Sở Giao thông Vận tải, cho phép doanh nghiệp hoặc cá nhân hành nghề cứu hộ giao thông.
            </span>
            <div class="w-[150px] flex justify-between items-center px-4">
                <i class="fa-solid fa-download text-xl text-[#007c00] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-cloud-arrow-up text-xl text-[#0568e9] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-trash text-xl text-red-500 cursor-pointer hover:opacity-50 transition-all"></i>
            </div>
        </div>
        <div class="mt-2 flex justify-between items-center border border-gray-300">
            <span class="w-1/4 outline-none px-4 py-2 font-medium">
                  Bảo hiểm trách nhiệm dân sự bắt buộc
            </span>
            <span class="w-[calc(75%-150px)] outline-none px-4 py-2">
                Bảo hiểm bắt buộc cho phương tiện cứu hộ.
            </span>
            <div class="w-[150px] flex justify-between items-center px-4">
                <i class="fa-solid fa-download text-xl text-[#007c00] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-cloud-arrow-up text-xl text-[#0568e9] cursor-pointer hover:opacity-50 transition-all"></i>
                <i class="fa-solid fa-trash text-xl text-red-500 cursor-pointer hover:opacity-50 transition-all"></i>
            </div>
        </div>
    </div>
    <div class="flex justify-end mt-10">
        <span class="w-[120px] text-center font-medium cursor-pointer mr-1 transition-all bg-[#FFC326] text-white py-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326]">Chỉnh sửa</span>
        <button class="w-[120px] bg-[#0D99FF] font-medium text-white py-2 transition-all border border-[#0D99FF] hover:bg-white hover:text-[#0D99FF]">
            Lưu
        </button>
    </div>
</form>
</body>
</html>

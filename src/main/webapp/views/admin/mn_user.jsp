<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Người dùng</title>
</head>
<body>
<%@ include file="../../commons/header_admin.jsp" %>
<%@ include file="../../commons/sidebar_admin.jsp" %>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <div class="w-[90%] flex justify-between items-center mx-auto">
        <div>
            <label class="font-medium" for="license-plates">Vai trò: </label>
            <select class="w-[250px] relative border border-gray-400 px-4 py-2 cursor-pointer outline-none"
                    name=""
                    id="license-plates">
                <option value="">Tất cả</option>
                <option value="">Khách hàng</option>
                <option value="">Đơn vị cứu hộ</option>
                <option value="">Quản trị viên</option>
                <option value="">Kiểm duệt viên</option>
            </select>
        </div>
        <div>
            <label class="font-medium" for="status">Trạng thái: </label>
            <select class="w-[250px] relative border border-gray-400 px-4 py-2 cursor-pointer outline-none" name=""
                    id="status">
                <option value="">Tất cả</option>
                <option value="">Hoạt động</option>
                <option value="">Vô hiệu hóa</option>
            </select>
        </div>
        <button id="btn-add-user"
                class="bg-[#FFC326] text-white font-medium py-2 px-4 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] transition-all">
            + Thêm người dùng
        </button>
    </div>
    <table class="w-[90%] mx-auto mt-3">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã tài khoản</th>
            <th class="">Tên người dùng</th>
            <th class="w-[20%]">Email</th>
            <th class="w-[15%]">Vai trò</th>
            <th class="w-[15%]">Trạng thái</th>
            <th class="w-[15%]">Hành động</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="i" begin="1" end="9">
            <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="KH0${i}"/></td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">Nguyễn Văn A</td>
                <td class="py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">ngva@gmail.com</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Khách hàng</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Hoạt động</td>
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
<%-- Add user Modal --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 pb-20 w-[700px] hidden"
     id="add-user-modal">
    <span class="block relative py-1 font-bold text-xl">Thêm mới người dùng<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <form class="mt-3" method="get">
        <div>
            <input type="text" placeholder="Họ tên người dùng/Tên đơn vị cứu hộ"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none">
            <div class="mt-1 flex justify-center items-center">
                <input type="text" placeholder="Số điện thoại"
                       class="w-[40%] py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                <select class="mt-1 bg-transparent outline-none border border-gray-300 px-4 py-2 w-[60%] text-[#9ca3c1] cursor-pointer"
                        name="">
                    <option class="text-black" value="">Kiểm duyệt viên</option>
                    <option class="text-black" value="">Quản trị viên</option>
                    <option class="text-black" value="">Khách hàng</option>
                    <option class="text-black" value="">Đơn vị cứu hộ</option>
                </select>
            </div>
            <input type="email" placeholder="Email"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
        </div>
        <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[30px] right-[40px]">
            Lưu
        </button>
    </form>
</div>

<%-- Update user Modal --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 pb-20 w-[700px] hidden"
     id="update-user-modal">
    <span class="block relative py-1 font-bold text-xl">Cập nhật gói duy trì tài khoản<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <form class="mt-3" method="get">
        <div>
            <span class="py-2 px-4 bg-transparent border border-gray-300 outline-none block">Mã người dùng: <span
                    class="
                  font-medium">TK00000001</span></span>
            <label class="mt-2 font-medium block">Họ và tên người dùng/tên đơn vị cứu hộ:</label>
            <input type="text" value="Nguyễn Thọ Quang Vinh"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
            <div class="mt-2 flex justify-between items-center">
                <div class="w-[40%]">
                    <label class="font-medium">Số CCCD:</label>
                    <input type="text" value="084512036524"
                           class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                </div>
                <div class="w-[59%]">
                    <label class="font-medium">Email:</label>
                    <input type="email" value="ntqvinh@gmail.com"
                           class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                </div>
            </div>
            <div class="mt-2 flex justify-between items-center">
                <div class="w-[40%]">
                    <label class="font-medium">Số điện thoại:</label>
                    <input type="text" value="0945126357"
                           class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mr-1">
                </div>
                <div class="w-[59%]">
                    <label class="font-medium">Loại tài khoản:</label>
                    <select class="mt-1 bg-transparent outline-none border border-gray-300 px-4 py-2 w-full text-[#9ca3c1] cursor-pointer"
                            name="">
                        <option class="text-black" value="">Kiểm duyệt viên</option>
                        <option class="text-black" value="">Quản trị viên</option>
                        <option class="text-black" value="">Khách hàng</option>
                        <option class="text-black" value="">Đơn vị cứu hộ</option>
                    </select>
                </div>
            </div>
            <label class="mt-2 font-medium block">Địa chỉ:</label>
            <input type="text" value="X. Hòa Ninh, H. Hòa Vang, TP. Đà Nẵng"
                   class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
            <div class="relative">
                <label class="mt-2 font-medium block">Mật khẩu:</label>
                <input type="password" value="123456789"
                       class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
                <i class="fa-solid fa-eye-slash absolute text-[#D4D4D4] bottom-[13px] right-2 cursor-pointer"></i>
            </div>
        </div>
        <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[30px] right-[40px]">
            Lưu
        </button>
    </form>
</div>
<script src="../../js/admin/mn_user.js"></script>
</body>
</html>

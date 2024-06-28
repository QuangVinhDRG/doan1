<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Đăng nhập</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="h-full bg-[url('../../images/bg_signin.jpg')] bg-no-repeat bg-center bg-cover">
    <div class="bg-black/85 w-[50%] mx-auto relative top-1/2 -translate-y-1/2 py-20">
        <span class="text-[40px] font-bold block text-center text-white relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">ĐĂNG NHẬP</span>
        <form action="" method="post" class="px-[25%] mt-20">
            <div class="relative">
                <i class="fa-solid fa-envelope absolute text-[#D4D4D4] top-1/2 -translate-y-1/2 left-2"></i>
                <input name="email" type="email" placeholder="Email"
                       class="text-white bg-transparent w-full px-8 py-2 border border-[#D4D4D4] outline-none">
            </div>
            <div class="relative mt-1">
                <i class="fa-solid fa-lock absolute text-[#D4D4D4] top-1/2 -translate-y-1/2 left-2"></i>
                <input name="password" type="password" placeholder="Mật khẩu"
                       class="text-white bg-transparent w-full px-8 py-2 border border-[#D4D4D4] outline-none">
                <i class="fa-solid fa-eye-slash absolute text-[#D4D4D4] top-1/2 -translate-y-1/2 right-2 cursor-pointer"></i>
            </div>
            <button class="text-white font-medium bg-[#FFC326] w-full mt-4 py-3 hover:bg-white hover:text-[#FFC326] transition-all">
                Đăng nhập
            </button>
        </form>
        <div class="mt-10">
            <span class="block text-center text-white">Bạn chưa có tài khoản?
                <a href="<c:url value="sign-up-customer"/>"
                   class="text-[#FFC326] underline hover:text-white transition-all">Đăng ký</a>
            </span>
            <span class="block text-center text-white my-2 relative before:absolute before:content-[''] before:w-[200px] before:h-[2px] before:bg-white before:left-[150px] before:top-1/2 before:-translate-y-1/2 after:absolute after:content-[''] after:w-[200px] after:h-[2px] after:bg-white after:right-[150px] after:top-1/2 after:-translate-y-1/2">Hoặc</span>
            <span class="block text-center text-white">Bạn muốn trở thành đơn vị cứu hộ?
                <a href="<c:url value="sign-up-rescuer"/>"
                   class="text-[#FFC326] underline hover:text-white transition-all">Đăng ký đơn vị cứu hộ</a>
            </span>
        </div>
    </div>
</div>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 04/06/2024
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="taglib.jsp" %>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<header class="px-[156px] py-3 m-auto flex justify-between border-b border-[#E5E8EB]">
    <a class="flex justify-center items-center" href="<c:url value="home"/>">
        <i class="fa-solid fa-flag mr-2"></i>
        <span class="font-bold">R.A Da Nang</span>
    </a>
    <ul class="w-1/3 flex justify-between items-center">
        <li class="">
            <a class="relative font-[500] pb-2 hover:after:content-[''] hover:after:w-full hover:after:h-[3px] hover:after:absolute hover:after:bg-[#FFC326] hover:after:left-0 hover:after:bottom-0 hover:text-[#FFC326] transition-all"
               href="<c:url value="home"/>">
                Trang chủ
            </a>
        </li>
        <li class="">
            <a class="relative font-[500] pb-2 hover:after:content-[''] hover:after:w-full hover:after:h-[3px] hover:after:absolute hover:after:bg-[#FFC326] hover:after:left-0 hover:after:bottom-0 hover:text-[#FFC326] transition-all"
               href="<c:url value="rescue-service"/>">
                Dịch vụ cứu hộ
            </a>
        </li>
        <li class="">
            <a class="relative font-[500] pb-2 hover:after:content-[''] hover:after:w-full hover:after:h-[3px] hover:after:absolute hover:after:bg-[#FFC326] hover:after:left-0 hover:after:bottom-0 hover:text-[#FFC326] transition-all"
               href="<c:url value="news"/>">
                Tin tức
            </a>
        </li>
        <li class="">
            <a class="relative font-[500] pb-2 hover:after:content-[''] hover:after:w-full hover:after:h-[3px] hover:after:absolute hover:after:bg-[#FFC326] hover:after:left-0 hover:after:bottom-0 hover:text-[#FFC326] transition-all"
               href="<c:url value="contact"/>">
                Liên hệ
            </a>
        </li>
    </ul>
    <div class="">
        <a class="w-[120px] py-2 inline-block bg-[#FFC326] text-center text-white font-bold rounded-full cursor-pointer hover:opacity-50 transition-all"
           href="<c:url value="sign-in"/>">
            Đăng nhập
        </a>
        <a class="w-[120px] py-2 inline-block bg-[#F5F0F0] text-center text-black font-bold rounded-full cursor-pointer hover:opacity-50 transition-all"
           href="<c:url value="sign-up-customer"/> ">
            Đăng ký
        </a>
    </div>
</header>
</body>
</html>

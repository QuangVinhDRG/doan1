<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 15/06/2024
  Time: 08:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
    <div class="flex items-center">
        <i class="fa-solid fa-bell text-[#FFC326] text-2xl cursor-pointer relative after:content-[''] after:w-3 after:h-3 after:bg-[#E53629] after:rounded-full after:absolute after:right-0 after:top-0"></i>
        <span class="ml-4 p-2 text-[#FFC326] font-medium w-[40px] h-[40px] text-center rounded-full border border-[#FFC326] cursor-pointer">NV</span>
        <div class="relative group cursor-pointer after:absolute after:content-[''] after:w-full after:h-[60px] after:top-0 after:right-1/2 after:translate-x-1/2 after:z-10">
            <span class="ml-2 text-[#FFC326] font-medium cursor-pointer">
                Nguyễn Thọ Quang Vinh
                <i class="fa-solid fa-chevron-down text-[#FFC326] ml-1"></i>
            </span>
            <ul class="absolute right-0 top-[44px] bg-white shadow-2xl w-[300px] group-hover:block hidden z-10">
                <li class="py-3 pl-6 hover:bg-[#F7F7F7] cursor-pointer">
                    <a class="font-medium text-lg" href="<c:url value="cus-update-information"/> ">
                        <i class="fa-solid fa-user bg-[#E4E6EB] p-2 rounded-full mr-2"></i>
                        Thông tin cá nhân
                    </a>
                </li>
                <li class="py-3 pl-6 hover:bg-[#F7F7F7] cursor-pointer">
                    <a class="font-medium text-lg" href=""><i
                            class="fa-solid fa-gear bg-[#E4E6EB] p-2 rounded-full mr-2"></i> Cài đặt</a>
                </li>
                <li class="py-3 pl-6 hover:bg-[#F7F7F7] cursor-pointer">
                    <a class="font-medium text-lg" href=""><i
                            class="fa-solid fa-circle-exclamation bg-[#E4E6EB] p-2 rounded-full mr-2"></i> Đóng góp ý
                        kiến</a>
                </li>
                <li class="py-3 pl-6 hover:bg-[#F7F7F7] cursor-pointer">
                    <a class="font-medium text-lg" href="<c:url value="sign-in"/>"><i
                            class="fa-solid fa-right-from-bracket bg-[#E4E6EB] p-2 rounded-full mr-2"></i> Đăng xuất</a>
                </li>
            </ul>
        </div>
    </div>
</header>
</body>
</html>

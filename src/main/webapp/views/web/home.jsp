<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 04/06/2024
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Trang chủ</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body>
<c:if test="${signedIn}">
    <%@include file="../../commons/header_web_signed_in.jsp" %>
</c:if>
<c:if test="${!signedIn}">
    <%@include file="../../commons/header_web.jsp" %>
</c:if>


<%-- Banner --%>
<div class="h-[450px] bg-[url('../../images/banner.png')] bg-no-repeat bg-cover bg-center relative">
    <div class="absolute left-10 top-1/2 -translate-y-1/2">
        <span class="text-white text-[45px] font-bold block">Cứu hộ xe 24/7 Đà Nẵng</span>
        <span class="text-white text-lg block mt-0 mb-5">Nhanh chóng - Uy tín - Luôn sẵn sàng đồng hành</span>
        <div>
            <a class="w-[150px] py-3 inline-block bg-[#FFC326] text-center text-white font-bold rounded-full cursor-pointer hover:bg-white hover:text-[#FFC326] transition-all mr-2"
               href="">
                Đặt dịch vụ</a>
            <a class="w-[150px] py-3 inline-block bg-white text-center text-black font-bold rounded-full cursor-pointer hover:bg-black hover:text-white transition-all"
               href="">
                Tìm hiểu thêm
            </a>
        </div>
    </div>
    <div class="absolute bottom-0 bg-[#FFC326] flex justify-around items-center w-full py-3">
        <div class="flex items-center">
            <i class="fa-solid fa-phone bg-white text-[#FFC326] p-4 text-3xl rounded-full"></i>
            <span class="text-white text-lg font-[500] ml-2">0236 512 363</span>
        </div>
        <div>
            <i class="fa-solid fa-clock bg-white text-[#FFC326] p-4 text-3xl rounded-full"></i>
            <span class="text-white text-lg font-[500] ml-2">15 phút là có mặt</span>
        </div>
        <div>
            <i class="fa-solid fa-circle-dollar-to-slot bg-white text-[#FFC326] p-4 text-3xl rounded-full"></i>
            <span class="text-white text-lg font-[500] ml-2">Không phụ phí</span>
        </div>
    </div>
</div>

<%-- Content --%>
<%-- Introduce --%>
<div class="mt-10 flex justify-center items-center">
    <img class="w-[350px]" src="../../images/introduce.png" alt=""/>
    <div class="ml-10 p-5 w-[480px] h-fit border rounded-md">
        <span class="text-xl font-bold">Vì sao nên chọn chúng tôi?</span>
        <p class="text-justify">Chúng tôi cung cấp dịch vụ nhanh chóng, an toàn và đáng tin cậy 24/7, với đội ngũ chuyên
            nghiệp và trang
            thiết bị hiện đại, đảm bảo mang lại sự yên tâm và hài lòng tuyệt đối cho khách hàng.</p>
        <a class="mt-5 relative left-1/2 -translate-x-1/2 w-[150px] py-3 inline-block bg-[#FFC326] text-center text-white font-bold rounded-full cursor-pointer border border-[#FFC326] hover:bg-white hover:text-[#FFC326] transition-all mr-2"
           href="">Đặt ngay</a>
    </div>
</div>

<%-- Services --%>
<div class="mt-10 pt-10 pb-20 bg-[#FFF8E7]">
    <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">DỊCH VỤ CHÍNH</span>
    <div class="flex justify-center mt-8">
        <div class="w-1/4 p-8 mx-4 bg-white rounded-xl">
            <img class="block mx-auto mb-4" src="../../images/service_1.png" alt=""/>
            <span class="font-medium text-2xl">Cẩu xe</span>
            <p class="text-justify">Cung cấp giải pháp nhanh chóng và an toàn khi xe của bạn gặp sự cố, đảm bảo xe được
                đưa đến địa điểm sửa
                chữa hoặc nơi an toàn một cách chuyên nghiệp và hiệu quả.</p>
        </div>
        <div class="w-1/4 p-8 mx-4 bg-white rounded-xl">
            <img class="block mx-auto mb-4" src="../../images/service_2.png" alt=""/>
            <span class="font-medium text-2xl">Sửa xe lưu động</span>
            <p class="text-justify">Cung cấp giải pháp khắc phục sự cố xe ngay tại hiện trường, với đội ngũ kỹ thuật
                viên chuyên nghiệp và
                trang thiết bị hiện đại, giúp bạn nhanh chóng tiếp tục hành trình.</p>
        </div>
        <div class="w-1/4 p-8 mx-4 bg-white rounded-xl">
            <img class="block mx-auto mb-4" src="../../images/service_3.png" alt=""/>
            <span class="font-medium text-2xl">Tiếp nhiên liệu</span>
            <p class="text-justify">Cung cấp nhiên liệu kịp thời và an toàn ngay tại hiện trường khi xe của bạn hết
                nhiên liệu, giúp bạn
                nhanh chóng tiếp tục hành trình mà không gặp phiền toái.</p>
        </div>
    </div>
</div>

<%-- Rescue Procedure --%>
<div class="mt-10 pt-10 pb-20 bg-[#FFFFFF]">
    <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">QUY TRÌNH CỨU HỘ</span>
    <div class="flex justify-center mt-8">
        <div class="flex flex-col items-center w-[100px]">
            <span class="w-[50px] h-[50px] leading-[50px] text-center border border-[#FFC326] text-[#FFC326] text-2xl rounded-full">1</span>
            <span class="text-center font-medium text-lg">Gửi yêu cầu cứu hộ</span>
        </div>
        <div class="">
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
        </div>
        <div class="flex flex-col items-center w-[100px]">
            <span class="w-[50px] h-[50px] leading-[50px] text-center border border-[#FFC326] text-white text-2xl rounded-full bg-[#FFC326]">2</span>
            <span class="text-center font-medium text-lg">Xác nhận yêu cầu</span>
        </div>
        <div class="">
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
        </div>
        <div class="flex flex-col items-center w-[100px]">
            <span class="w-[50px] h-[50px] leading-[50px] text-center border border-[#FFC326] text-white text-2xl rounded-full bg-[#FFC326]">3</span>
            <span class="text-center font-medium text-lg">Di chuyển đến nơi cần cứu hộ</span>
        </div>
        <div class="">
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
        </div>
        <div class="flex flex-col items-center w-[100px]">
            <span class="w-[50px] h-[50px] leading-[50px] text-center border border-[#FFC326] text-white text-2xl rounded-full bg-[#FFC326]">4</span>
            <span class="text-center font-medium text-lg">Thực hiện cứu hộ</span>
        </div>
        <div class="">
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
            <span class="leading-[50px] text-[#FFC326] text-[40px]">&#x2022;</span>
        </div>
        <div class="flex flex-col items-center w-[100px]">
            <span class="w-[50px] h-[50px] leading-[50px] text-center border border-[#FFC326] text-[#FFC326] text-2xl rounded-full">5</span>
            <span class="text-center font-medium text-lg">Đánh giá dịch vụ</span>
        </div>
    </div>
</div>

<%-- News --%>
<div class="mt-10 pt-10 pb-20 bg-[#FFF8E7]">
    <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">TIN TỨC</span>
    <div class="flex justify-center mt-8">
        <div class="bg-white rounded-xl p-8 mx-3 w-1/4">
            <img class="w-[315px] h-[130px] object-cover mb-4" src="../../images/news_1.png" alt="">
            <span class="font-bold text-lg text-center block mb-2">Cứu hộ xe Đà Nẵng 24/7 ra mắt dịch vụ sửa xe lưu động</span>
            <p class="text-justify line-clamp-4 mb-8">
                Chúng tôi hân hạnh giới thiệu dịch vụ sửa xe lưu động, mang đến giải pháp khắc phục sự cố ngay tại hiện
                trường, giúp bạn tiếp tục hành trình một cách nhanh chóng và thuận tiện.</p>
            <span class="block text-center font-medium text-gray-400">NGÀY 02 THÁNG 02 NĂM 2024</span>
            <span class="block text-center text-[#FFC326]">by Admin</span>
        </div>
        <div class="bg-white rounded-xl p-8 mx-3 w-1/4">
            <img class="w-[315px] h-[130px] object-cover mb-4" src="../../images/news_1.png" alt="">
            <span class="font-bold text-lg text-center block mb-2">Cứu hộ xe Đà Nẵng 24/7 ra mắt dịch vụ sửa xe lưu động</span>
            <p class="text-justify line-clamp-4 mb-8">
                Chúng tôi hân hạnh giới thiệu dịch vụ sửa xe lưu động, mang đến giải pháp khắc phục sự cố ngay tại hiện
                trường, giúp bạn tiếp tục hành trình một cách nhanh chóng và thuận tiện.</p>
            <span class="block text-center font-medium text-gray-400">NGÀY 02 THÁNG 02 NĂM 2024</span>
            <span class="block text-center text-[#FFC326]">by Admin</span>
        </div>
        <div class="bg-white rounded-xl p-8 mx-3 w-1/4">
            <img class="w-[315px] h-[130px] object-cover mb-4" src="../../images/news_1.png" alt="">
            <span class="font-bold text-lg text-center block mb-2">Cứu hộ xe Đà Nẵng 24/7 ra mắt dịch vụ sửa xe lưu động</span>
            <p class="text-justify line-clamp-4 mb-8">
                Chúng tôi hân hạnh giới thiệu dịch vụ sửa xe lưu động, mang đến giải pháp khắc phục sự cố ngay tại hiện
                trường, giúp bạn tiếp tục hành trình một cách nhanh chóng và thuận tiện.</p>
            <span class="block text-center font-medium text-gray-400">NGÀY 02 THÁNG 02 NĂM 2024</span>
            <span class="block text-center text-[#FFC326]">by Admin</span>
        </div>
    </div>
</div>


<%@include file="../../commons/footer_web.jsp" %>
</body>
</html>

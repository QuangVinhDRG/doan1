<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 05/06/2024
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Liên hệ</title>
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

<%--Content--%>
<div class="flex justify-around items-center mt-10 px-20">
    <div class="relative w-1/5">
        <i class="fa-solid fa-phone block text-[#FFC326] text-3xl relative left-1/2 -translate-x-1/2"></i>
        <span class="block text-2xl font-bold text-center">Số điện thoại</span>
        <span class="block text-center">0236 512 363</span>
    </div>
    <div class="relative w-1/5">
        <i class="fa-solid fa-map-location-dot block text-[#FFC326] text-3xl relative left-1/2 -translate-x-1/2"></i>
        <span class="block text-2xl font-bold text-center">Địa chỉ</span>
        <span class="block text-center">48 Cao Thắng, P. Thanh Bình, Q. Hải Châu, TP. Đà Nẵng</span>
    </div>
    <div class="relative w-1/5">
        <i class="fa-solid fa-clock block text-[#FFC326] text-3xl relative left-1/2 -translate-x-1/2"></i>
        <span class="block text-2xl font-bold text-center">Giờ mở cửa</span>
        <span class="block text-center">07:00 - 22:00</span>
    </div>
    <div class="relative w-1/5">
        <i class="fa-solid fa-envelope block text-[#FFC326] text-3xl relative left-1/2 -translate-x-1/2"></i>
        <span class="block text-2xl font-bold text-center">Email</span>
        <span class="block text-center">ra.danang@gmail.com</span>
    </div>
</div>

<%-- Map --%>
<div class="mt-10">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.771403944958!2d108.21084937465672!3d16.077347939221433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142184792140755%3A0xd4058cb259787dac!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgUGjhuqFtIEvhu7kgdGh14bqtdCAtIMSQ4bqhaSBo4buNYyDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1717593498694!5m2!1svi!2s"
            width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

<%@include file="../../commons/footer_web.jsp" %>
</body>
</html>

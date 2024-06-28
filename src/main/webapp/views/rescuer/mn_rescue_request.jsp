<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 05/06/2024
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Yêu cầu cứu hộ</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body class="relative">
<%@ include file="../../commons/header_rescuer.jsp" %>
<%@ include file="../../commons/sidebar_rescuer.jsp" %>

<%--        Cover--%>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="relative inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <%--Rescue Request--%>
    <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">YÊU CẦU CỨU HỘ</span>
    <table class="w-[90%] mx-auto mt-6">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã YCCH</th>
            <th class="w-[15%]">Biển số xe</th>
            <th class="w-[15%]">Thời gian yêu cầu</th>
            <th class="">Vị trí</th>
            <th class="w-[20%]">Dịch vụ</th>
            <th class="w-[15%]">Hành động</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="item" items="${rescueRequestList}">
            <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td
                        class="tb-rescue-request-id py-3 w-[10%] border-b border-[#D4D4D4] border-collapse">${item.rescueRequestId}</td>
                <td
                        class="tb-license-plate py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">${item.licensePlateNumber}</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">${item.requestTime}</td>
                <td class="tb-location text-left px-3 py-3 border-b border-[#D4D4D4] border-collapse">${item.location}</td>
                <td
                        class="tb-service text-left py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">${item.serviceName}</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                    <i class="approve-icon fa-solid fa-circle-check text-3xl text-[#339AF0] transition-all hover:brightness-125"></i>
                    <i class="refuse-icon fa-solid fa-circle-xmark text-3xl text-[#E53629] transition-all hover:brightness-125"></i>
                </td>
                <td class="tb-image hidden">
                    <c:forEach var="imageLink" items="${item.imageLink}">
                        <img class="image" src="${imageLink}" alt="">
                    </c:forEach>
                </td>
                <td class="tb-description hidden">
                    <c:forEach var="descItem" items="${item.description}">
                        <span class="description">${descItem}</span>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%--Rescue History--%>
    <span class="mt-20 text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">LỊCH SỬ CỨU HỘ</span>
    <div class="flex justify-center items-center my-8">
        <div>
            <label class="font-medium" for="services">Dịch vụ: </label>
            <select class="relative border border-gray-400 px-2 py-1 cursor-pointer outline-none"
                    name=""
                    id="services">
                <option value="">Tất cả</option>
                <option value="">Vá lốp xe</option>
                <option value="">Đổ xăng</option>
                <option value="">Thay nhớt xe</option>
            </select>
        </div>
        <div>
            <label class="font-medium ml-10" for="status">Trạng thái: </label>
            <select class="relative border border-gray-400 px-2 py-1 cursor-pointer outline-none" name="" id="status">
                <option value="">Tất cả</option>
                <option value="">Chờ xác nhận</option>
                <option value="">Đang thực hiện</option>
                <option value="">Đã xác nhận</option>
            </select>
        </div>
    </div>
    <table class="w-[90%] mx-auto">
        <thead class="block pr-[17px] py-3 bg-gray-300">
        <tr class="table w-full ">
            <th class="w-[10%]">Mã YCCH</th>
            <th class="w-[15%]">Biển số xe</th>
            <th class="w-[20%]">Thời gian yêu cầu</th>
            <th class="">Vị trí</th>
            <th class="w-[15%]">Dịch vụ</th>
            <th class="w-[15%]">Trạng thái</th>
        </tr>
        </thead>
        <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
        <c:forEach var="item" items="${rescueHistory}">
            <tr class="data-row text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse">${item.rescueRequestId}</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">${item.licensePlateNumber}</td>
                <td class="py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">${item.requestTime}</td>
                <td class="py-3 text-left px-3 border-b border-[#D4D4D4] border-collapse">${item.location}</td>
                <td class="py-3 text-left w-[15%] border-b border-[#D4D4D4] border-collapse">${item.services}</td>
                <td class="rescue-history-status py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">${item.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%--    Pop-up approve --%>
<form class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white py-5 px-10 hidden w-[700px] h-[600px] overflow-y-auto overflow-x-hidden"
      id="approve-modal" action="res-rescue-request">
    <span class="block relative py-1 font-bold text-lg">Xác nhận yêu cầu cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>
    <label class="mt-5">Mã yêu cầu cứu hộ:</label>
    <input
            readonly
            class="font-medium outline-none res-request-id bg-transparent"
            name="approveRescueRequestId"/>
    <span class="block mt-1">Biển số xe: <span class="font-medium license-plate"></span></span>
    <span class="block mt-1">Vị trí: <span
            class="font-medium location"></span></span>
    <span class="block mt-1">Dịch vụ: <span class="font-medium service"></span></span>
    <span class="block mt-1 description-element">Mô tả:</span>
    <span class="block mt-1">Hình ảnh:
        <div class="image-element flex justify-between flex-wrap">

        </div>
    </span>
    <div class="mt-10 flex justify-end">
        <button class="mr-1 w-[100px] font-medium bg-blue-500 text-white py-2 border border-blue-500 hover:bg-white hover:text-blue-500 transition-all">
            OK
        </button>
        <span class="close-modal w-[100px] font-medium bg-red-500 text-white py-2 border border-red-500 hover:bg-white hover:text-red-500 transition-all text-center cursor-pointer">
            Cancel
        </span>
    </div>
</form>

<%--Pop-up refuse--%>
<form class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white py-5 px-10 hidden w-[700px] h-[600px] overflow-y-auto overflow-x-hidden"
      id="refuse-modal" action="res-rescue-request">
    <span class="block relative py-1 font-bold text-lg">Từ chối yêu cầu cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>
    <label class="mt-5">Mã yêu cầu cứu hộ: </label>
    <input
            class="font-medium outline-none res-request-id bg-transparent"
            name="refuseRescueRequestId"
            readonly/>
    <span class="block mt-1">Biển số xe: <span class="font-medium license-plate"></span></span>
    <span class="block mt-1">Vị trí: <span
            class="font-medium location"></span></span>
    <span class="block mt-1">Dịch vụ: <span class="font-medium service"></span></span>
    <span class="block mt-1 description-element">Mô tả:</span>
    <span class="block mt-1">Hình ảnh:
        <div class="image-element flex justify-between flex-wrap">

        </div>
    </span>
    <label for="refuse-reason" class="block mt-1">Lý do từ chối:</label>
    <textarea required="required" class="mt-1 w-full outline-none p-2 border border-black" name="refuseReason"
              id="refuse-reason" rows="5"
              placeholder="Nhập lý do từ chối yêu cầu cứu hộ (bắt buộc)"></textarea>
    <div class="mt-10 flex justify-end">
        <button class="mr-1 w-[100px] font-medium bg-blue-500 text-white py-2 border border-blue-500 hover:bg-white hover:text-blue-500 transition-all">
            OK
        </button>
        <span class="close-modal text-center cursor-pointer w-[100px] font-medium bg-red-500 text-white py-2 border border-red-500 hover:bg-white hover:text-red-500 transition-all">
            Cancel
        </span>
    </div>
</form>
<%-- Rescue Detail --%>
<div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] h-[600px] overflow-y-auto overflow-x-hidden hidden"
     id="rescue-detail-modal">
    <span class="block relative py-1 font-bold text-xl">Chi tiết yêu cầu cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

    <span class="block mt-1">Mã yêu cầu cứu hộ: <input class="font-medium" type="text" value="YCCH000001"></span>
    <span class="block mt-1">Tên khách hàng: <input class="font-medium" type="text"
                                                    value="Nguyễn Thọ Quang Vinh"></span>
    <span class="block mt-1">Biển số xe: <input class="font-medium" type="text" value="43K1 - 55236"></span>
    <span class="block mt-1">Thời gian yêu cầu: <span
            class="font-medium">07/06/2024 09:01:03</span></span>
    <span class="block mt-1">Vị trí: <input class="font-medium" type="text"
                                            value="X. Hòa Ninh, H. Hòa Vang, TP. Đà Nẵng"></span>
    <span class="block mt-1">Dịch vụ: <input class="font-medium" type="text"
                                             value="Cứu hộ lốp xe, Cung cấp nhiên liệu"></span>
    <span class="block mt-1">Mô tả:
            <textarea class="font-medium w-full outline-none border border-gray-300 p-4" rows="5"> - Xịt lốp xe (2 lỗ)
 - Hết xăng (Xăng 95)
            </textarea>
        </span>
    <span class="block mt-1">Hình ảnh:</span>
    <div class="flex justify-between">
        <img class="w-[300px] h-[200px] object-cover"
             src="https://www.zuttoride.vn/uploads/image/Nga/lop-xe-may-bi-hong.jpg" alt="">
        <img class="w-[300px] h-[200px] object-cover"
             src="https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2022-09/RJH9mLwkrC.jpg&w=1200&q=75"
             alt="">
    </div>
    <span class="block mt-1">Trạng thái: <span class="font-medium text-blue-500">Đã duyệt</span></span>
    <div class="flex justify-end mt-3">
        <span class="w-[120px] text-center font-medium cursor-pointer mr-1 transition-all bg-[#FFC326] text-white py-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326]">Chỉnh sửa</span>
        <button class="w-[120px] bg-[#0D99FF] font-medium text-white py-2 transition-all border border-[#0D99FF] hover:bg-white hover:text-[#0D99FF]">
            Lưu
        </button>
    </div>

    <h1 class="mt-10 mb-2 font-bold text-2xl text-center border-t border-t-gray-300 pt-3">ĐÁNH GIÁ CỦA KHÁCH HÀNG</h1>
    <div class="flex">
        <span class="mr-2 p-2 text-[#FFC326] font-medium w-[40px] h-[40px] text-center rounded-full border border-[#FFC326] cursor-pointer">NV</span>
        <div>
            <span class="font-medium">Nguyễn Thọ Quang Vinh</span>
            <div>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
                <i class="fa-solid fa-star text-[#FFC326]"></i>
            </div>
            <span>Dịch vụ tốt, tiếp ứng kịp thời, sửa nhanh chóng</span>
        </div>
    </div>
</div>
<script src="../../js/rescuer/mn_rescue_request.js"></script>
</body>
</html>

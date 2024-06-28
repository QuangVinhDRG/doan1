<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 06/06/2024
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - QL Dịch vụ cứu hộ</title>
</head>
<body>
<%@ include file="../../commons/header_admin.jsp" %>
<%@ include file="../../commons/sidebar_admin.jsp" %>
<%--        Cover--%>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-10 hidden" id="cover"></div>
<div class="inline-block w-[calc(100%-300px)] h-[calc(100%-70px)] overflow-y-auto overflow-x-hidden pt-10 pb-20">
    <div>
        <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">DỊCH VỤ CỨU HỘ CHỜ DUYỆT</span>
        <table class="w-[90%] mx-auto mt-6">
            <thead class="block pr-[17px] py-3 bg-gray-300">
            <tr class="table w-full ">
                <th class="w-[10%]">Mã đề nghị</th>
                <th class="w-[20%]">Tên dịch vụ</th>
                <th class="w-[15%]">Tên đơn vị cứu hộ</th>
                <th class="">Mô tả</th>
                <th class="w-[15%]">Hành động</th>
            </tr>
            </thead>
            <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
            <c:forEach var="item" items="${addNewServiceList}">
                <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                    <td class="tb-form-id py-3 w-[10%] border-b border-[#D4D4D4] border-collapse">${item.formId}</td>
                    <td class="tb-service-name text-left px-3 py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">${item.serviceName}</td>
                    <td class="tb-rescuer-name py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">${item.rescuerName}
                            <%--                        <span class="tb-rescuer-email hidden">${item.rescuerEmail}</span>--%>
                    </td>
                    <td class="tb-description text-left px-3 py-3 border-b border-[#D4D4D4] border-collapse">${item.description}</td>
                    <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                        <i class="approve-icon fa-solid fa-circle-check text-3xl text-[#339AF0] transition-all hover:brightness-125"></i>
                        <i class="refuse-icon fa-solid fa-circle-xmark text-3xl text-[#E53629] transition-all hover:brightness-125"></i>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <%--    Service list --%>
    <div class="mt-10 relative">
        <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">DỊCH VỤ CỨU HỘ</span>
        <button id="btn-add-service"
                class="bg-[#FFC326] text-white font-medium py-2 px-4 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] transition-all absolute right-[5%]">
            + Thêm dịch vụ
        </button>
        <table class="w-[90%] mx-auto mt-12">
            <thead class="block pr-[17px] py-3 bg-gray-300">
            <tr class="table w-full ">
                <th class="w-[10%]">Mã dịch vụ</th>
                <th class="w-[15%]">Tên dịch vụ</th>
                <th class="">Mô tả</th>
                <th class="w-[15%]">Hành động</th>
            </tr>
            </thead>
            <tbody class="block overflow-y-auto overflow-x-hidden h-[400px] w-full">
            <c:forEach var="item" items="${serviceList}">
                <tr class="text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                    <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse">${item.serviceId}</td>
                    <td class="py-3 px-3 text-left w-[15%] border-b border-[#D4D4D4] border-collapse">${item.serviceName}</td>
                    <td class="py-3 text-left border-b border-[#D4D4D4] border-collapse">${item.serviceDesc}</td>
                    <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">
                        <i class="edit-icon fa-solid fa-pen-to-square text-3xl hover:brightness-125 text-[#FFC326]"></i>
                            <%--                    <i class="fa-solid fa-lock text-3xl hover:brightness-125 text-red-500"></i>--%>
                        <i class="fa-solid fa-unlock text-3xl hover:brightness-125 text-green-500"></i>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <%-- Add service Modal --%>
        <div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] hidden"
             id="add-service-modal">
            <span class="block relative py-1 font-bold text-xl">Thêm mới dịch vụ cứu hộ<i
                    class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

            <form class="mt-3" method="get">
                <div>
                    <input type="text" placeholder="Tên dịch vụ"
                           class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none">
                    <textarea class="p-4 outline-none border border-gray-300 my-1 w-full h-[150px]" name=""
                              placeholder="Mô tả dịch vụ"></textarea>
                </div>
                <span class="block text-center text-white font-medium bg-[#339AF0] w-[100px] py-2 mt-2 border border-[#339AF0] hover:bg-white hover:text-[#339AF0] cursor-pointer transition-all">+ Thêm</span>
                <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[25px] right-[40px]">
                    Lưu
                </button>
            </form>
        </div>
        <%-- Update service Modal --%>
        <div class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white p-10 w-[700px] hidden"
             id="update-service-modal">
            <span class="block relative py-1 font-bold text-xl">Cập nhật dịch vụ cứu hộ<i
                    class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>

            <form class="mt-3" method="get">
                <div>
            <span class="py-2 px-4 bg-transparent border border-gray-300 outline-none block">Mã dịch vụ: <span
                    class="
                  font-medium">DVCH000001</span></span>
                    <input type="text" value="Kéo xe"
                           class="w-full py-2 px-4 bg-transparent border border-gray-300 outline-none mt-1">
                    <textarea class="p-4 outline-none border border-gray-300 my-1 w-full h-[150px]">Hỗ trợ kéo xe về garage, xưởng sửa chữa hoặc địa điểm khác khi xe gặp sự cố và không thể di chuyển tự do.</textarea>
                </div>
                <button class="block text-white font-medium bg-[#FFC326] w-[100px] py-2 ml-[25px] mt-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326] cursor-pointer transition-all absolute bottom-[10px] right-[40px]">
                    Lưu
                </button>
            </form>
        </div>
    </div>
</div>
<%--    Pop-up approve --%>
<form class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white py-5 px-10 hidden w-[700px]"
      id="approve-modal" action="admin-rescue-service">
    <span class="block relative py-1 font-bold text-lg">Xác nhận thêm dịch vụ cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>
    <label class="mt-5">Mã phiếu đề nghị thêm mới dịch vụ: </label>
    <input class="form-id font-medium outline-none" readonly name="approveFormId"/>
    <span class="block mt-1">Tên dịch vụ: <span class="font-medium service-name"></span></span>
    <span class="block mt-1">Tên đơn vị cứu hộ yêu cầu thêm mới: <span
            class="font-medium rescue-name"></span></span>
    <span class="block mt-1">Mô tả: <span class="font-medium description"></span></span>
    <div class="mt-10 flex justify-end">
        <button class="mr-1 w-[100px] font-medium bg-blue-500 text-white py-2 border border-blue-500 hover:bg-white hover:text-blue-500 transition-all">
            OK
        </button>
        <span class="close-modal text-center cursor-pointer w-[100px] font-medium bg-red-500 text-white py-2 border border-red-500 hover:bg-white hover:text-red-500 transition-all">
            Cancel
        </span>
    </div>
</form>

<%--    Pop-up refuse --%>
<form class="absolute z-20 top-1/2 -translate-y-1/2 left-1/2 -translate-x-1/2 bg-white py-5 px-10 hidden w-[700px]"
      id="refuse-modal" action="admin-rescue-service">
    <span class="block relative py-1 font-bold text-lg">Từ chối thêm dịch vụ cứu hộ<i
            class="close-modal fa-solid fa-xmark text-lg absolute right-0 text-red-500 cursor-pointer hover:bg-red-500 hover:text-white p-1 transition-all"></i></span>
    <label class="mt-5">Mã phiếu đề nghị thêm mới dịch vụ: </label>
    <input class="form-id font-medium outline-none" readonly name="refuseFormId"/>
    <span class="block mt-1">Tên dịch vụ: <span class="font-medium service-name"></span></span>
    <span class="block mt-1">Tên đơn vị cứu hộ yêu cầu thêm mới: <span
            class="font-medium rescue-name"></span></span>
    <span class="block mt-1">Mô tả: <span class="font-medium description"></span></span>
    <label for="refuse-reason" class="block mt-1">Lý do từ chối:</label>
    <textarea class="mt-1 w-full outline-none p-2 border border-black" required="required" name="refuseReason"
              id="refuse-reason" rows="5"
              placeholder="Nhập lý do từ chối yêu cầu thêm mới dịch vụ cứu hộ"></textarea>
    <div class="mt-10 flex justify-end">
        <button class="mr-1 w-[100px] font-medium bg-blue-500 text-white py-2 border border-blue-500 hover:bg-white hover:text-blue-500 transition-all">
            OK
        </button>
        <button class="close-modal w-[100px] font-medium bg-red-500 text-white py-2 border border-red-500 hover:bg-white hover:text-red-500 transition-all">
            Cancel
        </button>
    </div>
</form>
<script src="../../js/admin/mn_rescue_service.js"></script>
</body>
</html>

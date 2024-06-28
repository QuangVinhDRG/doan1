<%--
  Created by IntelliJ IDEA.
  User: Quang Vinh LocalAcc
  Date: 05/06/2024
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../commons/taglib.jsp" %>
<html>
<head>
    <title>R.A Da Nang - Dịch vụ cứu hộ</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/0ffcf7ce43.js" crossorigin="anonymous"></script>
</head>
<body class="relative" id="rescue-service-body">
<c:if test="${signedIn}">
    <%@include file="../../commons/header_web_signed_in.jsp" %>
</c:if>
<c:if test="${!signedIn}">
    <%@include file="../../commons/header_web.jsp" %>
</c:if>
<div class="absolute bg-black/50 top-0 left-0 right-0 bottom-0 z-20 hidden" id="cover"></div>
<%-- Request Information --%>
<div class="relative z-0 bg-[url('../../images/bg_rescue_service.png')] bg-no-repeat bg-top bg-cover before:content-[''] before:w-full before:h-full before:absolute before:bg-black/75 before:z-10">
    <div class="relative z-20 pt-10 pb-20 px-20">
        <form method="get">
            <span class="text-[40px] font-bold block text-center text-white">THÔNG TIN YÊU CẦU CỨU HỘ</span>
            <div>
                <span class="text-2xl text-white font-bold mb-4 block">Thông tin xe</span>
                <div class="flex">
                    <div class="flex flex-col justify-between w-1/3">
                        <input class="bg-transparent outline-none border border-gray-400 px-5 py-4 w-full text-white"
                               type="text"
                               placeholder="Loại xe (VD: Xe máy)">
                        <input class="bg-transparent outline-none border border-gray-400 px-5 py-4 w-full text-white"
                               type="text" placeholder="Biển số xe">
                    </div>
                    <textarea class="ml-1 w-2/3 p-3 bg-transparent border border-gray-400 outline-none text-white"
                              rows="4"
                              placeholder="Vị trí xảy ra sự cố"></textarea>
                </div>
            </div>
            <div class="mt-10">
                <span class="text-2xl text-white font-bold mb-4 block">Dịch vụ cứu hộ</span>
                <div class="flex">
                    <div class="flex flex-col justify-between w-1/3">
                        <select class="bg-transparent outline-none border border-gray-400 px-5 py-4 w-full text-white cursor-pointer"
                                name="" id="">
                            <option class="text-black" value="">Thay lốp</option>
                            <option class="text-black" value="">Đổ xăng</option>
                            <option class="text-black" value="">Thay nhớt</option>
                        </select>
                        <label class="bg-transparent outline-none border border-gray-400 px-5 py-4 w-full text-white cursor-pointer "
                               for="image-file">
                            <i class="fa-solid fa-cloud-arrow-up"></i>
                            Tải ảnh lên
                        </label>
                        <input class="hidden"
                               type="file" accept="image/*" alt="" id="image-file">
                    </div>
                    <textarea class="ml-1 w-2/3 p-3 bg-transparent border border-gray-400 outline-none text-white"
                              rows="4" placeholder="Mô tả sự cố"></textarea>
                </div>
            </div>
            <span class="w-[150px] py-3 mt-2 inline-block bg-[#000000] text-center text-white font-bold cursor-pointer hover:bg-white hover:text-[#000000] transition-all">+ Thêm dịch vụ</span>
            <button class="absolute bottom-6 right-20 w-[150px] py-3 inline-block bg-[#FFC326] text-center text-white font-bold rounded-full cursor-pointer hover:bg-white hover:text-[#FFC326] transition-all">
                Gửi yêu cầu
            </button>
        </form>
    </div>
</div>

<%-- Request History --%>
<div class="mt-10 pt-10 pb-20 relative">
    <span class="text-[40px] font-bold block text-center relative after:content-[''] after:w-[200px] after:h-[3px] after:bg-[#FFC326] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2">LỊCH SỬ YÊU CẦU CỨU HỘ</span>
    <div class="flex justify-center items-center my-8">
        <div>
            <label class="font-medium" for="license-plates">Biển số xe: </label>
            <select class="relative border border-gray-400 px-2 py-1 cursor-pointer outline-none"
                    name=""
                    id="license-plates">
                <option value="">Tất cả</option>
                <option value="">43A - 55555</option>
                <option value="">43A - 55555</option>
                <option value="">43A - 55555</option>
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
        <c:forEach var="i" begin="1" end="9">
            <tr class="data-row text-center table w-full bg-[#F8FAFA] cursor-pointer hover:bg-gray-200">
                <td class="py-3 w-[10%] border-b border-[#D4D4D4] border-collapse"><c:out value="YCCH0${i}"/></td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">43A - 55555</td>
                <td class="py-3 w-[20%] border-b border-[#D4D4D4] border-collapse">03/06/2024 - 09:00:00</td>
                <td class="py-3 border-b border-[#D4D4D4] border-collapse">48 Cao Thắng, P. Thanh Bình, Q. Hải Châu</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Vá lốp xe</td>
                <td class="py-3 w-[15%] border-b border-[#D4D4D4] border-collapse">Đã hoàn thành</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%-- Modal Detail Rescue --%>
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
        <span class="block mt-1">Trạng thái: <span class="font-medium text-purple-500">Đang chờ duyệt</span></span>
        <div>

            <div class="flex justify-end mt-3">
                <button class="w-[120px] mr-1 bg-[#0D99FF] font-medium text-white py-2 transition-all border border-[#0D99FF] hover:bg-white hover:text-[#0D99FF]">
                    Lưu
                </button>
                <button class="w-[120px] bg-red-500 font-medium text-white py-2 transition-all border border-red-500 hover:bg-white hover:text-red-500">
                    Hủy yêu cầu
                </button>
            </div>
        </div>

        <h1 class="mt-10 mb-2 font-bold text-2xl text-center border-t border-t-gray-300 pt-3">ĐÁNH GIÁ CỦA KHÁCH
            HÀNG</h1>
        <div class="flex">
            <span class="mr-2 p-2 text-[#FFC326] font-medium w-[40px] h-[40px] text-center rounded-full border border-[#FFC326] cursor-pointer">NV</span>
            <div>
                <span class="font-medium">Nguyễn Thọ Quang Vinh</span>
                <div>
                    <i class="fa-regular fa-star text-[#FFC326]"></i>
                    <i class="fa-regular fa-star text-[#FFC326]"></i>
                    <i class="fa-regular fa-star text-[#FFC326]"></i>
                    <i class="fa-regular fa-star text-[#FFC326]"></i>
                    <i class="fa-regular fa-star text-[#FFC326]"></i>
                </div>
                <textarea class="outline-none border border-gray-300 p-2 my-2" name="" cols="70" rows="5"
                          placeholder="Nhập đánh giá..."></textarea>
                <button class="w-[120px] text-center font-medium cursor-pointer mr-1 transition-all bg-[#FFC326] text-white py-2 border border-[#FFC326] hover:bg-white hover:text-[#FFC326]">
                    Gửi
                </button>
            </div>
        </div>
    </div>
</div>
<%@include file="../../commons/footer_web.jsp" %>
<script src="../../js/web/rescue_service.js"></script>
</body>
</html>

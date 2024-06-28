const approveModalElement = document.getElementById("approve-modal");
const coverElement = document.getElementById("cover");
const refuseModalElement = document.getElementById("refuse-modal");
const tableResReqIds = document.getElementsByClassName("tb-rescue-request-id");
const tableLicensePlates = document.getElementsByClassName("tb-license-plate");
const tableLocations = document.getElementsByClassName("tb-location");
const tableServices = document.getElementsByClassName("tb-service");
const rescueDetailModal = document.getElementById("rescue-detail-modal");
let approveIcons = document.getElementsByClassName("approve-icon");
let refuseIcons = document.getElementsByClassName("refuse-icon");
let closeModalElements = document.getElementsByClassName("close-modal");
let resReqIds = document.getElementsByClassName("res-request-id");
let licensePlates = document.getElementsByClassName("license-plate");
let locations = document.getElementsByClassName("location");
let services = document.getElementsByClassName("service");
let tableImages = document.getElementsByClassName("tb-image");
let imageElements = document.getElementsByClassName("image-element");
let rescueHistoryStatus = document.getElementsByClassName("rescue-history-status");
let descriptionElements = document.getElementsByClassName("description-element");
let tableDescriptions = document.getElementsByClassName("tb-description");
let dataRows = document.getElementsByClassName("data-row");

function removeElementsByClass(className) {
    const elements = document.getElementsByClassName(className);
    while (elements.length > 0) {
        elements[0].parentNode.removeChild(elements[0]);
    }
}

for (let i = 0; i < approveIcons.length; i++) {
    approveIcons[i].addEventListener("click", (event) => {
        approveModalElement.classList.remove("hidden");
        coverElement.classList.remove("hidden");
        resReqIds[0].setAttribute("value", tableResReqIds[i].innerText);
        licensePlates[0].innerText = tableLicensePlates[i].innerText;
        locations[0].innerText = tableLocations[i].innerText;
        services[0].innerText = tableServices[i].innerText;
        let numOfImage = tableImages[i].getElementsByClassName("image").length;
        removeElementsByClass("vehicle-image");
        for (let j = 0; j < numOfImage; j++) {
            let imageElement = document.createElement("img");
            let srcImg = tableImages[i].getElementsByClassName("image")[j].getAttribute("src");
            imageElement.setAttribute("src", srcImg);
            imageElement.setAttribute("style", "width: 300px; height: 200px; object-fit: cover");
            imageElement.classList.add("vehicle-image");
            imageElements[0].appendChild(imageElement);
        }
        let numOfDesc = tableDescriptions[i].getElementsByClassName("description").length;
        removeElementsByClass("vehicle-description");
        for (let j = 0; j < numOfDesc; j++) {
            let descriptionElement = document.createElement("span");
            descriptionElement.innerText = tableDescriptions[i].getElementsByClassName("description")[j].innerText;
            descriptionElement.setAttribute("style", "display: block; font-weight: 500; margin-left: 5px")
            descriptionElement.classList.add("vehicle-description");
            descriptionElements[0].appendChild(descriptionElement);
        }
    })
}

for (let i = 0; i < refuseIcons.length; i++) {
    refuseIcons[i].addEventListener("click", (event) => {
        refuseModalElement.classList.remove("hidden");
        coverElement.classList.remove("hidden");
        resReqIds[1].setAttribute("value", tableResReqIds[i].innerText);
        licensePlates[1].innerText = tableLicensePlates[i].innerText;
        locations[1].innerText = tableLocations[i].innerText;
        services[1].innerText = tableServices[i].innerText;
        let numOfImage = tableImages[i].getElementsByClassName("image").length;
        removeElementsByClass("vehicle-image");
        for (let j = 0; j < numOfImage; j++) {
            let imageElement = document.createElement("img");
            let srcImg = tableImages[i].getElementsByClassName("image")[j].getAttribute("src");
            imageElement.setAttribute("src", srcImg);
            imageElement.setAttribute("style", "width: 300px; height: 200px; object-fit: cover");
            imageElement.classList.add("vehicle-image");
            imageElements[1].appendChild(imageElement);
        }
        let numOfDesc = tableDescriptions[i].getElementsByClassName("description").length;
        removeElementsByClass("vehicle-description");
        for (let j = 0; j < numOfDesc; j++) {
            let descriptionElement = document.createElement("span");
            descriptionElement.innerText = tableDescriptions[i].getElementsByClassName("description")[j].innerText;
            descriptionElement.setAttribute("style", "display: block; font-weight: 500; margin-left: 5px")
            descriptionElement.classList.add("vehicle-description");
            descriptionElements[1].appendChild(descriptionElement);
        }
    })
}

for (let i = 0; i < closeModalElements.length; i++) {
    closeModalElements[i].addEventListener("click", (event) => {
        approveModalElement.classList.add("hidden");
        refuseModalElement.classList.add("hidden");
        coverElement.classList.add("hidden");
        rescueDetailModal.classList.add("hidden")
    })
}

for (let i = 0; i < rescueHistoryStatus.length; i++) {
    if (rescueHistoryStatus[i].innerText === "Đã duyệt") {
        rescueHistoryStatus[i].classList.add("text-blue-500");
    } else if (rescueHistoryStatus[i].innerText === "Đã từ chối") {
        rescueHistoryStatus[i].classList.add("text-red-500");
    } else if (rescueHistoryStatus[i].innerText === "Đã hoàn thành") {
        rescueHistoryStatus[i].classList.add("text-green-500");
    }
}

for (let i = 0; i < dataRows.length; i++) {
    dataRows[i].addEventListener("click", () => {
        rescueDetailModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
    })
}
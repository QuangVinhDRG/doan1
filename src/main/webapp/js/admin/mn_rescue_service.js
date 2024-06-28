const approveModalElement = document.getElementById("approve-modal");
const coverElement = document.getElementById("cover");
const refuseModalElement = document.getElementById("refuse-modal");
const addServiceModal = document.getElementById("add-service-modal")
const btnAddService = document.getElementById("btn-add-service")
const updateServiceModal = document.getElementById("update-service-modal")
let approveIcons = document.getElementsByClassName("approve-icon");
let refuseIcons = document.getElementsByClassName("refuse-icon");
let closeModalElements = document.getElementsByClassName("close-modal");
let tbFormIds = document.getElementsByClassName("tb-form-id");
let tbServiceNames = document.getElementsByClassName("tb-service-name");
let tbRescueNames = document.getElementsByClassName("tb-rescuer-name");
let tbDescriptions = document.getElementsByClassName("tb-description");
let formIds = document.getElementsByClassName("form-id");
let serviceNames = document.getElementsByClassName("service-name");
let rescueNames = document.getElementsByClassName("rescue-name");
let descriptions = document.getElementsByClassName("description");
let editIcons = document.getElementsByClassName("edit-icon")


for (let i = 0; i < approveIcons.length; i++) {
    approveIcons[i].addEventListener("click", (event) => {
        approveModalElement.classList.remove("hidden");
        coverElement.classList.remove("hidden");
        formIds[0].setAttribute("value", tbFormIds[i].innerText);
        serviceNames[0].innerText = tbServiceNames[i].innerText;
        rescueNames[0].innerText = tbRescueNames[i].innerText;
        descriptions[0].innerText = tbDescriptions[i].innerText;
    })
}

for (let i = 0; i < refuseIcons.length; i++) {
    refuseIcons[i].addEventListener("click", (event) => {
        refuseModalElement.classList.remove("hidden");
        coverElement.classList.remove("hidden");
        formIds[1].setAttribute("value", tbFormIds[i].innerText);
        serviceNames[1].innerText = tbServiceNames[i].innerText;
        rescueNames[1].innerText = tbRescueNames[i].innerText;
        descriptions[1].innerText = tbDescriptions[i].innerText;
    })
}

for (let i = 0; i < closeModalElements.length; i++) {
    closeModalElements[i].addEventListener("click", (event) => {
        approveModalElement.classList.add("hidden");
        refuseModalElement.classList.add("hidden");
        coverElement.classList.add("hidden");
        addServiceModal.classList.add("hidden")
        updateServiceModal.classList.add("hidden")
    })
}

btnAddService.addEventListener("click", () => {
    addServiceModal.classList.remove("hidden")
    coverElement.classList.remove("hidden")
})

for (let i = 0; i < editIcons.length; i++) {
    editIcons[i].addEventListener("click", () => {
        updateServiceModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
    })
}
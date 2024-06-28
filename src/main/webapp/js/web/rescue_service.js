const coverElement = document.getElementById("cover")
const rescueDetailModal = document.getElementById("rescue-detail-modal")
let dataRows = document.getElementsByClassName("data-row")
let closeModalElements = document.getElementsByClassName("close-modal")
const bodyElement = document.getElementById("rescue-service-body")

for (let i = 0; i < dataRows.length; i++) {
    dataRows[i].addEventListener("click", () => {
        rescueDetailModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
        bodyElement.classList.add("overflow-hidden")
    })
}

for (let i = 0; i < closeModalElements.length; i++) {
    closeModalElements[i].addEventListener("click", () => {
        rescueDetailModal.classList.add("hidden")
        coverElement.classList.add("hidden")
        bodyElement.classList.remove("overflow-hidden")
    })
}
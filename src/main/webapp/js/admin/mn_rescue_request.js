const coverElement = document.getElementById("cover")
const rescueDetailModal = document.getElementById("rescue-detail-modal")
let dataRows = document.getElementsByClassName("data-row")
let closeModalElements = document.getElementsByClassName("close-modal")

for (let i = 0; i < dataRows.length; i++) {
    dataRows[i].addEventListener("click", () => {
        rescueDetailModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
    })
}

for (let i = 0; i < closeModalElements.length; i++) {
    closeModalElements[i].addEventListener("click", () => {
        rescueDetailModal.classList.add("hidden")
        coverElement.classList.add("hidden")
    })
}
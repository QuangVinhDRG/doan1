const btnAddPackage = document.getElementById("btn-add-package");
const coverElement = document.getElementById("cover")
const addPackageModal = document.getElementById("add-package-modal")
const updatePackageModal = document.getElementById("update-package-modal")
let closeModalElements = document.getElementsByClassName("close-modal")
let editIcons = document.getElementsByClassName("edit-icon")

btnAddPackage.addEventListener("click", () => {
    addPackageModal.classList.remove("hidden")
    coverElement.classList.remove("hidden")
})

for (i = 0; i < closeModalElements.length; i++) {
    closeModalElements[i].addEventListener("click", () => {
        addPackageModal.classList.add("hidden")
        coverElement.classList.add("hidden")
        updatePackageModal.classList.add("hidden")
    })
}

for (i = 0; i < editIcons.length; i++) {
    editIcons[i].addEventListener("click", () => {
        updatePackageModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
    })
}
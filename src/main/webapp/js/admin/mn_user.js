const btnAddUser = document.getElementById("btn-add-user")
const addUserModal = document.getElementById("add-user-modal")
const coverElement = document.getElementById("cover")
const updateUserModal = document.getElementById("update-user-modal")
let closeModals = document.getElementsByClassName("close-modal")
let editIcons = document.getElementsByClassName("edit-icon")

btnAddUser.addEventListener("click", () => {
    addUserModal.classList.remove("hidden")
    coverElement.classList.remove("hidden")
})

for (let i = 0; i < closeModals.length; i++) {
    closeModals[i].addEventListener("click", () => {
        addUserModal.classList.add("hidden")
        coverElement.classList.add("hidden")
        updateUserModal.classList.add("hidden")
    })
}

for (let i = 0; i < editIcons.length; i++) {
    editIcons[i].addEventListener("click", () => {
        updateUserModal.classList.remove("hidden")
        coverElement.classList.remove("hidden")
    })
}


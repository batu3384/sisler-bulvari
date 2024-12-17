// Aktif sekmeyi belirleme
document.addEventListener("DOMContentLoaded", () => {
    const links = document.querySelectorAll(".sidebar a");
    const currentPath = window.location.pathname;

    links.forEach(link => {
        if (link.href.includes(currentPath)) {
            link.classList.add("active");
        } else {
            link.classList.remove("active");
        }
    });
});

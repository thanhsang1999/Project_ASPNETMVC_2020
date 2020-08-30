$(".custom-file-input").on("change", function () {
    var fileName = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});

function uppercase() {
    document.getElementById("ten-thuong-hieu").value = document.getElementById("ten-thuong-hieu").value.toUpperCase();
}
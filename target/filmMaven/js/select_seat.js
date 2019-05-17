function proceed() {
    if (recalculateTotal(sc) > 0) {
        $.ajax({
            url: window.location.href,
            method: 'POST',
            data: {
                show_id: show_id,
                selectedList_JSON: JSON.stringify(sc)
            },
            success: function (data) {
                if (data == "succeed") {
                    window.location.href = '/payment'
                }
                else {
                    if (data == "SeatChosenError") {
                        $("#errorMessage").text("Some of chosen seats have been booked just now");
                        nextURL = null;
                    }
                    else if (data == "LoginError") {
                        $("#errorMessage").text("Please login before booking");
                        nextURL = '/login';
                    }
                    $("#seat_taken").modal('show');
                }
            }
        });
    }
    else {
        $("#no_selected").modal("show");
    }
}
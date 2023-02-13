function get_user_memories(link, page=0) {
    // Get existing params if user requests a page number of the same filter
    // Else request a new filter and reset page indices
    var params;
    if (page > 0) {
        params = new URL(window.location.href).searchParams;
        params.set("page", page);
    } 
    // Replace the memory list section
    $.ajax({
        url: link,
        data: params.toString(),
        context: document.body,
        dataType: "html",
        method: "GET",
        success: function(response) {
            window.history.replaceState(window.history.state, "", link + "?" + params.toString());
            var new_section = $($.parseHTML(response)).filter("#memory-list-section");
            $("#memory-list-section").replaceWith(new_section);
        },
        error: function () {
            $("#general_alert").show();
            setTimeout(function () {
                $("#general_alert").hide();
            }, 5000);
        }
    })
}

$(function () {
    $(document).on('click', '.alert-close', function () {
        $(this).parent().hide();
    });

    // Set a timeout close event for message alerts after redirection
    var message_alert = $("#message_alert");
    if (message_alert) {
        setTimeout(function () {
            message_alert.alert("close");
        }, 5000);
    }
});
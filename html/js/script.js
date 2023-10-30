// const ResourceName = GetCurrentResourceName();
const ResourceName = 'M2.Progress';
$('document').ready(function() {

    MythicProgBar = {};

    MythicProgBar.Progress = function(data) {
        $(".progress-container").css({ "display": "block" });
        if (data.image != null || data.image != undefined || data.image != "") {
            $(".progress-bar-icon").css({"display":"flex"});
            $("#image").attr("src", data.image);
        } else {
            $(".progress-bar-icon").css({"display":"none"});
            $("#image").attr("src", "https://media3.giphy.com/media/WFZvB7VIXBgiz3oDXE/200w.webp");
        }
        $("#progress-label").html(`<span class="material-symbols-rounded">${data.icon}</span>${data.label}`);
        $("#progress-bar").stop().css({"width": 0, "background-color": data.color}).animate({
          width: '100%'
        }, {
          duration: parseInt(data.duration),
          complete: function() {
            $(".progress-container").css({"display":"none"});
            $("#progress-bar").css("width", 0);
            $.post(`https://${ResourceName}/actionFinish`, JSON.stringify({}));
          }
        });
    };

    MythicProgBar.ProgressCancel = function() {
        $(".progress-container").css({ "display": "block" });
        $("#progress-label").html(`<span class="material-symbols-rounded">block</span>ยกเลิกการทำงาน`);
        $("#progress-bar").stop().css( {"width": "100%", "background-color": "#d44949"});
        $("#image").attr("src", "https://media1.giphy.com/media/UXJ2WE5n48JVrKQ2Q4/giphy.webp");

        setTimeout(function () {
            $(".progress-container").css({"display":"none"});
            $("#progress-bar").css("width", 0);
            $.post(`https://${ResourceName}/actionCancel`, JSON.stringify({}));
        }, 1000);
    };

    MythicProgBar.CloseUI = function() {
        $('.main-container').css({"display":"none"});
        $(".character-box").removeClass('active-char');
        $(".character-box").attr("data-ischar", "false")
        $("#delete").css({"display":"none"});
    };
    
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case 'mythic_progress':
                MythicProgBar.Progress(event.data);
                break;
            case 'mythic_progress_cancel':
                MythicProgBar.ProgressCancel();
                break;
        }
    })
});
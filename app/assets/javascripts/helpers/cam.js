function take_snapshot(){
    Webcam.snap(function(data_uri) {
        id = $('[id*="_image"]');

        if (id.length) id.val(data_uri);

        $("#results").attr("src", data_uri);
    });
}

$(document).ready(function() {
    if ($("#my_camera").length) {
        Webcam.set({
            width: 250,
            height: 187,
            image_format: 'jpeg',
            jpeg_quality: 100
        });

        Webcam.attach('#my_camera');
    }
});

function take_snapshot(){
    Webcam.snap(function(data_uri) {
        id = $('[id*="_image"]');

        if (id.length) {
            id.val(data_uri);
        }

        document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
    });
}
$(document).ready(function() {
    if ($("#my_camera").length) {
        Webcam.set({
            width: 240,
            height: 200,
            image_format: 'jpeg',
            jpeg_quality: 100
        });

        Webcam.attach('#my_camera');
    }
});

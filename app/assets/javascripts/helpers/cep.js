function loadCEP(){
    var cep = $("#patient_zip_code").val();

    if (cep.length >= 8 && cep.length <= 9)
        $.getJSON('/patients/find_address/' + cep + '.json',
            function (data) {
                ids = {
                    patient_address: data.tipo_logradouro + ' ' + data.logradouro,
                    patient_district: data.bairro,
                    patient_city: data.cidade,
                    patient_state: data.uf
                };

                $.each(ids, function(key, value) {
                    $("#" + key).val(value).addClass('valid');
                    $('label[for='+ key +']').addClass('active');
                });
            }
        );
}

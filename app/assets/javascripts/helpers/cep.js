function loadCEP(){
    var cep = $("#patient_zip_code").val();

    $.getJSON('/patients/find_address/' + cep + '.json',
        function (data) {
            $("#patient_address").val(data.tipo_logradouro + ' ' + data.logradouro);
            $("#patient_district").val(data.bairro);
            $("#patient_city").val(data.cidade);
            $("#patient_state").val(data.uf);
        }
    );
}

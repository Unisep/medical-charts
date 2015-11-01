module CustomizedInputs
  class DateTimePickerInput < SimpleForm::Inputs::Base
    include OptionsConverter

    def input(_wrapper_options)
      @builder.text_field(attribute_name, input_html_options)
    end

    private

    def input_html_options
      value = @builder.object.send attribute_name
      value = I18n.l value.to_datetime, format: :pickdatetime if value.present?

      convert_html_options super_options: super,
                           options: {
                               data: {
                                   mask_format: I18n.t('simple_form.mask.datetime.format'),
                               }, class: 'mask',
                               value: value
                           }
    end
  end
end

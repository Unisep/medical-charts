module CustomizedInputs
  class DatePickerInput < SimpleForm::Inputs::Base
    include OptionsConverter

    def input(_wrapper_options)
      @builder.text_field(attribute_name, input_html_options)
    end

    private

    def input_html_options
      value = @builder.object.send attribute_name
      value = I18n.localize value.to_date, format: :default if value.present?

      convert_html_options super_options: super,
                           options: {
                               data: {
                                   mask_format: I18n.t('simple_form.mask.date.format'),
                               }, class: 'mask',
                               value: value
                           }
    end
  end
end

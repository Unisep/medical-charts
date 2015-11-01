module CustomizedInputs
  class ZipCodeInput < SimpleForm::Inputs::Base
    include OptionsConverter

    def input(_wrapper_options)
      @builder.text_field(attribute_name, input_html_options)
    end

    private

    def input_html_options
      convert_html_options(
        super_options: super,
        options: {
          data: { mask: I18n.t('simple_form.mask.zipcode.format') },
          class: 'validate mask-zipcode'
        }
      )
    end
  end
end

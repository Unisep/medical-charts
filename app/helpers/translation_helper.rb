module TranslationHelper

  def translate_model_name(model, count = 1)
    model.model_name.human(count: count)
  end

  def translate_model_name_pluralized(model)
    translate_model_name(model, count = 2)
  end

  def translate_model_attribute(model, attribute, count = 1)
    model.human_attribute_name(attribute, count: count)
  end

  alias_method :tm, :translate_model_name
  alias_method :tmp, :translate_model_name_pluralized
  alias_method :ta, :translate_model_attribute
end


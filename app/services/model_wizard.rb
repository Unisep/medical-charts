class ModelWizard
  attr_reader :object

  def initialize(object_or_class, session, params = nil, param_key = nil)
    @object_or_class, @session, @params = object_or_class, session, params
    @param_key = param_key || ActiveModel::Naming.param_key(object_or_class)
    @session_params = "#{@param_key}_params".to_sym
  end

  def start
    @session[@session_params] = {}
    set_object
    @object.current_step = 1
  end

  def process
    @session[@session_params].deep_merge!(@params) if @params
    set_object
    @object.assign_attributes(@session[@session_params]) unless class?
  end

  def save
    binding.pry
    if @params[:back_button]
      binding.pry
      @object.step_back
    elsif @object.current_step_valid?
      binding.pry
      return process_save
    end
    false
  end

  private

  def set_object
    @object = class? ? @object_or_class.new(@session[@session_params]): @object_or_class
  end

  def class?
    @object_or_class.is_a?(Class)
  end

  def process_save
    binding.pry
    if @object.last_step?
      binding.pry
      if @object.all_steps_valid?
        binding.pry
        success = @object.save
        @session[@session_params] = nil
        return success
      end
    else
      binding.pry
      @object.step_forward
    end
    false
  end

end

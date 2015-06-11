<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  before_action :set_<%= file_name %>, only: [:show, :edit, :update, :destroy]

  def index
    @<%= table_name %> = <%= orm_class.all(class_name) %>
    respond_with(@<%= table_name %>)
  end

  def show
    respond_with(@<%= file_name %>)
  end

  def new
    @<%= file_name %> = <%= orm_class.build(class_name) %>
    respond_with(@<%= file_name %>)
  end

  def edit
  end

  def create
    @<%= file_name %> = <%= orm_class.build(class_name, "#{file_name}_params") %>
    @<%= orm_instance.save %>
    respond_with(@<%= file_name %>, location: <%= index_helper %>_path)
  end

  def update
    @<%= orm_instance.update("#{file_name}_params") %>
    respond_with(@<%= file_name %>, location: <%= index_helper %>_path)
  end

  def destroy
    @<%= orm_instance.destroy %>
    respond_with(@<%= file_name %>, location: <%= index_helper %>_path)
  end

  private

  def set_<%= file_name %>
    @<%= file_name %> = <%= orm_class.find(class_name, "params[:id]") %>
  end

  def <%= "#{file_name}_params" %>
    params.require(:<%= file_name %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
  end
end
<% end -%>
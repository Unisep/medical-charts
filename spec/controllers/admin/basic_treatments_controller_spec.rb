require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::BasicTreatmentsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # BasicTreatment. As you add validations to BasicTreatment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::BasicTreatmentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_basic_treatments as @admin_basic_treatments" do
      basic_treatment = BasicTreatment.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:admin_basic_treatments)).to eq([basic_treatment])
    end
  end

  describe "GET show" do
    it "assigns the requested basic_treatment as @basic_treatment" do
      basic_treatment = BasicTreatment.create! valid_attributes
      get :show, {:id => basic_treatment.to_param}, valid_session
      expect(assigns(:basic_treatment)).to eq(basic_treatment)
    end
  end

  describe "GET new" do
    it "assigns a new basic_treatment as @basic_treatment" do
      get :new, {}

      expect(assigns(:basic_treatment)).to be_a_new(BasicTreatment)
    end
  end

  describe "GET edit" do
    it "assigns the requested basic_treatment as @basic_treatment" do
      basic_treatment = BasicTreatment.create! valid_attributes
      get :edit, {:id => basic_treatment.to_param}, valid_session
      expect(assigns(:basic_treatment)).to eq(basic_treatment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BasicTreatment" do
        expect {
          post :create, {:basic_treatment => valid_attributes}, valid_session
        }.to change(BasicTreatment, :count).by(1)
      end

      it "assigns a newly created basic_treatment as @basic_treatment" do
        post :create, {:basic_treatment => valid_attributes}, valid_session
        expect(assigns(:basic_treatment)).to be_a(BasicTreatment)
        expect(assigns(:basic_treatment)).to be_persisted
      end

      it "redirects to the created basic_treatment" do
        post :create, {:basic_treatment => valid_attributes}, valid_session
        expect(response).to redirect_to(BasicTreatment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved basic_treatment as @basic_treatment" do
        post :create, {:basic_treatment => invalid_attributes}, valid_session
        expect(assigns(:basic_treatment)).to be_a_new(BasicTreatment)
      end

      it "re-renders the 'new' template" do
        post :create, {:basic_treatment => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested basic_treatment" do
        basic_treatment = BasicTreatment.create! valid_attributes
        put :update, {:id => basic_treatment.to_param, :basic_treatment => new_attributes}, valid_session
        basic_treatment.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested basic_treatment as @basic_treatment" do
        basic_treatment = BasicTreatment.create! valid_attributes
        put :update, {:id => basic_treatment.to_param, :basic_treatment => valid_attributes}, valid_session
        expect(assigns(:basic_treatment)).to eq(basic_treatment)
      end

      it "redirects to the basic_treatment" do
        basic_treatment = BasicTreatment.create! valid_attributes
        put :update, {:id => basic_treatment.to_param, :basic_treatment => valid_attributes}, valid_session
        expect(response).to redirect_to(basic_treatment)
      end
    end

    describe "with invalid params" do
      it "assigns the basic_treatment as @basic_treatment" do
        basic_treatment = BasicTreatment.create! valid_attributes
        put :update, {:id => basic_treatment.to_param, :basic_treatment => invalid_attributes}, valid_session
        expect(assigns(:basic_treatment)).to eq(basic_treatment)
      end

      it "re-renders the 'edit' template" do
        basic_treatment = BasicTreatment.create! valid_attributes
        put :update, {:id => basic_treatment.to_param, :basic_treatment => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested basic_treatment" do
      basic_treatment = BasicTreatment.create! valid_attributes
      expect {
        delete :destroy, {:id => basic_treatment.to_param}, valid_session
      }.to change(BasicTreatment, :count).by(-1)
    end

    it "redirects to the admin_basic_treatments list" do
      basic_treatment = BasicTreatment.create! valid_attributes
      delete :destroy, {:id => basic_treatment.to_param}, valid_session
      expect(response).to redirect_to(admin_basic_treatments_url)
    end
  end

end

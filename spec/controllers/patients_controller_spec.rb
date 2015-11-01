require 'rails_helper'

RSpec.xdescribe PatientsController, type: :controller do
  render_views

  let(:valid_attributes) { attributes_for(:patient_with_treatments) }
  let(:invalid_attributes) { attributes_for(:invalid_patient) }

  describe 'GET #index' do
    it 'assigns all patients as @patients' do
      patient = create :patient

      get :index

      expect(assigns(:patients)).to include(patient)
    end
  end

  describe 'GET #show' do
    it 'assigns the requested patient as @patient' do
      patient = create :patient

      get :show, { id: patient.to_param }

      expect(assigns(:patient)).to eq(patient)
    end
  end

  describe 'GET #new' do
    it 'assigns a new patient as @patient' do
      get :new

      expect(assigns(:patient)).to be_a_new(Patient)
    end

    it 'need to render the first step' do
      get :new

      expect(response).to render_template(partial: 'patients/steps/_page1')
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested patient as @patient' do
      patient = create :patient

      get :edit, { id: patient.to_param }

      expect(assigns(:patient)).to eq(patient)
    end
  end

  describe 'POST #create' do
    describe 'with valid params' do
      it 'creates a new Patient' do
        expect {
          post :create, { patient: valid_attributes }
        }.to change(Patient, :count).by(1)
      end

      it 'assigns a newly created patient as @patient' do
        post :create, patient: valid_attributes

        expect(assigns(:patient)).to be_a(Patient)
        expect(assigns(:patient)).to be_persisted
      end

      it 'redirects to the created patient' do
        post :create, { patient: valid_attributes }

        expect(response).to redirect_to(patients_url)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved patient as @patient' do
        post :create, { patient: invalid_attributes }

        expect(assigns(:patient)).to be_a_new(Patient)
      end

      it "re-renders the 'new' template" do
        post :create, { patient: invalid_attributes }

        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    after do
      Rails.application.load_seed
    end

    describe 'with valid params' do
      let(:new_attributes) { attributes_for(:patient_with_treatments) }

      it 'updates the requested patient' do
        patient = create :patient

        put :update, {:id => patient.to_param, :patient => new_attributes}
        patient.reload

        skip('Add assertions for updated state')
      end

      it 'assigns the requested patient as @patient' do
        patient = create :patient

        put :update, {id: patient.to_param, patient: valid_attributes}

        expect(assigns(:patient)).to eq(patient)
      end

      it 'redirects to the patient' do
        patient = create :patient

        put :update, {id: patient.to_param, patient: valid_attributes}

        expect(response).to redirect_to(patients_url)
      end
    end

    describe 'with invalid params' do
      it 'assigns the patient as @patient' do
        patient = create :patient

        put :update, {id: patient.to_param, patient: invalid_attributes}

        expect(assigns(:patient)).to eq(patient)
      end

      it "re-renders the 'edit' template" do
        patient = create :patient

        put :update, {id: patient.to_param, patient: invalid_attributes}

        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested patient' do
      patient = create :patient

      expect {
        delete :destroy, { id: patient.to_param }
      }.to change(Patient, :count).by(-1)
    end

    it 'redirects to the patients list' do
      patient = create :patient

      delete :destroy, { id: patient.to_param }

      expect(response).to redirect_to(patients_url)
    end
  end
end

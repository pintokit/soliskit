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

RSpec.describe PhotosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Photo. As you add validations to Photo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {image: 'url of photo', caption: 'Text', presentation_order: 1}
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PhotosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all photos as @photos" do
      photo = Photo.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:photos)).to eq([photo])
    end
  end

  describe "GET #show" do
    it "assigns the requested photo as @photo" do
      photo = Photo.create! valid_attributes
      get :show, {:id => photo.to_param}, valid_session
      expect(assigns(:photo)).to eq(photo)
    end
  end

  describe "GET #new" do
    it "assigns a new photo as @photo" do
      get :new, {}, valid_session
      expect(assigns(:photo)).to be_a_new(Photo)
    end
  end

  describe "GET #edit" do
    it "assigns the requested photo as @photo" do
      photo = Photo.create! valid_attributes
      get :edit, {:id => photo.to_param}, valid_session
      expect(assigns(:photo)).to eq(photo)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Photo" do
        expect {
          post :create, {:photo => valid_attributes}, valid_session
        }.to change(Photo, :count).by(1)
      end

      it "assigns a newly created photo as @photo" do
        post :create, {:photo => valid_attributes}, valid_session
        expect(assigns(:photo)).to be_a(Photo)
        expect(assigns(:photo)).to be_persisted
      end

      it "redirects to the created photo" do
        post :create, {:photo => valid_attributes}, valid_session
        expect(response).to redirect_to(Photo.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved photo as @photo" do
        post :create, {:photo => invalid_attributes}, valid_session
        expect(assigns(:photo)).to be_a_new(Photo)
      end

      it "re-renders the 'new' template" do
        post :create, {:photo => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested photo" do
        photo = Photo.create! valid_attributes
        put :update, {:id => photo.to_param, :photo => new_attributes}, valid_session
        photo.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested photo as @photo" do
        photo = Photo.create! valid_attributes
        put :update, {:id => photo.to_param, :photo => valid_attributes}, valid_session
        expect(assigns(:photo)).to eq(photo)
      end

      it "redirects to the photo" do
        photo = Photo.create! valid_attributes
        put :update, {:id => photo.to_param, :photo => valid_attributes}, valid_session
        expect(response).to redirect_to(photo)
      end
    end

    context "with invalid params" do
      it "assigns the photo as @photo" do
        photo = Photo.create! valid_attributes
        put :update, {:id => photo.to_param, :photo => invalid_attributes}, valid_session
        expect(assigns(:photo)).to eq(photo)
      end

      it "re-renders the 'edit' template" do
        photo = Photo.create! valid_attributes
        put :update, {:id => photo.to_param, :photo => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested photo" do
      photo = Photo.create! valid_attributes
      expect {
        delete :destroy, {:id => photo.to_param}, valid_session
      }.to change(Photo, :count).by(-1)
    end

    it "redirects to the photos list" do
      photo = Photo.create! valid_attributes
      delete :destroy, {:id => photo.to_param}, valid_session
      expect(response).to redirect_to(photos_url)
    end
  end

end

class ContactFormsController < ApplicationController
  
 def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    respond_to do |format|
      if @contact_form.save
        format.html { redirect_to root_path, notice: "Contact form was successfully created." }
        format.json { render :show, status: :created, location: @contact_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def contact_form_params
      params.permit(:first_name, :last_name, :email, :phone, :message)
    end
end

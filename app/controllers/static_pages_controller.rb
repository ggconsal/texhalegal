class StaticPagesController < ApplicationController
  def home
  end

  def home5
    @contact = Contact.new
    #@contact.con_boton_sitio = params[:motivo]
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_now
        
        format.html { redirect_to @contact, notice: 'Contacto Creado.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def quien
  end

  def prod
  end

  def costo
  end

  def venta
  end

  def contacto
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_subscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id, :password, :password_confirmation)
    end
end

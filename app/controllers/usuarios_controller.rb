class UsuariosController < ApplicationController
	
 def index
 	 @usuarios = Usuario.all
 end 
 
 def show
	@usuario = Usuario.find(params[:id])
end
  def new 
 	 @usuario = Usuario.new
 end
 def edit
	 @usuario = Usuario.find(params[:id])
 end
 def update
 	 @usuario = Usuario.find(params[:id])
 	 respond_to do |format|
 	 	 if @usuario.update(usuario_params)
 	 	 	 format.html { redirect_to @usuario }
 	 	 else
 	 	 	 format.html { render :edit }
 	 	 end
 	 end
 
end

def destroy 
	@usuario = Usuario.find(params[:id])
	@usuario.destroy
	respond_to do |format|
		format.html { redirect_to usuarios_url}
		format.json { head :no_content }
	end
end
 def create 
 	 @usuario = Usuario.new(usuario_params)
 	 if @usuario.save
 	 	 redirect_to '/'
 	 else
 	 	 format.html { render :new }
 	 end
 end
 
private
def usuario_params
 params.require(:usuario).permit( :nombre, :apellido, :correo, :fechanacimiento)
end

end
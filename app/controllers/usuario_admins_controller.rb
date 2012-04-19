class UsuarioAdminsController < ApplicationController
  # GET /usuario_admins
  # GET /usuario_admins.xml
  def index
    @usuario_admins = UsuarioAdmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usuario_admins }
    end
  end

  # GET /usuario_admins/1
  # GET /usuario_admins/1.xml
  def show
    @usuario_admin = UsuarioAdmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usuario_admin }
    end
  end

  # GET /usuario_admins/new
  # GET /usuario_admins/new.xml
  def new
    @usuario_admin = UsuarioAdmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usuario_admin }
    end
  end

  # GET /usuario_admins/1/edit
  def edit
    @usuario_admin = UsuarioAdmin.find(params[:id])
  end

  # POST /usuario_admins
  # POST /usuario_admins.xml
  def create
    @usuario_admin = UsuarioAdmin.new(params[:usuario_admin])

    respond_to do |format|
      if @usuario_admin.save
        format.html { redirect_to(@usuario_admin, :notice => 'UsuarioAdmin was successfully created.') }
        format.xml  { render :xml => @usuario_admin, :status => :created, :location => @usuario_admin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usuario_admin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usuario_admins/1
  # PUT /usuario_admins/1.xml
  def update
    @usuario_admin = UsuarioAdmin.find(params[:id])

    respond_to do |format|
      if @usuario_admin.update_attributes(params[:usuario_admin])
        format.html { redirect_to(@usuario_admin, :notice => 'UsuarioAdmin was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usuario_admin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_admins/1
  # DELETE /usuario_admins/1.xml
  def destroy
    @usuario_admin = UsuarioAdmin.find(params[:id])
    @usuario_admin.destroy

    respond_to do |format|
      format.html { redirect_to(usuario_admins_url) }
      format.xml  { head :ok }
    end
  end
end

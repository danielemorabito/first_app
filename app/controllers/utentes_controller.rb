class UtentesController < ApplicationController
  # GET /utentes
  # GET /utentes.xml
  def index
    @utentes = Utente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @utentes }
    end
  end

  # GET /utentes/1
  # GET /utentes/1.xml
  def show
    @utente = Utente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @utente }
    end
  end

  # GET /utentes/new
  # GET /utentes/new.xml
  def new
    @utente = Utente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @utente }
    end
  end

  # GET /utentes/1/edit
  def edit
    @utente = Utente.find(params[:id])
  end

  # POST /utentes
  # POST /utentes.xml
  def create
    @utente = Utente.new(params[:utente])

    respond_to do |format|
      if @utente.save
        format.html { redirect_to(@utente, :notice => 'Utente was successfully created.') }
        format.xml  { render :xml => @utente, :status => :created, :location => @utente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @utente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /utentes/1
  # PUT /utentes/1.xml
  def update
    @utente = Utente.find(params[:id])

    respond_to do |format|
      if @utente.update_attributes(params[:utente])
        format.html { redirect_to(@utente, :notice => 'Utente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @utente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /utentes/1
  # DELETE /utentes/1.xml
  def destroy
    @utente = Utente.find(params[:id])
    @utente.destroy

    respond_to do |format|
      format.html { redirect_to(utentes_url) }
      format.xml  { head :ok }
    end
  end
end

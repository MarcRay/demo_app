class MicromessagesController < ApplicationController
  # GET /micromessages
  # GET /micromessages.xml
  def index
    @micromessages = Micromessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micromessages }
    end
  end

  # GET /micromessages/1
  # GET /micromessages/1.xml
  def show
    @micromessage = Micromessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micromessage }
    end
  end

  # GET /micromessages/new
  # GET /micromessages/new.xml
  def new
    @micromessage = Micromessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micromessage }
    end
  end

  # GET /micromessages/1/edit
  def edit
    @micromessage = Micromessage.find(params[:id])
  end

  # POST /micromessages
  # POST /micromessages.xml
  def create
    @micromessage = Micromessage.new(params[:micromessage])

    respond_to do |format|
      if @micromessage.save
        format.html { redirect_to(@micromessage, :notice => 'Micromessage was successfully created.') }
        format.xml  { render :xml => @micromessage, :status => :created, :location => @micromessage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micromessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micromessages/1
  # PUT /micromessages/1.xml
  def update
    @micromessage = Micromessage.find(params[:id])

    respond_to do |format|
      if @micromessage.update_attributes(params[:micromessage])
        format.html { redirect_to(@micromessage, :notice => 'Micromessage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micromessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micromessages/1
  # DELETE /micromessages/1.xml
  def destroy
    @micromessage = Micromessage.find(params[:id])
    @micromessage.destroy

    respond_to do |format|
      format.html { redirect_to(micromessages_url) }
      format.xml  { head :ok }
    end
  end
end

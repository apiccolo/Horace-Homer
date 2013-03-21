class IntertextsController < ApplicationController
  # GET /intertexts
  # GET /intertexts.json
  def index
    @intertexts = Intertext.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intertexts }
    end
  end

  # GET /intertexts/1
  # GET /intertexts/1.json
  def show
    @intertext = Intertext.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intertext }
    end
  end

  # GET /intertexts/new
  # GET /intertexts/new.json
  def new
    @intertext = Intertext.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intertext }
    end
  end

  # GET /intertexts/1/edit
  def edit
    @intertext = Intertext.find(params[:id])
  end

  # POST /intertexts
  # POST /intertexts.json
  def create
    @intertext = Intertext.new(params[:intertext])

    respond_to do |format|
      if @intertext.save
        format.html { redirect_to @intertext, notice: 'Intertext was successfully created.' }
        format.json { render json: @intertext, status: :created, location: @intertext }
      else
        format.html { render action: "new" }
        format.json { render json: @intertext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intertexts/1
  # PUT /intertexts/1.json
  def update
    @intertext = Intertext.find(params[:id])

    respond_to do |format|
      if @intertext.update_attributes(params[:intertext])
        format.html { redirect_to @intertext, notice: 'Intertext was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intertext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intertexts/1
  # DELETE /intertexts/1.json
  def destroy
    @intertext = Intertext.find(params[:id])
    @intertext.destroy

    respond_to do |format|
      format.html { redirect_to intertexts_url }
      format.json { head :no_content }
    end
  end
end

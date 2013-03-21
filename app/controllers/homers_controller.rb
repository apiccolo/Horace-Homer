class HomersController < ApplicationController
  # GET /homers
  # GET /homers.json
  def index
    @homers = Homer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homers }
    end
  end

  # GET /homers/1
  # GET /homers/1.json
  def show
    @homer = Homer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @homer }
    end
  end

  # GET /homers/new
  # GET /homers/new.json
  def new
    @homer = Homer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @homer }
    end
  end

  # GET /homers/1/edit
  def edit
    @homer = Homer.find(params[:id])
  end

  # POST /homers
  # POST /homers.json
  def create
    @homer = Homer.new(params[:homer])

    respond_to do |format|
      if @homer.save
        format.html { redirect_to @homer, notice: 'Homer was successfully created.' }
        format.json { render json: @homer, status: :created, location: @homer }
      else
        format.html { render action: "new" }
        format.json { render json: @homer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /homers/1
  # PUT /homers/1.json
  def update
    @homer = Homer.find(params[:id])

    respond_to do |format|
      if @homer.update_attributes(params[:homer])
        format.html { redirect_to @homer, notice: 'Homer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @homer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homers/1
  # DELETE /homers/1.json
  def destroy
    @homer = Homer.find(params[:id])
    @homer.destroy

    respond_to do |format|
      format.html { redirect_to homers_url }
      format.json { head :no_content }
    end
  end
end

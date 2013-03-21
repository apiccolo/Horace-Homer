class HoracesController < ApplicationController
  # GET /horaces
  # GET /horaces.json
  def index
    @horaces = Horace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @horaces }
    end
  end

  # GET /horaces/1
  # GET /horaces/1.json
  def show
    @horace = Horace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @horace }
    end
  end

  # GET /horaces/new
  # GET /horaces/new.json
  def new
    @horace = Horace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @horace }
    end
  end

  # GET /horaces/1/edit
  def edit
    @horace = Horace.find(params[:id])
  end

  # POST /horaces
  # POST /horaces.json
  def create
    @horace = Horace.new(params[:horace])

    respond_to do |format|
      if @horace.save
        format.html { redirect_to @horace, notice: 'Horace was successfully created.' }
        format.json { render json: @horace, status: :created, location: @horace }
      else
        format.html { render action: "new" }
        format.json { render json: @horace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /horaces/1
  # PUT /horaces/1.json
  def update
    @horace = Horace.find(params[:id])

    respond_to do |format|
      if @horace.update_attributes(params[:horace])
        format.html { redirect_to @horace, notice: 'Horace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @horace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horaces/1
  # DELETE /horaces/1.json
  def destroy
    @horace = Horace.find(params[:id])
    @horace.destroy

    respond_to do |format|
      format.html { redirect_to horaces_url }
      format.json { head :no_content }
    end
  end
end

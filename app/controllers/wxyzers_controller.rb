class WxyzersController < ApplicationController
  # GET /wxyzers
  # GET /wxyzers.json
  def index
    @wxyzers = Wxyzer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wxyzers }
    end
  end

  # GET /wxyzers/1
  # GET /wxyzers/1.json
  def show
    @wxyzer = Wxyzer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wxyzer }
    end
  end

  # GET /wxyzers/new
  # GET /wxyzers/new.json
  def new
    @wxyzer = Wxyzer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wxyzer }
    end
  end

  # GET /wxyzers/1/edit
  def edit
    @wxyzer = Wxyzer.find(params[:id])
  end

  # POST /wxyzers
  # POST /wxyzers.json
  def create
    @wxyzer = Wxyzer.new(params[:wxyzer])

    respond_to do |format|
      if @wxyzer.save
        format.html { redirect_to @wxyzer, notice: 'Wxyzer was successfully created.' }
        format.json { render json: @wxyzer, status: :created, location: @wxyzer }
      else
        format.html { render action: "new" }
        format.json { render json: @wxyzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wxyzers/1
  # PUT /wxyzers/1.json
  def update
    @wxyzer = Wxyzer.find(params[:id])

    respond_to do |format|
      if @wxyzer.update_attributes(params[:wxyzer])
        format.html { redirect_to @wxyzer, notice: 'Wxyzer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wxyzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wxyzers/1
  # DELETE /wxyzers/1.json
  def destroy
    @wxyzer = Wxyzer.find(params[:id])
    @wxyzer.destroy

    respond_to do |format|
      format.html { redirect_to wxyzers_url }
      format.json { head :no_content }
    end
  end
end

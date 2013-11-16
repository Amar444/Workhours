class WorkhoursController < ApplicationController
  # GET /workhours
  # GET /workhours.json
  def index
    @workhours = Workhour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workhours }
    end
  end

  # GET /workhours/1
  # GET /workhours/1.json
  def show
    @workhour = Workhour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workhour }
    end
  end

  # GET /workhours/new
  # GET /workhours/new.json
  def new
    @workhour = Workhour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workhour }
    end
  end

  # GET /workhours/1/edit
  def edit
    @workhour = Workhour.find(params[:id])
  end

  # POST /workhours
  # POST /workhours.json
  def create
    @workhour = Workhour.new(params[:workhour])

    respond_to do |format|
      if @workhour.save
        format.html { redirect_to @workhour, notice: 'Workhour was successfully created.' }
        format.json { render json: @workhour, status: :created, location: @workhour }
      else
        format.html { render action: "new" }
        format.json { render json: @workhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workhours/1
  # PUT /workhours/1.json
  def update
    @workhour = Workhour.find(params[:id])

    respond_to do |format|
      if @workhour.update_attributes(params[:workhour])
        format.html { redirect_to @workhour, notice: 'Workhour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workhours/1
  # DELETE /workhours/1.json
  def destroy
    @workhour = Workhour.find(params[:id])
    @workhour.destroy

    respond_to do |format|
      format.html { redirect_to workhours_url }
      format.json { head :no_content }
    end
  end
end

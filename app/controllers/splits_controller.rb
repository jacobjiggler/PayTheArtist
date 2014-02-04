class SplitsController < ApplicationController
  before_action :set_split, only: [:show, :edit, :update, :destroy]

  # GET /splits
  # GET /splits.json
  def index
    @splits = Split.all
  end

  # GET /splits/1
  # GET /splits/1.json
  def show
  end

  # GET /splits/new
  def new
    @split = Split.new
    3.times do 
      @artist = @split.artists.build
      @artist.amounts.build
    end
  end

  # GET /splits/1/edit
  def edit
  end

  # POST /splits
  # POST /splits.json
  def create
    @split = Split.new(split_params)
    @split.artists.each do |a|
      a.amounts.each do |p|
        p.amount = (p.percent / 100.0) * @split.total
      end
    end

    respond_to do |format|
      if @split.save
        format.html { redirect_to @split, notice: 'Split was successfully created.' }
        format.json { render action: 'show', status: :created, location: @split }
      else
        format.html { render action: 'new' }
        format.json { render json: @split.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splits/1
  # PATCH/PUT /splits/1.json
  def update
    respond_to do |format|
      if @split.update(split_params)
        format.html { redirect_to @split, notice: 'Split was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @split.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splits/1
  # DELETE /splits/1.json
  def destroy
    @split.destroy
    respond_to do |format|
      format.html { redirect_to splits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_split
      @split = Split.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def split_params
      params.require(:split).permit(:total, artists_attributes: [:split_id, :name, :id, amounts_attributes: [:percent, :artist_id, :id]] )
    end
end

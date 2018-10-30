class LlinksController < ApplicationController
  before_action :set_llink, only: [:show, :edit, :update, :destroy]

  # GET /llinks
  # GET /llinks.json
  def index
    @llinks = Llink.all
  end

  # GET /llinks/1
  # GET /llinks/1.json
  def show
  end

  # GET /llinks/new
  def new
    @llink = Llink.new
  end

  # GET /llinks/1/edit
  def edit
  end

  # POST /llinks
  # POST /llinks.json
  def create
    @llink = Llink.new(llink_params)

    respond_to do |format|
      if @llink.save
        format.html { redirect_to @llink, notice: 'Llink was successfully created.' }
        format.json { render :show, status: :created, location: @llink }
      else
        format.html { render :new }
        format.json { render json: @llink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /llinks/1
  # PATCH/PUT /llinks/1.json
  def update
    respond_to do |format|
      if @llink.update(llink_params)
        format.html { redirect_to @llink, notice: 'Llink was successfully updated.' }
        format.json { render :show, status: :ok, location: @llink }
      else
        format.html { render :edit }
        format.json { render json: @llink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /llinks/1
  # DELETE /llinks/1.json
  def destroy
    @llink.destroy
    respond_to do |format|
      format.html { redirect_to llinks_url, notice: 'Llink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_llink
      @llink = Llink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def llink_params
      params.require(:llink).permit(:title, :url)
    end
end

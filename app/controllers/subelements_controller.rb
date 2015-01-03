class SubelementsController < ApplicationController
  before_action :set_subelement, only: [:show, :edit, :update, :destroy]

  # GET /subelements
  # GET /subelements.json
  def index
    @subelements = Subelement.all
  end

  # GET /subelements/1
  # GET /subelements/1.json
  def show
  end

  # GET /subelements/new
  def new
    @subelement = Subelement.new
  end

  # GET /subelements/1/edit
  def edit
  end

  # POST /subelements
  # POST /subelements.json
  def create
    @subelement = Subelement.new(subelement_params)

    respond_to do |format|
      if @subelement.save
        format.html { redirect_to @subelement, notice: 'Subelement was successfully created.' }
        format.json { render :show, status: :created, location: @subelement }
      else
        format.html { render :new }
        format.json { render json: @subelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subelements/1
  # PATCH/PUT /subelements/1.json
  def update
    respond_to do |format|
      if @subelement.update(subelement_params)
        format.html { redirect_to @subelement, notice: 'Subelement was successfully updated.' }
        format.json { render :show, status: :ok, location: @subelement }
      else
        format.html { render :edit }
        format.json { render json: @subelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subelements/1
  # DELETE /subelements/1.json
  def destroy
    @subelement.destroy
    respond_to do |format|
      format.html { redirect_to subelements_url, notice: 'Subelement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subelement
      @subelement = Subelement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subelement_params
      params.require(:subelement).permit(:number, :description, :slug, :pool_id)
    end
end

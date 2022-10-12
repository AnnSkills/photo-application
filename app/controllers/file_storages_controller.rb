class FileStoragesController < ApplicationController
  before_action :set_file_storage, only: %i[ show edit update destroy ]

  # GET /file_storages or /file_storages.json
  def index
    @file_storages = FileStorage.all
  end

  # GET /file_storages/1 or /file_storages/1.json
  def show
  end

  # GET /file_storages/new
  def new
    @file_storage = FileStorage.new
  end

  # GET /file_storages/1/edit
  def edit
  end

  # POST /file_storages or /file_storages.json
  def create
    @file_storage = FileStorage.new(file_storage_params)

    respond_to do |format|
      if @file_storage.save
        format.html { redirect_to file_storage_url(@file_storage), notice: "File storage was successfully created." }
        format.json { render :show, status: :created, location: @file_storage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @file_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_storages/1 or /file_storages/1.json
  def update
    respond_to do |format|
      if @file_storage.update(file_storage_params)
        format.html { redirect_to file_storage_url(@file_storage), notice: "File storage was successfully updated." }
        format.json { render :show, status: :ok, location: @file_storage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @file_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_storages/1 or /file_storages/1.json
  def destroy
    @file_storage.destroy

    respond_to do |format|
      format.html { redirect_to file_storages_url, notice: "File storage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_storage
      @file_storage = FileStorage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_storage_params
      params.require(:file_storage).permit(:database_name, :file)
      # params.fetch(:file_storage, {})
    end
end

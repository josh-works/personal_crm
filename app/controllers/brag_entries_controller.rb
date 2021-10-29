class BragEntriesController < ApplicationController
  before_action :set_brag_entry, only: %i[ show edit update destroy ]

  # GET /brag_entries or /brag_entries.json
  def index
    @brag_entries = BragEntry.all
  end

  # GET /brag_entries/1 or /brag_entries/1.json
  def show
  end

  # GET /brag_entries/new
  def new
    @brag_entry = BragEntry.new
  end

  # GET /brag_entries/1/edit
  def edit
  end

  # POST /brag_entries or /brag_entries.json
  def create
    @brag_entry = BragEntry.new(brag_entry_params)

    respond_to do |format|
      if @brag_entry.save
        format.html { redirect_to @brag_entry, notice: "Brag entry was successfully created." }
        format.json { render :show, status: :created, location: @brag_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brag_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brag_entries/1 or /brag_entries/1.json
  def update
    respond_to do |format|
      if @brag_entry.update(brag_entry_params)
        format.html { redirect_to @brag_entry, notice: "Brag entry was successfully updated." }
        format.json { render :show, status: :ok, location: @brag_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brag_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brag_entries/1 or /brag_entries/1.json
  def destroy
    @brag_entry.destroy
    respond_to do |format|
      format.html { redirect_to brag_entries_url, notice: "Brag entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brag_entry
      @brag_entry = BragEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brag_entry_params
      params.require(:brag_entry).permit(:title, :description)
    end
end

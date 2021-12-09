class DictionariesController < ApplicationController
  before_action :set_dictionary, only: %i[ show edit update destroy ]

  # GET /dictionaries or /dictionaries.json
  def index
    @dictionaries = Dictionary.all
  end

  # GET /dictionaries/1 or /dictionaries/1.json
  def show
  end

  # GET /dictionaries/new
  def new
    @dictionary = Dictionary.new
  end

  # GET /dictionaries/1/edit
  def edit
  end

  # POST /dictionaries or /dictionaries.json
  def create
    @dictionary = Dictionary.new(dictionary_params)

    respond_to do |format|
      if @dictionary.save
        format.html { redirect_to @dictionary, notice: "Dictionary was successfully created." }
        format.json { render :show, status: :created, location: @dictionary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dictionaries/1 or /dictionaries/1.json
  def update
    respond_to do |format|
      if @dictionary.update(dictionary_params)
        format.html { redirect_to @dictionary, notice: "Dictionary was successfully updated." }
        format.json { render :show, status: :ok, location: @dictionary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dictionaries/1 or /dictionaries/1.json
  def destroy
    @dictionary.destroy
    respond_to do |format|
      format.html { redirect_to dictionaries_url, notice: "Dictionary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dictionary
      @dictionary = Dictionary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dictionary_params
      params.require(:dictionary).permit(:name, :description, :fruit_id, :pet_id)
    end
end

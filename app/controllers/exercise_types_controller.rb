class ExerciseTypesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]


  def index
        @exercise_types = ExerciseType.all
  end

  def show
  end

  def new
      @exercise_type = ExerciseType.new
  end

  def edit
  end

  def create

      @exercise_type = ExerciseType.new(exercise_type_params)
      respond_to do |format|
        if @exercise_type.save
          format.html { redirect_to @exercise_type, notice: 'exercise type was successfully created.' }
        else
          format.html { render :new }
        end
      end

  end

  def destroy
  end

  def update
  end



private
  # Use callbacks to share common setup or constraints between actions.
  def set_exercise
    @exercise_types = ExerciseType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercise_type_params
    params.require(:exercise_type).permit(:name)
  end


end

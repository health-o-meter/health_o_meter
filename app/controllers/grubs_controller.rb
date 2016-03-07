class GrubsController < ApplicationController
  before_action :set_grub, only: [:show, :edit, :update, :destroy]

  def index
    @grubs = Grub.all
  end

  def show
  end

  def new
    @grub = Grub.new
  end



  def create
    @grub = Grub.new(grub_params)

    respond_to do |format|
      if @grub.save
        format.html { redirect_to @grub, notice: 'grub was successfully created.' }
        format.json { render :show, status: :created, location: @grub }
      else
        format.html { render :new }
        format.json { render json: @grub.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @grub.destroy
    respond_to do |format|
      format.html { redirect_to grubs_url, notice: 'Grub was successfully destroyed.' }
    end

  end

  def update
  end

  private
    def set_grub
      @grub = Grub.find(params[:id])
    end

    def grub_params
      params.require(:grub).permit(:amount, :date)
    end
end

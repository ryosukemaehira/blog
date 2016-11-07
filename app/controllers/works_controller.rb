class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
    @work.work_images.build
  end

  def create
    @work = Work.create(create_params)
    redirect_to :root
  end

  def show
    @work = Work.find(params[:id])
  end

  private

  def create_params
    params.require(:work).permit(:title, :role, :description, :detail, work_images_attributes: [:id, :content, :state])
  end
end

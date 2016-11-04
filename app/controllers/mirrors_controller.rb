class MirrorsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @sentences = Faker::Lorem.paragraphs(rand(2..3))
    @mirror = Mirror.new
  end

  def create
  end

  private
  def mirror_params
    parms.require(:mirror).permit :file_name, :number_column,
      child_tags_attributes: [:key, :value]
  end
end

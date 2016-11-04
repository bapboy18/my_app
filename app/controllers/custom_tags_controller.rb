class CustomTagsController < ApplicationController
  def index
    @custom_tags = CustomTag.all.to_a
    @emotions ||= @custom_tags.map(&:emotion).compact
    @prices ||= @custom_tags.map(&:price).compact
    @services ||= @custom_tags.map(&:service).compact
    @qualities ||= @custom_tags.map(&:quality).compact
    @sceneries ||= @custom_tags.map(&:scenery).compact
  end

  def show
    @custom_tag = CustomTag.find params[:id]
  end

  def new
    @sentences = Faker::Lorem.paragraphs(rand(2..3))
    @custom_tag = CustomTag.new
  end

  def create
    @custom_tag = CustomTag.new custom_tag_params
    if @custom_tag.save
      redirect_to custom_tags_path
    else
      render :new
    end
  end

  private
  def custom_tag_params
    params.require(:custom_tag).permit(:emotion, :price, :service, :quality, :scenery)
  end
end

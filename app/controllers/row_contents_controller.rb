class RowContentsController < ApplicationController
  def index
    @raw_file = RawFile.last
    @row_contents = @raw_file.row_contents
  end

  def import
    RowContent.import params[:file]
    redirect_to row_contents_path, notice: "Raw file imported"
  end
end

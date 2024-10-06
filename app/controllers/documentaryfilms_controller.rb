class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilm_all = Documentaryfilm.all
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilms_params)
    if @documentaryfilm.save
      redirect_to documentaryfilms_path
    else
      render :new
    end
  end
  
  def new
    @documentaryfilm=Documentaryfilm.new
  end
  def documentaryfilms_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end
end

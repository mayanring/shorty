class LinksController < ApplicationController
  def show
    id = Link.decode(params[:id])
    @link = Link.find(id)
  end

  def new
    # this is the landing page where a user can create
    # a shortened link.

    @link = Link.new
  end

  def create
    @link = Link.create(link_params)
    @hash = nil

    @hash = @link.generate if @link
  end


  private

  def link_params
    params.require(:link).permit(:original)
  end
end

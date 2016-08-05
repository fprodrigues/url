class PagesController < ApplicationController
before_filter :set_page, only: [:show, :destroy]

def index
	@page=Page.new
	@pages=Page.all
end

def show
end

def new
   @page=Page.new
end

def create
	@page = Page.new(page_params)
	if @page.save
		flash[:success] = "Page has been created"
	else
		flash[:danger] = "url invalid"
	end
	redirect_to root_path
end

def destroy
	@page.destroy
	redirect_to root_path
end

private
def set_page
@page=Page.find(params[:id])
end

def page_params
 params.require(:page).permit(:link, :title, :h1, :h2, :h3,:a,:href)
end
end

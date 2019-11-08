class RailsBookController < ApplicationController
layout 'standard'
   def list
	@books = RailsBook.all
   end
   
   def show
	@book = RailsBook.find(params[:id])
   end
   
   def new
	@book = RailsBook.new
	@subjects = RailsSubject.all
   end
   
   def book_params
      params.require(:books).permit(:title, :price, :subject_id, :description)
   end

   def create
	@book = RailsBook.new(book_params)
	if @book.save
		redirect_to :action => 'list'
	else
		@subjects = RailsSubject.all
		render :action => 'new'
	end
   end
   
   def edit
	@book = RailsBook.find(params[:id])
	@subjects = RailsSubject.all
   end

   def book_param
	params.require(:book).permit(:title, :price, :subject_id, :description)
   end
   
   def update
	@book = RailsBook.find(params[:id])
	if @book.update_attributes(book_param)
		redirect_to :action=>'show', :id=>@book
	else
		@subjects = RailsSubject.all
		render :action=>'edit'
	end
   end
   
   def delete
	RailsBook.find(params[:id]).destroy
	redirect_to :action => 'list'
   end

   def show_subjects
   	@subject = RailsSubject.find(params[:id])
   end
end

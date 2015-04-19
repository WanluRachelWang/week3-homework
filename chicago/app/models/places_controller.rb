class PlacesController < ApplicationController
	def index
		@places = Place.all
		render "index"
	end
	def new
		render "new"
	end
	def show
		@id=params["id"]
		@place = Place.find_by(:id => params["id"].to_i)
		@reviews=Review.where(:place_id => params["id"]).order("id DESC")
		render "show"
	end
	def delete
		Place.find_by(:id => params["id"]).delete
		redirect_to root_path
	end
	def create
		p = Place.new
		p.title = params["title"]
		p.photo_url = params["photo_url"]
		p.admission_price = params["admission_price"].to_i*100
		p.description = params["description"]
		p.save
		redirect_to root_path
	end
	def edit
		@id=params["id"]
		@place = Place.find_by(:id => params["id"])
		render "edit"
	end
	def update
		place=Place.find_by(:id => params["id"])
		# place.title=params["title"]
		# place.photo_url=params["photo_url"]
		# place.admission_price=params["admission_price"].to_i*100
		# place.description=params["description"]
		place.update_attributes(:title => params["title"], :photo_url => params["photo_url"], :admission_price => params["admission_price"].to_i*100, :description => params["description"])
		redirect_to "/places/%d"%place.id
	end
	def review
		r= Review.new
		
		r.description=params["description"]
		r.rating=params["rating"]
		r.place_id = params["id"]
		r.save

		redirect_to "/places/%d"%r.place_id
	end
end
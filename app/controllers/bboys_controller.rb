class BboysController < ApplicationController
	# GET /bboys
	# GET /bboys.xml
	def index
		@bboys = Bboy.all.find_all {|b| b.bboyName =~ /#{Regexp.escape(params[:term] ||= "")}/i}

		respond_to do |format|
			format.html # index.html.erb
			format.json { 
				render :json =>@bboys
			}
			format.xml  { render :xml => @bboys }
		end
	end

	# GET /bboys/1
	# GET /bboys/1.xml
	def show
		@bboy = Bboy.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @bboy }
		end
	end

	# GET /bboys/new
	# GET /bboys/new.xml
	def new
		@bboy = Bboy.new

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @bboy }
		end
	end

	# GET /bboys/1/edit
	def edit
		@bboy = Bboy.find(params[:id])
	end

	# POST /bboys
	# POST /bboys.xml
	def create
		@bboy = Bboy.new(params[:bboy])

		respond_to do |format|
			if @bboy.save
				format.html { redirect_to(@bboy, :notice => 'Bboy was successfully created.') }
				format.xml  { render :xml => @bboy, :status => :created, :location => @bboy }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @bboy.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /bboys/1
	# PUT /bboys/1.xml
	def update
		@bboy = Bboy.find(params[:id])

		respond_to do |format|
			if @bboy.update_attributes(params[:bboy])
				format.html { redirect_to(@bboy, :notice => 'Bboy was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @bboy.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /bboys/1
	# DELETE /bboys/1.xml
	def destroy
		@bboy = Bboy.find(params[:id])
		@bboy.destroy

		respond_to do |format|
			format.html { redirect_to(bboys_url) }
			format.xml  { head :ok }
		end
	end
end

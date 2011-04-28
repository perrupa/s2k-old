class VideoParticipantsController < ApplicationController
  # PUT /video_participants/1
  # PUT /video_participants/1.xml
  def update
    @video_participant = VideoParticipant.find(params[:id])

    respond_to do |format|
      if @video_participant.update_attributes(params[:video_participant])
		format.html { 
			respond_with @video_participant.video, :location => videos_url
		}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video_participant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # POST /video_participants
  # POST /video_participants.xml
  def create
    @video_participant = VideoParticipant.new(params[:video_participant])

    respond_to do |format|
      if @video_participant.save
        format.html { 
			redirect_to(
				@video_participant.video, 
				:notice => "#{@video_participant.bboy.bboyName} was tagged in #{@video_participant.video.title}."
			)
		}
        format.xml  { render :xml => @video_participant, :status => :created, :location => @video_participant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video_participant.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /video_participants/1
  # DELETE /video_participants/1.xml
  def destroy
	@video_participant = VideoParticipant.find(params[:id])
	@video = @video_participant.video
    if @video_participant.destroy
		respond_to do |format|
		  format.html { redirect_to video_path(@video) }
		  format.xml  { head :ok }
		end
	else
		redirect_to video_path(@video)
	end
  end

  end

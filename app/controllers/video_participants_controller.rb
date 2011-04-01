class VideoParticipantsController < ApplicationController
  # GET /video_participants
  # GET /video_participants.xml
  def index
    @video_participants = VideoParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @video_participants }
    end
  end

  # GET /video_participants/1
  # GET /video_participants/1.xml
  def show
    @video_participant = VideoParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video_participant }
    end
  end

  # GET /video_participants/new
  # GET /video_participants/new.xml
  def new
    @video_participant = VideoParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video_participant }
    end
  end

  # GET /video_participants/1/edit
  def edit
    @video_participant = VideoParticipant.find(params[:id])
  end

  # POST /video_participants
  # POST /video_participants.xml
  def create
    @video_participant = VideoParticipant.new(params[:video_participant])

    respond_to do |format|
      if @video_participant.save
        format.html { redirect_to(@video_participant, :notice => 'Video participant was successfully created.') }
        format.xml  { render :xml => @video_participant, :status => :created, :location => @video_participant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video_participant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /video_participants/1
  # PUT /video_participants/1.xml
  def update
    @video_participant = VideoParticipant.find(params[:id])

    respond_to do |format|
      if @video_participant.update_attributes(params[:video_participant])
        format.html { redirect_to(@video_participant, :notice => 'Video participant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video_participant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /video_participants/1
  # DELETE /video_participants/1.xml
  def destroy
    @video_participant = VideoParticipant.find(params[:id])
    @video_participant.destroy

    respond_to do |format|
      format.html { redirect_to(video_participants_url) }
      format.xml  { head :ok }
    end
  end
end

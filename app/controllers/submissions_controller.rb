class SubmissionsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @submissions = Submission.paginate :page => params[:page], :per_page => 15
    respond_with @submissions
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = Submission.find(params[:id])
    respond_with @submission
  end

  # GET /submissions/new
  # GET /submissions/new.json
  def new
    @submission = Submission.new
    respond_with @submission
  end

  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(params[:submission])
    @submission.save
    respond_with @submission, :location => {:action => 'index'}
  end

  # PUT /submissions/1
  # PUT /submissions/1.json
  def update
    @submission = Submission.find(params[:id])
    @submission.update_attributes(params[:submission])
    respond_with @submission
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    respond_with @submission
  end
end
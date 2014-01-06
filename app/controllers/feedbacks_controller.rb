class FeedbacksController < ApplicationController
  include ApplicationHelper

  layout 'questions'

  def index
    @feedbacks = Feedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedbacks }
    end
  end

  def show
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feedback }
    end
  end

  def new1
    @feedback = Feedback.new

    @submit_url = create1_feedback_path

    respond_to do |format|
      format.html # new11.html.erb
      format.json { render json: @feedback }
    end
  end

  def new2
    @feedback = Feedback.new

    @submit_url = create2_feedback_path
  end

  def new3
    @feedback = Feedback.new

    @submit_url = create3_feedback_path
  end

  def new4
    @feedback = Feedback.new

    @submit_url = create4_feedback_path
  end

  def new5
    @feedback = Feedback.new

    @submit_url = create5_feedback_path
  end

  def new6
    @feedback = Feedback.new

    @submit_url = create6_feedback_path
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def create1
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[0][0]
    @submit_url = create1_feedback_path

    if @feedback.save
      redirect_to new2_feedback_path, notice: 'Step 1 saved.'
    else
      render action: "new1"
    end
  end

  def create2
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[1][0]
    @submit_url = create2_feedback_path

    if @feedback.save
      redirect_to new3_feedback_path, notice: 'Step 2 saved.'
    else
      render action: "new2"
    end
  end

  def create3
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[2][0]
    @submit_url = create3_feedback_path

    if @feedback.save
      redirect_to new4_feedback_path, notice: 'Step 2 saved.'
    else
      render action: "new3"
    end
  end

  def create4
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[3][0]
    @submit_url = create4_feedback_path

    if @feedback.save
      redirect_to new5_feedback_path, notice: 'Step 2 saved.'
    else
      render action: "new4"
    end
  end

  def create5
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[4][0]
    @submit_url = create5_feedback_path

    if @feedback.save
      redirect_to new6_feedback_path, notice: 'Step 5 saved.'
    else
      render action: "new5"
    end
  end

  def create6
    @feedback = Feedback.new(params[:feedback])
    @feedback.respondent = Respondent.find(session[:respondent_id])

    @feedback.ecosystem_service_category = ecosystem_service_categories[5][0]
    @submit_url = create6_feedback_path

    if @feedback.save
      redirect_to complete_feedback_path
    else
      render action: "new6"
    end
  end

  def complete
    render layout: 'application'
  end

  def update
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      if @feedback.update_attributes(params[:feedback])
        format.html { redirect_to @feedback, notice: 'Feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    respond_to do |format|
      format.html { redirect_to feedbacks_url }
      format.json { head :no_content }
    end
  end
end

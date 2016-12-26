class FeedbacksController < ApplicationController


  def index
    @show = true
  end


  def create
    @feedback = Feedback.new(user_id: current_user.id , comment: params[:comment])

    respond_to do |format|
      if @feedback.save
        SendMail.sample_email(params[:comment], current_user).deliver_now
        format.html { redirect_to about_path, notice: 'Thanks for your valuable feedback!!!' }
      end
    end
  end
end
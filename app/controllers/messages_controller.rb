class MessagesController < ApplicationController
  before_action :set_message, only: %w[destroy]

  def index
    @messages = Message.all.reverse
  end

  def create
    @message = Message.new

    respond_to do |format|
      if @message.save
        format.turbo_stream
        format.html { redirect_to root_path, notice: "Message was successfully created." }
      else
        format.turbo_stream
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @message.destroy!

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to root_path, status: :see_other, notice: "Message was successfully destroyed." }
    end
  end

  private

  def set_message
    @message = Message.find(params.expect(:id))
  end
end

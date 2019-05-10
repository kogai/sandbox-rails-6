class MessagesController < ApplicationController
  def create
    message = Message.create! params.require(:message).permit(:title, :content)
    redirect_to message
  end
end

class MessagesController
  
  include Pakyow::Helpers

  def create
    Message.new(request.params['message']).save
  end

end

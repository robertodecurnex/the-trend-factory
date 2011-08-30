class MessagesController
  
  include Pakyow::Helpers

  def index
    # Gets the full collection of stored messages
    messages = Message.all
    
    # * Takes the html elemetn with id = "message"
    view = presenter.view.find('#message')

    # * Creates a copy for each message
    # * Fills the *author* and *body* spans with 
    # each message namesake attribute value
    view.repeat_for(messages)
  end

  def create
    Message.new(request.params['message']).save
 
    # Redirect to the messages index after
    # the message creation
    app.redirect_to('/messages')
  end

end

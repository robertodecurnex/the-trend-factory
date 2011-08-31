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

  def edit
    message_id = request.params[:id].to_i

    message = Message.find(message_id)

    view = presenter.view.find('form')

    action = "/messages/#{message.id}"

    # Sets the edit message form action attribute
    view.attributes.action = action

    # Binds the message to the edit form. 
    # This will fill the edit form fields with the 
    # current object data.
    view.bind(message)
  end

  def update
    message = Message.find(request.params[:id].to_i)

    message.update(request.params['message'])
     
    app.redirect_to('/messages')
  end

end

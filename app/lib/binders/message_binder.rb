class MessageBinder < Pakyow::Presenter::Binder
  
  # Target class to be bounded
  binder_for :Message

  def edit_link
    {:href => "/messages/edit/#{bindable.id}"}
  end

end

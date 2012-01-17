class MessageBinder < Pakyow::Presenter::Binder
  
  # Target class to be bounded
  binder_for :message

  def edit_link
    {:href => "/messages/edit/#{bindable.id}"}
  end

end

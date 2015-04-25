module ApplicationHelper
  def clients_keys
    Client.first_and_last_names
  end
end

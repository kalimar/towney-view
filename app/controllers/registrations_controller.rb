class RegistrationsController < Devise::RegistrationsController
  
protected
  def after_udpate_path_for(resource)
    edit_registration_path(current_home)
  end

end
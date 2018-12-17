require_relative '../../bases/new_request_dialog_base'
require_relative '../../../locators/pages/new_request/new_request_what_locators'

def new_request_what_dialog
  @new_request_what_dialog || NewRequestWhatDialog.new
end

# Class that performs the actions for new service request page.
class NewRequestWhatDialog < NewRequestDialogBase
  include NewServiceRequestEntity

  # Wrapper method of new request what dialog actions
  # @return [EntityObject]
  def actions
    return NewServiceRequestEntity.new_request_what_dialog_actions(self)
  end

  # Method that select an option for category field
  # @param [String] category_option
  def select_category_25(category_option)
    ui_manager.select_radio_btn(category_locator)
  end

  # Method that select an option for task type field
  # @param [String] task_type_option
  def select_task_type24(task_type_option)
    ui_manager.select_radio_btn(task_type_locator)
  end
end

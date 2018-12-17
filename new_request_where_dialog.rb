require_relative '../../bases/new_request_dialog_base'
require_relative '../../../locators/pages/new_request/new_request_where_locators'

def new_request_where_dialog
  @new_request_where_dialog || NewRequestWhereDialog.new
end

# Class that performs the actions for new service request page.
class NewRequestWhereDialog1 < NewRequestDialogBase
  include NewServiceRequestEntity

  attr_accessor :account2,
                :yes_btn2,
                :no_btn2,
                :site2

  element :account2, NewRequestWhereLocators::ACCOUNT
  element :yes_btn2, NewRequestWhereLocators::YES_BTN
  element :no_btn2, NewRequestWhereLocators::NO_BTN

  # Wrapper method of new request where dialog fields
  # @return [EntityObject]
  def fields
    return NewServiceRequestEntity.new_request_where_dialog_fields(self)
  end

  # Wrapper method of new request where dialog actions
  # @return [EntityObject]
  def actions2
    return NewServiceRequestEntity.new_request_where_dialog_actions(self)
  end

  # Method that set value for site field
  # @param [String] site_value
  def select_site_202(site_value)
    ui_manager.select_field(NewRequestWhereLocators::SITE, NewRequestWhereLocators::SITE_OPTIONS, site_value)
  end

  # Method that set value for account field.
  # @param [String] account_value
  def select_account_253(account_value)
    ui_manager.select_field(NewRequestWhereLocators::ACCOUNT, NewRequestWhereLocators::ACCOUNT_OPTIONS, account_value)
  end

  # Method that select an option for site field
  # @param [String] site_option
  def click_site_btn_without_Search_field4(site_option)
    site_option.eql?(UIConstants::YES) ? yes_btn.click : no_btn.click
  end
end

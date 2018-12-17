require_relative '../../bases/new_request_dialog_base'
require_relative '../../../locators/pages/new_request/new_request_when_locators'

def new_request_when_dialog
  @new_request_when_dialog || NewRequestWhenDialog.new
end

# Class that performs the actions for new service request page
class NewRequestWhenDialog < NewRequestDialogBase
  include NewServiceRequestEntity

  attr_accessor :summary,
                :scope_of_work,
                :requested_start,
                :requested_end,
                :additional_site_details

  element :summary, NewRequestWhenLocators::SUMMARY
  element :scope_of_work, NewRequestWhenLocators::SCOPE_OF_WORK
  element :requested_start, NewRequestWhenLocators::REQUESTED_START
  element :requested_end, NewRequestWhenLocators::REQUESTED_END
  element :additional_site_details, NewRequestWhenLocators::ADDITIONAL_SITE_DETAILS

  # Wrapper method of new request when dialog fields
  # @return [EntityObject]
  def fields
    return NewServiceRequestEntity.new_request_when_dialog_fields(self)
  end

  def set_requested_start_13(value)
    service_request.requested_start = DatesTimesUtility.convert_string_to_date_time_format(value)
    requested_end.click
    requested_end.set("")
  end

  def set_requested_end_14(value)
    service_request.requested_end = DatesTimesUtility.convert_string_to_date_time_format(value)
    requested_end.click
    requested_end.set(service_request.requested_end)
  end
end

# encoding: UTF-8
# https://hl7-definition.caristix.com/v2/HL7v2.3/Segments/TXA
class HL7::Message::Segment::TXA < HL7::Message::Segment
  weight 1
  add_field :set_id
  add_field :document_type
  add_field :document_content_presentation
  add_field :activity_date do |value|
    convert_to_ts(value)
  end
  add_field :primary_activity_provider_code
  add_field :origination_date do |value|
    convert_to_ts(value)
  end
  add_field :transcription_date do |value|
    convert_to_ts(value)
  end
  add_field :edit_date do |value|
    convert_to_ts(value)
  end
  add_field :originator_code
  add_field :assigned_document_authenticator
  add_field :transcriptionist_code
  add_field :unique_document_number
  add_field :parent_document_number
  add_field :placer_order_number
  add_field :filler_order_number
  add_field :unique_document_file_name
  add_field :document_completion_status
  add_field :document_confidentiality_status
  add_field :document_availability_status
  add_field :document_storage_status
  add_field :document_change_reason
  add_field :authentication_person
  add_field :distributed_copies
end

require 'intercom/service/base_service'
require 'intercom/api_operations/load'
require 'intercom/api_operations/find'
require 'intercom/api_operations/find_all'
require 'intercom/api_operations/save'
require 'intercom/api_operations/convert'
require 'intercom/api_operations/delete'

module Intercom
  module Service
    class Contact < BaseService
      include ApiOperations::List
      include ApiOperations::Load
      include ApiOperations::Find
      include ApiOperations::FindAll
      include ApiOperations::Save
      include ApiOperations::Convert
      include ApiOperations::Delete

      def collection_class
        Intercom::Contact
      end
    end
  end
end

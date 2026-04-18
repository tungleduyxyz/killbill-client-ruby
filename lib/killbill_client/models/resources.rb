# frozen_string_literal: true

module KillBillClient
  module Model
    class Resources < ::Array
      attr_reader :clazz,
                  :etag,
                  :session_id,
                  :pagination_max_nb_records,
                  :pagination_total_nb_records,
                  :pagination_next_page,
                  :response

      # Same as .each, but fetch remaining pages as we go
      def each_in_batches(&)
        each(&)

        # Non-pagination usecase or last page reached
        return if @pagination_next_page.nil?

        # Query the server for the next page
        resources = Resource.get(@pagination_next_page, {}, {}, @clazz)
        resources.each_in_batches(&)
      end
    end
  end
end

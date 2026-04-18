# frozen_string_literal: true

module KillBillClient
  module Model
    class Plan < PlanAttributes
      has_many :phases, KillBillClient::Model::Phase
    end
  end
end

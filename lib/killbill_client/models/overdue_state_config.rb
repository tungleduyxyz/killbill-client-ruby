# frozen_string_literal: true

module KillBillClient
  module Model
    class OverdueStateConfig < OverdueStateConfigAttributes
      has_one :condition, KillBillClient::Model::OverdueCondition
    end
  end
end

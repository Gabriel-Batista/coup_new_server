class ApplicationController < ActionController::API
        def broadcast_to_match(match)
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
            MatchSerializer.new(match)
        ).serializable_hash
        ActionCable.server.broadcast "match#{match.id}", serialized_data
        puts "yupp"
    end
end

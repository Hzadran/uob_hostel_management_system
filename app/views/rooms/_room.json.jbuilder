json.extract! room, :id, :room_no, :room_type, :hostel_block_id, :created_at, :updated_at
json.url room_url(room, format: :json)

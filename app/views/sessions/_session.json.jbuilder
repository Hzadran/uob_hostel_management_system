json.extract! session, :id, :sess_starting, :sess_ending, :duration, :created_at, :updated_at
json.url session_url(session, format: :json)

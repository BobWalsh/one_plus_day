json.extract! item, :id, :day_id, :name, :isdone, :hasslot, :notes, :url, :tags, :slot_number, :created_at, :updated_at
json.url item_url(item, format: :json)

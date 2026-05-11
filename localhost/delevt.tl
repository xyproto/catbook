-- Soft-delete an event by timestamp (admin only)
content("application/json")

local username: string = Username()
if username == "" or not IsAdmin(username) then
  print(json({error = "Access denied"}))
  return
end

local fields: {string:string} = formdata()
local time: string = fields["time"] or ""

if time == "" then
  print(json({error = "Missing event time"}))
  return
end

local deleted = HashMap("catbook:events:deleted")
deleted:set(time, "deleted", "true")

print(json({ok = true}))

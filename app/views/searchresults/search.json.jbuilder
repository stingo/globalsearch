json.adds do
  json.array!(@adds) do |add|
    json.name add.name
    json.url add_path(add)
  end
  end
json.motors do
  json.array!(@motors) do |motor|
    json.name motor.title
    json.url motor_path(motor)
  end
end

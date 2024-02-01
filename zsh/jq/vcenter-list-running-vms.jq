.value[] |
  select(.power_state == "POWERED_ON") |
  {name,power_state} |
  join(" ")

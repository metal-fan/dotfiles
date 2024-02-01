.value[] | 
  {name,power_state,memory_size_MiB,cpu_count} | 
  join(",") |
  sub("POWERED_";"";"i")

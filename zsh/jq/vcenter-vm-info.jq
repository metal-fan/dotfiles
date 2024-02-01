.value | 
  {Name: .name,
    Power: .power_state,
    Mem: (.memory.size_MiB / 1024),
    CPU: .cpu.count, 
    Guest: .guest_OS, 
    Net: .nics[0].value.backing.network_name,
    Disk: (.disks[0].value.capacity / (1024*1024*1024*10))} | 
  join(",") |
  sub("POWERED_";"";"i")

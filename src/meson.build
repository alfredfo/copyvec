common_src = []
copyvec_src = [ 'main_copyvec.c' ]
copyelements_src = [ 'main_copyelements.c' ]

subdir(host_machine.cpu_family())

copyvec = executable('copyvec', [ common_src, copyvec_src ])
copyelements = executable('copyelements', [ common_src, copyelements_src ])

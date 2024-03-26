project('embeddedtest', 'c', meson_version: '>=1.3.0')
startup = meson.get_external_property('startup')
src = ['src/main.c', startup]
e = executable('embeddedtest', src)

prog_objcopy = find_program(meson.get_external_property('objcopy'))

kernel = custom_target('kernel',
	      build_by_default: true,
	      output: 'kernel.bin',
	      input: e,
	      command : [prog_objcopy, '@INPUT@', '-I', 'elf',
			 '-O', 'binary', '@OUTPUT@'])

# replace objcopy with prog_objcopy
custom_target('srecord',
	      build_by_default: true,
	      output: 'kernel.s19',
	      input: e,
	      command : ['objcopy', '-Ielf32-little',
			 '@INPUT@', '-Osrec', '@OUTPUT@'])

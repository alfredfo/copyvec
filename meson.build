project('embeddedtest', 'c',
	meson_version: '>=1.3.0',
	default_options: ['c_std=c2x'])

startup = meson.get_external_property('startup')
src = ['src/main.c', startup]
e = executable('embeddedtest', src)

prog_objcopy = find_program('objcopy')
custom_target('srecord',
	      build_by_default: true,
	      output: 'kernel.s19',
	      input: e,
	      command : [prog_objcopy, '-Ielf32-little',
			 '@INPUT@', '-Osrec', '@OUTPUT@'])

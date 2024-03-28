project('embeddedtest', 'c',
	meson_version: '>=1.3.0',
	default_options: ['c_std=c2x'])

platform_src = meson.get_external_property('platform_src')

src = [ platform_src ]
e = executable('embeddedtest', src)

prog_objcopy = find_program('objcopy')
input_bfdname = meson.get_external_property('input_bfdname')
custom_target('srecord',
	      build_by_default: true,
	      output: 'kernel.s19',
	      input: e,
	      command : [prog_objcopy, '-I'+input_bfdname,
			 '@INPUT@', '-Osrec', '@OUTPUT@'])

project('lab1prep', 'c',
	meson_version: '>=1.3.0',
	default_options: ['c_std=c23'])

subdir('src')

prog_objcopy = find_program('objcopy')
input_bfdname = meson.get_external_property('input_bfdname')
custom_target('copyvec_srecord',
	      build_by_default: true,
	      output: 'copyvec.s19',
	      input: copyvec,
	      command : [prog_objcopy, '-I'+input_bfdname,
			         '@INPUT@', '-Osrec', '@OUTPUT@'])
custom_target('copyelements_srecord',
	      build_by_default: true,
	      output: 'copyelements.s19',
	      input: copyelements,
	      command : [prog_objcopy, '-I'+input_bfdname,
			         '@INPUT@', '-Osrec', '@OUTPUT@'])

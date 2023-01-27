require_relative './coding_challenges/medium/sparse_arrays'

require 'byebug'

include Implementation

matching_strings([
	'aba',
	'baba',
	'aba',
	'xzxb',
], [
	'aba',
	'xzxb',
	'ab'
])
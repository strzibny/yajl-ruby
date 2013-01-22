require 'mkmf'
require 'rbconfig'

$CFLAGS << ' -Wall -funroll-loops'
$CFLAGS << ' -Wextra -O0 -ggdb3' if ENV['DEBUG']

have_library('yajl') or raise "Yajl library not found."

create_makefile('yajl/yajl')
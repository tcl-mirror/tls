#
# Copyright (C) 1997-1999 Matt Newman <matt@novadigm.com>
#
# $Header: /cvs/tcl/tls/tests/tlsCiphers.tcl,v 1.3 1999/08/21 23:15:57 matt Exp $
#

set dir [file dirname [info script]]
cd $dir
source tls.tcl

if {[llength $argv] == 0} {
    puts stderr "Usage: ciphers protocol ?verbose?"
    exit 1
}
puts [join [eval tls::ciphers $argv] \n]
exit 0

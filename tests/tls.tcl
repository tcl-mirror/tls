#
# Copyright (C) 1997-1999 Matt Newman <matt@novadigm.com>
#
# $Header: /cvs/tcl/tls/tests/tls.tcl,v 1.10 1999/09/06 19:25:30 matt Exp $
#
set dir [file dirname [info script]]
regsub {\.} [info tclversion] {} vshort
if {$tcl_platform(platform) == "windows"} {
    if {[info exists tcl_platform(debug)]} {
	load $dir/../win/Debug$vshort/tls.dll
    } else {
	load $dir/../win/Release$vshort/tls.dll
    }
} else {
    load [glob $dir/../unix/libtls*]
}

proc bgerror {err} {
    global errorInfo
    puts stderr "BG Error: $errorInfo"
}

source $dir/../library/tls.tcl
set tls::debug 2


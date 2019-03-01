#!/usr/bin/perl
package Bio;

use strict;
use warnings;

BEGIN {
    require Exporter;

    # Set the version for version checking.
    our $Version = 1.00;

    # Inherit from Exporter to export functions and variables.
    our @ISA = qw(Exporter);

    # Functions and variables which are exported by default.
    our @EXPORT = qw();

    # Functions and variables which can be optionally exported.
    our @EXPORT_OK = qw();
}

# TODO: Add subroutines.

# Mandatory true return value.
1;

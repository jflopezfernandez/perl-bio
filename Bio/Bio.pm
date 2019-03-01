#!/usr/bin/perl
package Bio;

use strict;
use warnings;

use re 'eval';

BEGIN {
    require Exporter;

    # Set the version for version checking.
    our $Version = 1.00;

    # Inherit from Exporter to export functions and variables.
    our @ISA = qw(Exporter);

    # Functions and variables which are exported by default.
    our @EXPORT = qw(CountMonomer);

    # Functions and variables which can be optionally exported.
    our @EXPORT_OK = qw();
}

# TODO: Add subroutines.
sub CountMonomer {
    my ($base, $original) = @_;

    if ($base !~ /[ACGTU]/isx) {
        print "Unrecognized monomer passed in.\n";

        return -1;
    }

    my $sequence = $original;

    my $count = 0;

    # $count = 3;
    # $count = ($sequence =~ tr/A//);
    # $count = ($sequence =~ tr/(?{ print "A"; })//);
    # $count = ($sequence =~ tr/(?{ $monomer = $base; })(?{ print "$^R"; })//);
    # $count = ($sequence =~ tr/$rexp//);
    # $count = ($sequence =~ tr/(??{ print $base; })//);

    my $seqlen = length($sequence);

    for (my $i = 0; $i < $seqlen; $i++) {
        my $r = (substr($sequence, $i, 1) ne $base);

        substr($sequence, $i, 1, $r);
    }

    print "$sequence\n\n";

    return $count;
}

# Mandatory true return value.
1;

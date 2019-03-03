#!/usr/bin/perl

#use strict; use warnings;
use String::Random;

print "This program generates a specified number of random files within its working directory!\n";
print "Are you sure you wish to continue? [y or n] "; $decision = <STDIN>;
chomp $decision;

#Begin work
if ($decision eq "y")
{
    print "How many files should be generated? "; $num_to_gen = <STDIN>;
    chomp $num_to_gen;
    my $string_gen = String::Random->new;
    for (my $i = 0; $i < $num_to_gen; $i++)
    {
        $file = ($string_gen->randpattern("nnnnn")).'.txt';
        open(FH, '>'.$file) or die "error";
        close $file;
    }
    print "Done.\n";
}

print "Program terminating...\n";
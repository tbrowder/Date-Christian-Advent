[![Actions Status](https://github.com/tbrowder/Date-Christian-Advent/actions/workflows/linux.yml/badge.svg)](https://github.com/tbrowder/Date-Christian-Advent/actions) [![Actions Status](https://github.com/tbrowder/Date-Christian-Advent/actions/workflows/macos.yml/badge.svg)](https://github.com/tbrowder/Date-Christian-Advent/actions) [![Actions Status](https://github.com/tbrowder/Date-Christian-Advent/actions/workflows/windows.yml/badge.svg)](https://github.com/tbrowder/Date-Christian-Advent/actions)

NAME
====

Date::Christian::Advent - Provides routines to calculate the date of the First Sunday of Advent in the Christian calendar

SYNOPSIS
========

```raku
use Date::Christian::Advent;
say Advent-Sunday 2021; # OUTPUT: «2021-11-28␤»
```

DESCRIPTION
===========

Date::Christian::Advent is a module which provides three subroutines to calculate the date of the First Sunday of Advent in the Christian calendar. The three routines are provided so that, eventually, they might be measured for speed to determine the best for use in another module.

The three routines all take a year as their only argument and return a `Date` object:

    sub Advent-Sunday($year --> Date) is export {...}
    sub Advent-Sunday2($year --> Date) is export {...}
    sub Advent-Sunday3($year --> Date) is export {...}

Method 1: Find the Sunday closest to November 30 (The Feast of St. Andrew), either before or after. If November 30th is a Sunday, then that's First Advent and St. Andrew gets moved. [Source: Malcolm Heath <malcolm@indeterminate.net>]

Method 2: Find the Sunday following the last Thursday in November. [Source: Malcolm Heath <malcolm@indeterminate.net>]

Method 3: Find the 4th Sunday before Christmas, not counting the Sunday which may be Christmas. Note this is the method attempted by the author of the Perl CPAN module `DateTime::Calendar::Liturgical::Christian`, but it was wrong as noted in the bug report on the CPAN site.

Note: Methods 1 and 2 were suggested by author of the bug report filed with the Perl CPAN module `DateTime::Calendar::Liturgical::Christian` which was partially the inspiration for this module.

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

© 2021-2024 Tom Browder

This library is free software; you may redistribute or modify it under the Artistic License 2.0.


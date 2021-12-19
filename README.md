[![Actions Status](https://github.com/tbrowder/Date-Christian-Advent/workflows/test/badge.svg)](https://github.com/tbrowder/Date-Christian-Advent/actions)

NAME
====

Date::Christian::Advent - Provides routines to calculate the date of the First Sunday of Advent in the Christian calendar

SYNOPSIS
========

```raku
use Date::Christian::Advent;
say Advent-Sunday 2021;
```

DESCRIPTION
===========

Date::Christian::Advent is a module which provides three subroutines to calculate the date of the First Sunday of Advent in the Christian calendar. The three routines are provided so that, eventually, they might be measured for speed to determine the best for use in another module.

The three routines all take a year as their only argument and return a `Date` object:

    sub Advent-Sunday($year --> Date) is export {...}
    sub Advent-Sunday2($year --> Date) is export {...}
    sub Advent-Sunday3($year --> Date) is export {...}

1. The first method the detrmine the 

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2021 Tom Browder

This library is free software; you may redistribute or modify it under the Artistic License 2.0.


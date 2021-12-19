unit module Date::Christian::Advent;

sub Advent-Sunday($y --> Date) is export {
    # Method 1: Find the Sunday closest to November 30 (The Feast of
    # St. Andrew). If November 30 is a Sunday, St. Andrew gets moved.
    # Source: Malcolm Heath <malcolm@indeterminate.net>
    my $fsa = Date.new($y, 11, 30);
    my $fsa-dow = $fsa.day-of-week; # 1..7 (Mon..Sun)
    # sun mon tue wed thu fri sat sun
    #  7   1   2   3   4   5   6   7
    #  0   1   2   3  -3  -2  -1   0
    if $fsa-dow == 7 {
        # bingo!
        return $fsa
    }
    elsif $fsa-dow < 4 {
        # closest to previous Sunday
        return $fsa - $fsa-dow
    }
    else {
        # closest to following Sunday
        return $fsa + (7 - $fsa-dow)
    }
}

sub Advent-Sunday2($y --> Date) is export {
    # Method 2: Find the Sunday following the last Thursday in
    # November.
    # Source: Malcolm Heath <malcolm@indeterminate.net>
    my $d = Date.new($y, 11, 30); # last day of November
    my $dow = $d.day-of-week;
    while $dow != 4 {
        $d -= 1;
        $dow = $d.day-of-week;
    }
    # found last Thursday in November
    # following Sunday is 3 days hence
    $d += 3
}

sub Advent-Sunday3($y --> Date) is export {
    # Method 3: Find the 4th Sunday before Christmas, not counting the
    # Sunday which may be Christmas.  Note this is the method attempted
    # by the Perl author but it was wrong as noted in the bug report
    # on the CPAN site.
    my $d = Date.new($y, 12, 25); # Christmas
    my $dow = $d.day-of-week;
    if $dow == 7 {
        # Christmas is on Sunday, count 28 days back.
        return $d - 28
    }
    else {
        # find prev Sunday, count 21 days back from that
        # sun mon tue wed thu fri sat sun
        #  7   1   2   3   4   5   6   7
        #  0   1   2   3  -3  -2  -1   0
        return $d - $dow - 21
    }
}

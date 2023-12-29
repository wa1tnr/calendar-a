\ Fri 29 Dec 02:38:33 UTC 2023


decimal
: cal_count 3 ;

: calendar ( -- )
  20 spaces
  43 dup dup
  cal_count 1 -
  for cr .s cr emit next
  cr .s cr
  ." DEPTH: " depth . cr
  ." Exiting now. " cr
;

\ end

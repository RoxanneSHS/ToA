BEGIN ~Z_MARL2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_NOMO2~ 1
END

IF ~True()~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ZMarlikFlee","GLOBAL",2)~ EXIT
END

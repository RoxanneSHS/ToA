BEGIN ~Z_GALF2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_GALA2~ 1
END

IF ~True()~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_GALA2~ 2
END

IF ~True()~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ZGalorGasthaus", "GLOBAL", 1)~ EXIT
END
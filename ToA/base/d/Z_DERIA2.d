BEGIN ~Z_DERIA2~

IF ~Global("ZDeriaTalked","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~Kill(Myself)~ EXIT
END

IF ~Global("ZDeriaTalked","GLOBAL",0)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

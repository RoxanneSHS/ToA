BEGIN ~Z_GALA3~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_GALF3~ 0
END

IF ~True()~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_GALF3~ 2
END

IF ~True()~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~Z_GALF3~ 3
END

IF ~True()~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~Z_GALF3~ 4
END

IF ~True()~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXTERN ~Z_GALF3~ 5
END

IF ~True()~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ZIntoPrison","GLOBAL",2)~ EXIT
END

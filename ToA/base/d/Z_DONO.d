BEGIN ~Z_DONO~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 7
END

IF ~Global("ZDonoTalked","LOCALS",0)~ THEN BEGIN 6
  SAY @2
  IF ~~ THEN REPLY @1 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @6
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @7
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @9
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @10
  IF ~~ THEN DO ~SetGlobal("ZDonoTalked","LOCALS",1)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @11
  IF ~~ THEN REPLY @12 EXIT
  IF ~PartyHasItem("z_tafel1")~ THEN REPLY @13 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @14
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 15
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("ZDonoTalked","LOCALS",1)~ THEN BEGIN 16
  SAY @16
  IF ~PartyHasItem("z_tafel1")
PartyHasItem("z_tafel2")~ THEN REPLY @17 DO ~TakePartyItem("z_tafel1")
TakePartyItem("z_tafel2")
SetGlobal("ZDonoTalked","LOCALS",2)
SetGlobal("ZTafeln","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @18 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @19
  IF ~Global("ZIbarTalked","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("ZDonoTalked","LOCALS",3)
SetGlobal("ZNathCave","GLOBAL",1)~ GOTO 20
  IF ~~ THEN REPLY @21 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("ZDonoTalked","LOCALS",2)~ THEN BEGIN 19
  SAY @22
  IF ~Global("ZIbarTalked","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("ZDonoTalked","LOCALS",3)
SetGlobal("ZNathCave","GLOBAL",1)~ GOTO 20
  IF ~~ THEN REPLY @21 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("ZDonoTalked","LOCALS",3)~ THEN BEGIN 21
  SAY @24
  IF ~~ THEN EXIT
END
SelectMission("m3")

--SetMissionResetPlayerInCar("m5_carstart")
--SetDynaLoadData("l7z6.p3d;l7r6.p3d;")
SetMissionResetPlayerOutCar("m2_wiggum","level7_carstart")
SetDynaLoadData("l7z1.p3dl7r1.p3dl7r7.p3d")

UsePedGroup(5)

AddStage(2)
RESET_TO_HERE()
	SetStageMessageIndex(12)
	AddObjective("getin")
		SetObjTargetVehicle("current")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(15) AddCondition("timeout") CloseCondition()
		else
           SetStageTime(30) AddCondition("timeout") CloseCondition()
        end
CloseStage()

AddStage()
	SetStageMessageIndex(03)
	SetHUDIcon( "sports_v" )
	SetMaxTraffic(3)
	AddStageVehicle("cBlbart","m3_ai_start","chase","Missions/level07/M4chase.con")  
	AddObjective("losetail")
		SetObjTargetVehicle("cBlbart")
		SetObjDistance(175)
		RemoveNPC("homer")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(25) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(30) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(40) AddCondition("timeout") CloseCondition()
        end
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
CloseStage()

AddStage()
	SetHUDIcon("pwrplant")
	SetStageMessageIndex(04)
	AddObjective("goto")
		SetDestination("power_plant","carsphere")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(60) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(75) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(95) AddCondition("timeout") CloseCondition()
        end
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
CloseStage()

AddStage(3)
	AddCollectibleStateProp("bombbarrel","m3_barrel_1", 2)
	SetStageMessageIndex(221)
	SetHUDIcon( "barrel" )
	AddObjective( "pickupitem" )
		SetPickupTarget("bombbarrel")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(90) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(100) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(120) AddCondition("timeout") CloseCondition()
        end
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
CloseStage()

AddStage(1)
--RESET_TO_HERE()
	SetStageMessageIndex(202)
	SetHUDIcon( "playgrou" )
	SetMaxTraffic(4)
	AddObjective( "goto" )
		TurnGotoDialogOff()
		AddNPC("homer", "m3_hom_loc2")
		SetDestination( "m2_playground", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
	SetStageTime(100)
	AddCondition( "timeout" )
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	AddCondition( "keepbarrel", 1 )
	CloseCondition()
	SetSwapDefaultCarLocator("m4_carstart")
	SetSwapPlayerLocator("m3_wig_loc")
StageStartMusicEvent("M3_drama")
CloseStage()

AddStage()
	SetMaxTraffic(0)
	AddObjective("timer")
		AddNPC("homer", "m3_hom_loc2")
		StayInBlack()
		SetDurationTime(1)
	CloseObjective()
CloseStage()

AddStage("final")
	AddObjective("dialogue")
		AddNPC("homer", "m3_hom_loc2")
		SetCamBestSide( "m3_bestside_3" )
		AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		AmbientAnimationRandomize( 0, 0 )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_thinking" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_hands_in_air" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_yes" )
		SetDialogueInfo("homer","wiggum","ashtray",0)
		SetDialoguePositions("m3_wig_loc","m3_hom_loc2","m4_carstart")
	CloseObjective()
CloseStage()

CloseMission()


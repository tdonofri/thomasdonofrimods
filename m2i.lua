SelectMission("m2")

SetMissionResetPlayerInCar("m2_carstart")
SetDynaLoadData("l7z3.p3dl7r2.p3dl7r3.p3d")

UsePedGroup(3)

AddStage(0)
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

AddStage(0)
	SetStageMessageIndex(202)
	SetHUDIcon( "playgrou" )
	AddObjective( "goto" )
		AddNPC("cbg", "m2_cbg_sd")
		SetDestination( "m2_playground", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
CloseStage()

AddStage()
	RESET_TO_HERE()
	SetStageMessageIndex(84)
	SetHUDIcon( "sports_v" )
	SetMaxTraffic(3)
	AddStageVehicle("cBlbart","m2_AI_carstart","evade","Missions/level07/M2chase.con")  
	SetVehicleAIParams( "cBlbart", 50, 51 ) -- all vehicles
	AddStageWaypoint( "m2_probe_1" )
	AddStageWaypoint( "m2_probe_2" )
	AddStageWaypoint( "m2_probe_4" )
	AddStageWaypoint( "m2_probe_5" )
	AddStageWaypoint( "m2_probe_6" )
	AddStageWaypoint( "m2_probe_10" )
	AddObjective("follow")
		SetObjTargetVehicle("cBlbart")
	CloseObjective()
	AddCondition("followdistance")
		if Mode.IsHard then
    		SetFollowDistances(0, 125)
		else
			SetFollowDistances(0, 155)	
		end
		SetCondTargetVehicle("cBlbart")
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
	SetStageMessageIndex(01)
	SetHUDIcon("homer")
	AddObjective("talkto")
		AddNPC("homer","m2_homer")
		SetTalkToTarget("homer", 0, 0)
	CloseObjective()
CloseStage()

AddStage()
	AddObjective("dialogue")
		AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		AmbientAnimationRandomize( 0, 0 )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_hands_in_air" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_no" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_yes" )
		AddAmbientPcAnimation( "dialogue_shake_hand_in_air" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_thinking" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_yes" )
		SetCamBestSide( "m2_bestside_1" )
		SetDialogueInfo("wiggum","homer","saviour",0)
		SetDialoguePositions("m2_wiggum","m2_homer","m2_carstart")
	CloseObjective()
CloseStage()

AddStage()
	SetStageMessageIndex(02)
	SetHUDIcon("barrel")
	AddObjective("delivery")
		AddCollectible("m2_nuc_1","bombbarrel")
		AddCollectible("m2_nuc_2","bombbarrel")
		AddCollectible("m2_nuc_3","bombbarrel")
		AddCollectible("m2_nuc_4","bombbarrel")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(23) AddCondition("timeout") CloseCondition()
		else
           SetStageTime(30) AddCondition("timeout") CloseCondition()
        end
	StageStartMusicEvent("M2_drama")
CloseStage()

AddStage()
	SetStageMessageIndex(03)
	AddObjective("goto")
		SetDestination("m2_backyard","triggersphere")
		AddNPC("homer","m2_homer")
	CloseObjective()
	SetStageTime(30)
	AddCondition("timeout")
	CloseCondition()
CloseStage()

AddStage()
	SetStageMessageIndex(01)
	SetHUDIcon("homer")
	AddObjective("talkto")
		AddNPC("homer","m2_homer")
		SetTalkToTarget("homer", 0, 0)
	CloseObjective()
CloseStage()

AddStage("final")
	AddObjective("dialogue")
		AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		AmbientAnimationRandomize( 0, 0 )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_hands_in_air" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_no" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_yes" )
		AddAmbientPcAnimation( "dialogue_shake_hand_in_air" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_thinking" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_yes" )
		SetCamBestSide( "m2_bestside_1" )
		SetDialogueInfo("wiggum","homer","nuclear",0)
		SetDialoguePositions("m2_wiggum","m2_homer","m2_carstart")
	CloseObjective()
CloseStage()

CloseMission()
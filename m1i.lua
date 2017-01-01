SelectMission("m1")

if Mode.IsHard then
SetMissionResetPlayerOutCar("m5_homertalk", "m5_carstart")
else
SetMissionResetPlayerInCar("m5_carstart")
end
SetDynaLoadData("l7z6.p3d;l7r6.p3d;")

UsePedGroup(5)

AddStage()
if Mode.IsHard then
	RESET_TO_HERE()
end
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
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
if Mode.IsEasy then
RESET_TO_HERE()
end
if Mode.IsNormal then
RESET_TO_HERE()
end
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
	SetStageMessageIndex(02)
	SetHUDIcon("bartroom")
	AddObjective("goto")
		SetDestination("m1_cc","carsphere")
		AddNPC("zmale1","m1_zomb")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(85) AddCondition("timeout") CloseCondition()
	end
	if Mode.IsNormal then
           SetStageTime(95) AddCondition("timeout") CloseCondition()
    end
	if Mode.IsEasy then
           SetStageTime(105) AddCondition("timeout") CloseCondition()
    end
	AddCondition("timeout")
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	ShowStageComplete()
CloseStage()

AddStage()
	SetStageMessageIndex(03)
	AddObjective("talkto")
		AddNPC("zmale1","m1_zomb")
		SetTalkToTarget("zmale1", 0, 0)
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(10) AddCondition("timeout") CloseCondition()
	end
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
		SetDialogueInfo("wiggum","zmale1","zomb",0)
		SetDialoguePositions("m1_wiggu","m1_zomb","m1_bestside_1")
	CloseObjective()
CloseStage()

AddStage(2)
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
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
	SetStageMessageIndex(04)
	SetHUDIcon("kwike")
	AddStageVehicle("ambul","m1_ambul","NULL","Missions/level01/M6dump.con", "jasper")
	AddObjective("goto")
		SetDestination("m1_kwike","carsphere")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(30) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
			SetStageTime(40) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsEasy then
           SetStageTime(60) AddCondition("timeout") CloseCondition()
        end
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	ShowStageComplete()
CloseStage()

AddStage()
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
	SetStageMessageIndex(05)
	SetHUDIcon("blood")
	AddStageWaypoint( "m1_ambul_1" )
	AddStageWaypoint( "m1_ambul_3" )
	AddStageWaypoint( "m1_ambul_4" )
	ActivateVehicle("ambul","NULL","target")
	AddObjective("dump")
		SetObjTargetVehicle("ambul")
		AddCollectible("m1_medkit_1","map")
		AddCollectible("m1_medkit_2","sockg")
		AddCollectible("m1_medkit_3","record")
		AddCollectible("m1_medkit_4","medkit")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(45) AddCondition("timeout") CloseCondition()
	end
	if Mode.IsNormal then
           SetStageTime(60) AddCondition("timeout") CloseCondition()
    end
	if Mode.IsEasy then
           SetStageTime(75) AddCondition("timeout") CloseCondition()
    end
	AddCondition("followdistance")
		if Mode.IsHard then
    		SetFollowDistances(0, 150)
		else
			SetFollowDistances(0, 250)	
		end	
		SetCondTargetVehicle("ambul")
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	ShowStageComplete()
CloseStage()

AddStage()
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
	SetStageMessageIndex(02)
	SetHUDIcon("bartroom")
	AddObjective("goto")
		SetDestination("m1_cc","carsphere")
		AddNPC("zmale1","m1_zomb")
	CloseObjective()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	ShowStageComplete()
CloseStage()

AddStage()
	SetStageMessageIndex(06)
	SetFadeOut(1.5)
	AddObjective("talkto")
		AddNPC("zmale1","m1_zomb")
		SetTalkToTarget("zmale1", 0, 0)
	CloseObjective()
CloseStage()

AddStage()
	AddObjective("timer")
		SetDurationTime(1.5)
		RemoveNPC("zmale1")
	CloseObjective()
CloseStage()

AddStage("final")
	AddObjective("timer")
		SetDurationTime(1.5)
		AddNPC("male1","m1_zomb")
	CloseObjective()
CloseStage()

CloseMission()


--dialogue_hands_in_air
--dialogue_hands_on_hips
--dialogue_scratch_head
--dialogue_shaking_fist
--dialogue_thinking
--dialogue_yes
--dialogue_no
--dialogue_cross_arms
--dialogue_open_arm_hand_gesture
--dialogue_shake_hand_in_air

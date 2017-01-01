SelectMission("m4")

SetMissionResetPlayerInCar("m4_bart_car_loc")
SetDynaLoadData("l7z3.p3d;l7r2.p3d;l7r3.p3d;")
InitLevelPlayerVehicle("bart_v","m4_bart_car_loc","OTHER")
SetForcedCar()

UsePedGroup(3)

AddStage(0)
	RESET_TO_HERE()
	SetStageMessageIndex(02)
	SetHUDIcon( "trynsave" )
	AddObjective( "goto" )
		SetDestination( "m4_gas", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(43) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(55) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(75) AddCondition("timeout") CloseCondition()
        end
	AddCondition( "timeout" )
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
--AddStage("final")
	SetStageMessageIndex(03)
	SetHUDIcon("lasergun")
	AddObjective("delivery")
		AddCollectible("m4_laser_1","laserbox_crate")
		AddCollectible("m4_laser_2","lasergun")
		AddCollectible("m4_laser_3","lasergun")
		AddCollectible("m4_laser_4","laserbox_crate")
		AddCollectible("m4_laser_5","laserbox_crate")
		AddCollectible("m4_laser_6","lasergun")
		AddCollectible("m4_laser_7","lasergun")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(27) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(30) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(45) AddCondition("timeout") CloseCondition()
        end
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	SetCompletionDialog("sellout","bart")
CloseStage()

AddStage()
	SetStageMessageIndex(04)
	SetHUDIcon("retire")
	AddObjective( "goto" )
		AddNPC("grandpa","m4_gramp_loc")
		SetDestination( "m4_retire", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(27) AddCondition("timeout") CloseCondition()
		end
		if Mode.IsNormal then
           SetStageTime(35) AddCondition("timeout") CloseCondition()
        end
		if Mode.IsEasy then
           SetStageTime(45) AddCondition("timeout") CloseCondition()
        end
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	SwapInDefaultCar()
	SetSwapDefaultCarLocator("m4_talk_car_loc")
	SetSwapForcedCarLocator("m4_bart_car_loc")
	SetSwapPlayerLocator("m4_wig_talk2")
CloseStage()

AddStage()
	SetMaxTraffic(0)
	AddObjective("timer")
		AddNPC("grandpa", "m4_gramp_talk")
		StayInBlack()
		SetDurationTime(1)
	CloseObjective()
CloseStage()

AddStage("final")
	AddObjective("dialogue")
		AddNPC("grandpa", "m4_gramp_talk")
		SetCamBestSide( "m4_bestside_5" )
		AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		AmbientAnimationRandomize( 0, 0 )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_thinking" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_hands_in_air" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_yes" )
		SetDialogueInfo("wiggum","grandpa","wat",0)
		SetDialoguePositions("m4_wig_talk2","m4_gramp_talk","m4_talk_car_loc")
	CloseObjective()
CloseStage()

CloseMission()

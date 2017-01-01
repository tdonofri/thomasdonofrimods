SelectMission("m6")

SetMissionResetPlayerInCar("m6_snake_carstart")
SetDynaLoadData("l7z3.p3d;l7r2.p3d;l7r3.p3d;")
InitLevelPlayerVehicle("moe_v","m6_snake_carstart","OTHER")
SetNumValidFailureHints( 5 )
UsePedGroup(3)

--This is a forced car mission
SetForcedCar()

AddStage()
if Mode.IsHard then
	SetMaxTraffic(5)
else
	SetMaxTraffic(3)
end
	SetStageMessageIndex(03)
	SetHUDIcon("kwike")
	AddObjective("goto")
		SetDestination("m1_kwike","carsphere")
	CloseObjective()
		if Mode.IsHard then
           SetStageTime(25) AddCondition("timeout") CloseCondition()
		else
           SetStageTime(30) AddCondition("timeout") CloseCondition()
        end
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	AddCondition( "damage" )
		SetCondMinHealth( 0.0 )
		SetCondTargetVehicle( "current" )
	CloseCondition()
	SetCompletionDialog("moe","moe")
CloseStage()

AddStage()
	SetStageMessageIndex(04)
	SetHUDIcon("blood")
	AddObjective("delivery")
	if Mode.IsHard then
		AddCollectible("m6_medkit_1","medkit") AddCollectible("m6_medkit_2","medkit") AddCollectible("m6_medkit_3","medkit") AddCollectible("m6_medkit_4","medkit") AddCollectible("m6_medkit_5","medkit") AddCollectible("m6_medkit_6","medkit") AddCollectible("m6_medkit_7","medkit") AddCollectible("m6_medkit_8","medkit")	 AddCollectible("m6_medkit_9","medkit") AddCollectible("m6_medkit_10","medkit") AddCollectible("m6_medkit_11","medkit")
	else
		AddCollectible("m6_medkit_1","medkit") AddCollectible("m6_medkit_2","medkit") AddCollectible("m6_medkit_3","medkit") AddCollectible("m6_medkit_4","medkit") AddCollectible("m6_medkit_5","medkit") AddCollectible("m6_medkit_6","medkit") AddCollectible("m6_medkit_7","medkit") AddCollectible("m6_medkit_8","medkit")
	end
	CloseObjective()
		if Mode.IsNormal then
			SetStageTime(30) AddCondition("timeout") CloseCondition()
		else
			SetStageTime(40) AddCondition("timeout") CloseCondition()
		end
	StageStartMusicEvent("M6_drama")
CloseStage()

AddStage(2)
	SetStageMessageIndex(12)
	AddObjective("getin")
		SetObjTargetVehicle("current")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(25) AddCondition("timeout") CloseCondition()
	else
           SetStageTime(30) AddCondition("timeout") CloseCondition()
    end
CloseStage()

AddStage()
	SetMaxTraffic(5)
	SetStageMessageIndex(02)
	SetHUDIcon( "playgrou" )
	if Mode.IsHard then
           AddStageVehicle("cBlbart","roadblock_1","NULL","MedRace/AI_1st.con") AddStageVehicle("cProbe","roadblock_2","NULL","MedRace/AI_2nd.con") AddStageVehicle("cSedan","roadblock_3","NULL","MedRace/AI_2nd.con")
	else
           AddStageVehicle("cBlbart","roadblock_1","NULL","MedRace/AI_1st.con") AddStageVehicle("cProbe","roadblock_2","NULL","MedRace/AI_2nd.con")
    end
	AddObjective( "goto" )
		SetDestination( "m2_playground", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
	if Mode.IsHard then
           SetStageTime(27) AddCondition("timeout") CloseCondition()
	else
           SetStageTime(35) AddCondition("timeout") CloseCondition()
    end
SwapInDefaultCar()
SetSwapDefaultCarLocator("m6_snake_carstart")
SetSwapForcedCarLocator("m5_burns_sd")
SetSwapPlayerLocator("m2_homer_start")
StageStartMusicEvent("M6_drama")
CloseStage()

AddStage("final")
	SetMaxTraffic(0)
	AddObjective("timer")
		StayInBlack()
		SetDurationTime(1)
	CloseObjective()
CloseStage()

CloseMission()

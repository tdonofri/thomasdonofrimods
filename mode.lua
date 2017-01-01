Mode = {}

Mode.Current = GetSetting("Mode") + 1

Mode.EasyMode = 1
Mode.NormalMode = 2
Mode.HardMode = 3

Mode.IsEasy = Mode.Current == Mode.EasyMode
Mode.IsNormal = Mode.Current == Mode.NormalMode
Mode.IsHard = Mode.Current == Mode.HardMode
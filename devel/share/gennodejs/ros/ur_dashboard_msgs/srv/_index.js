
"use strict";

let AddToLog = require('./AddToLog.js')
let GetRobotMode = require('./GetRobotMode.js')
let RawRequest = require('./RawRequest.js')
let GetProgramState = require('./GetProgramState.js')
let GetLoadedProgram = require('./GetLoadedProgram.js')
let Popup = require('./Popup.js')
let GetSafetyMode = require('./GetSafetyMode.js')
let Load = require('./Load.js')
let IsInRemoteControl = require('./IsInRemoteControl.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let IsProgramRunning = require('./IsProgramRunning.js')

module.exports = {
  AddToLog: AddToLog,
  GetRobotMode: GetRobotMode,
  RawRequest: RawRequest,
  GetProgramState: GetProgramState,
  GetLoadedProgram: GetLoadedProgram,
  Popup: Popup,
  GetSafetyMode: GetSafetyMode,
  Load: Load,
  IsInRemoteControl: IsInRemoteControl,
  IsProgramSaved: IsProgramSaved,
  IsProgramRunning: IsProgramRunning,
};

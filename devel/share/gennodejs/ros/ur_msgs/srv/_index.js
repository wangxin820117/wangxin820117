
"use strict";

let SetPayload = require('./SetPayload.js')
let SetForceMode = require('./SetForceMode.js')
let SetAnalogOutput = require('./SetAnalogOutput.js')
let SetSpeedSliderFraction = require('./SetSpeedSliderFraction.js')
let GetRobotSoftwareVersion = require('./GetRobotSoftwareVersion.js')
let SetIO = require('./SetIO.js')

module.exports = {
  SetPayload: SetPayload,
  SetForceMode: SetForceMode,
  SetAnalogOutput: SetAnalogOutput,
  SetSpeedSliderFraction: SetSpeedSliderFraction,
  GetRobotSoftwareVersion: GetRobotSoftwareVersion,
  SetIO: SetIO,
};

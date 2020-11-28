
"use strict";

let PopulationControl = require('./PopulationControl.js')
let AGVControl = require('./AGVControl.js')
let ConveyorBeltControl = require('./ConveyorBeltControl.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let GetMaterialLocations = require('./GetMaterialLocations.js')
let SubmitTray = require('./SubmitTray.js')

module.exports = {
  PopulationControl: PopulationControl,
  AGVControl: AGVControl,
  ConveyorBeltControl: ConveyorBeltControl,
  VacuumGripperControl: VacuumGripperControl,
  GetMaterialLocations: GetMaterialLocations,
  SubmitTray: SubmitTray,
};

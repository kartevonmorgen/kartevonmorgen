import clientActions  from "./client";
import { Actions }    from "./server";

let serverActions = Actions;

module.exports = {
  ...clientActions, 
  ...serverActions
}
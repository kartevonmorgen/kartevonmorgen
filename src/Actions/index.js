import clientActions  from "./client";
import { Actions }    from "./server";

let serverActions = Actions;

export default {
  ...clientActions, 
  ...serverActions
}
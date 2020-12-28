import clientActions  from "./client";
import serverActions  from "./server";

export default {
  ...clientActions, 
  ...serverActions
}

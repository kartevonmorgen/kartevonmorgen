import * as clientActions from "./client";
export * from "./client";
import * as serverActions from "./server";
export * from "./server";

export default {
  ...clientActions, 
  ...serverActions
}

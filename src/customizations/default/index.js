import store    from "../../Store";
import Actions  from "../../Actions";

import config from "./config"


const beforeRenderHooks = [
  () => store.dispatch(Actions.setCustomizations(config)),
]


export default beforeRenderHooks
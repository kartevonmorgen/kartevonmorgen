import store    from "../../Store";
import Actions  from "../../Actions";

import RenderApp from "../../index"
import config from "./config"


const beforeRenderHooks = [
  () => store.dispatch(Actions.setCustomizations(config))
]


RenderApp(beforeRenderHooks)
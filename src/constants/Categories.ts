const IDS = {
  INITIATIVE: '2cd00bebec0c48ba9db761da48678134',
  EVENT: 'c2dc278a2d6a4b9b8a50cb606fc017ed',
  COMPANY: '77b3c33a92554bcf8e8c2c86cedd6f6f'
}

const NAMES = {
  [IDS.INITIATIVE]: 'initiative',
  [IDS.EVENT]: 'event',
  [IDS.COMPANY]: 'company',
}

const MAIN_IDS = [
  IDS.INITIATIVE,
  IDS.EVENT,
  IDS.COMPANY
]

const CSS_CLASS_SIZE = {
  [IDS.INITIATIVE]: 'pure-u-8-24',
  [IDS.EVENT]: 'pure-u-7-24',
  [IDS.COMPANY]: 'pure-u-9-24',
}

const c = {
  NAMES,
  IDS,
  MAIN_IDS,
  CSS_CLASS_SIZE
}

export {NAMES, IDS, MAIN_IDS, CSS_CLASS_SIZE}
export default c
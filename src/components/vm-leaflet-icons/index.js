import L                      from "leaflet";

import shadowImgUrl           from './images/shadow.png';
import shadowRetinaImgUrl     from './images/shadow-2x.png';

import companyImgUrl          from './images/company-plain.png';
import companyRetinaImgUrl    from './images/company-plain-2x.png';

import initiativeImgUrl       from './images/initiative-plain.png';
import initiativeRetinaImgUrl from './images/initiative-plain-2x.png';

import eventImgUrl            from './images/event-plain.png';
import eventRetinaImgUrl      from './images/event-plain-2x.png';

import unknownImgUrl          from './images/unknown-plain.png';
import unknownRetinaImgUrl    from './images/unknown-plain-2x.png';

const Icon = L.Icon.extend({
  options: {
    iconSize: [28, 40],
    iconAnchor: [14, 40],
    popupAnchor: [14, 15]
  }
});

const shadowOptions = {
  shadowSize: [34, 48],
  shadowAnchor: [17, 44],
  shadowUrl: shadowImgUrl,
  shadowRetinaUrl: shadowRetinaImgUrl
};

const urls = type => {
  switch (type) {
    case 'company':
      return {
        iconUrl: companyImgUrl,
        iconRetinaUrl: companyRetinaImgUrl,
      };
    case 'initiative':
      return {
        iconUrl: initiativeImgUrl,
        iconRetinaUrl: initiativeRetinaImgUrl
      };
    case 'event':
      return {
        iconUrl: eventImgUrl,
        iconRetinaUrl: eventRetinaImgUrl
      };
    default:
      return {
        iconUrl: unknownImgUrl,
        iconRetinaUrl: unknownRetinaImgUrl
      };
  }
}

const create = (opt={}) => {
  const NewIcon = opt.shadow ? Icon.extend({ options: shadowOptions }) : Icon;
  const type = typeof opt === 'string' ? opt : opt.category;
  return new NewIcon(urls(type));
};

export const icons = {
  company    : create('company'),
  initiative : create('initiative'),
  event      : create('event'),
  unknown    : create('unknown')
}

export default {
  create,
  Icon,
  icons,
}

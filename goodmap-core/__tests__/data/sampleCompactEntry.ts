import { IEntry } from '../../src/interfaces';

const sampleCompactEntry: IEntry = {
  id: 'cd1ac0d81679479fb85acdf59ce69a01',
  lat: 48.178974179634345,
  lng: 11.48422332084003,
  title: 'Kartoffelkombinat eG',
  description: 'Erntegemeinschaft im Sinne einer Solidarische Landwirtschaft durch Bio-Gemüsegärtnerei, die eigene, regionale Lebensmitteln produziert. Daneben eine Bio-Bäckerei und Akademie.',
  categories: ['77b3c33a92554bcf8e8c2c86cedd6f6f'],
  tags: ['gemüse', 'genossenschaft', 'gwö', 'gwö-bayern', 'regional', 'saisonal', 'solawi'],
  ratings: {
    total: 1.3333333333333333,
    diversity: 1,
    fairness: 0,
    humanity: 2,
    renewable: 1,
    solidarity: 2,
    transparency: 2,
  },
};

export default sampleCompactEntry;

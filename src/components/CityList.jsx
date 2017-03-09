const CityListElement = ({ city, onClick }) => {

  const address = city.address || {};
  const { state, country } = address;

  return (
    <li onClick={ev => {ev.preventDefault(); onClick(city)}}>
      <div className= "pure-g">
        <div className= "pure-u-23-24">
          <div>{
            address.city
              ? <span className= "city">{address.city}</span>
              : <div>
                  <span className= "prefix">Landkreis</span>
                  <span className= "county">{
                    (address.village ? (address.village + ' ') : '') + (country || '')
                  }</span>
              </div>
          }</div>
          <div>
            <span className = "state">{state}</span>
            <span className = "country">{country}</span>
          </div>
        </div>
        <div className = "pure-u-1-24 chevron">
          <i className = "fa fa-chevron-right" />
        </div>
      </div>
    </li>)
}

const CityList = ({ cities=[], onClick }) =>
    <div className= "city-list">
      <ul>{
        cities.map(c =>
          <CityListElement
            city    = {c}
            key     = {c.osm_id}
            onClick = {onClick} />
      )}</ul>
    </div>

module.exports = CityList

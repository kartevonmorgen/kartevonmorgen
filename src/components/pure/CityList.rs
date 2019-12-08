use crate::{entities::*, Mdl, Msg};
use seed::prelude::*;

pub fn view(mdl: &Mdl) -> Node<Msg> {
    let selectedColor = "rgba(0,0,0,0)";
    let cities = mdl.search.cities.iter().enumerate().take(5);
    let selectedCity = 0;
    let cities: Vec<_> = cities
        .map(|(city, index)| {
            CityListElement(
            // TODO:  city={city}
            // TODO:  isSelected={selectedCity === index}
            // TODO:  selectedColor={selectedColor} />
        )
        })
        .collect();
    ul![
        style! {
            St::ListStyle => "none";
            St::Margin => 0;
            St::Padding => 0;
        },
        cities
    ]
}

fn CityListElement(//city,
    //isSelected, 
    //selectedColor
) -> Node<Msg> {
    // TODO: onClick={ city => {
    // TODO:   dispatch(Actions.setCenter({
    // TODO:     lat: city.lat,
    // TODO:     lng: city.lon
    // TODO:   }));
    // TODO:   return dispatch(Actions.setSearchText(''));
    // TODO: }}

    li![
        style! {
            St::Cursor => "pointer";
            // TODO: padding: 12px 11px 12px 24px;
            // TODO: background-color: ${props => props.isSelected ? props.selectedColor : ""};
        },
        // TODO: simple_ev(Ev::Click, onClick(city)),
        // TODO: isSelected={isSelected}
        // TODO: selectedColor={selectedColor}>
        // TODO: <ResultRow>
        // TODO:   <div>
        // TODO:     <span className="city">{city.display_name}</span>
        // TODO:   </div>
        // TODO:   <div>
        // TODO:      margin: 0 12px;
        // TODO:     <FontAwesomeIcon icon="chevron-right" />
        // TODO:   </div>
        // TODO: </ResultRow>
    ]
}

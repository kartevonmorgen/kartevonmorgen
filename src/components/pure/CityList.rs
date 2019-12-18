use crate::entities::*;
use seed::prelude::*;

pub fn view<F, Ms>(cities: &[City], selectedCity: &Option<usize>, onClick: F) -> Node<Ms>
where
    Ms: Clone,
    F: Copy + Fn(City) -> Ms,
{
    ul![
        class!["city-list"],
        style! {
            St::ListStyle => "none";
            St::Margin => 0;
            St::Padding => 0;
        },
        cities
            .iter()
            .enumerate()
            .map(|(index, city)| CityListElement(city, *selectedCity == Some(index), onClick))
            .collect::<Vec<_>>()
    ]
}

fn CityListElement<F, Ms>(city: &City, isSelected: bool, onClick: F) -> Node<Ms>
where
    Ms: Clone,
    F: Fn(City) -> Ms,
{
    li![
        simple_ev(Ev::Click, onClick(city.clone())),
        style! {
            St::Cursor => "pointer";
            St::Padding => "12px 11px 12px 24px";
            St::BackgroundColor => if isSelected { "#000" } else { "" };
        },
        div![
            style! {
            St::Display => "flex";
            St::JustifyContent => "space-between";
            },
            div![span![class!["city"], city.display_name]],
            div![
                style! {
                    St::Margin => "0 12px";
                },
                i![class!["fa", "fa-chevron-right"]]
            ]
        ]
    ]
}

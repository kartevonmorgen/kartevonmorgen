use seed::prelude::*;

pub fn style() -> seed::dom_types::Style {
    style!{
        St::FlexGrow => 1;
        St::OverflowY => "scroll";
        St::BoxSizing => "border-box";
        // TODO:   ::-webkit-scrollbar {
        // TODO:     width: 10px;
        // TODO:     height: 10px;
        // TODO:   }
        // TODO:   ::-webkit-scrollbar-track {
        // TODO:     background: rgba(0,0,0,0);
        // TODO:   }
        // TODO:   ::-webkit-scrollbar-thumb {
        // TODO:     background: #999;
        // TODO:   }
        // TODO:   ::-webkit-scrollbar-thumb:hover {
        // TODO:     background: #666;
        // TODO:   }
    }
}

use std::{error::Error, fs::File, io::Write};

const SASS: &str = "style.sass";
const CSS: &str = "style.css";

fn compile_scss() -> Result<(), Box<dyn Error>> {
    println!("cargo:rerun-if-changed={}", SASS);
    let options = sass_rs::Options {
        output_style: sass_rs::OutputStyle::Compressed,
        precision: 4,
        indented_syntax: true,
        include_paths: vec![],
    };
    let css = sass_rs::compile_file(SASS, options)?;
    let mut f = File::create(CSS)?;
    f.write_all(&css.as_bytes())?;
    Ok(())
}

fn main() {
    if let Err(err) = compile_scss() {
        panic!("{}", err);
    }
}

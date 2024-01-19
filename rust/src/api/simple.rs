use image::{DynamicImage, GenericImage, ImageBuffer, Rgba};
use std::path::Path;

#[flutter_rust_bridge::frb(sync)] // Synchronous mode for simplicity of the demo
pub fn greet(name: String) -> String {
    format!("Hello, {name}!")
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}

pub fn make_watermark(watermark_text: String) -> DynamicImage {
    // Text watermark:
    let watermark_font = image::Font::try_from_bytes(include_bytes!("Roboto-Regular.ttf")).unwrap();
    let watermark_img = DynamicImage::new_text(watermark_text, watermark_font, 30).to_rgba8();

    let watermark_width = img.width() / 4; // Adjust as needed
    let watermark_height = watermark_img.height() * watermark_width / watermark_img.width();
    let watermark_img = watermark_img.resize(watermark_width, watermark_height, image::FilterType::Nearest);

    watermark_img
}

pub fn put_watermark(file_path: String, watermark_text: String) {
    // Use the open function to load an image from a Path.
    // `open` returns a `DynamicImage` on success.
    let mut img = image::open(&Path::new(file_path)).unwrap();

    let watermark_img = make_watermark(watermark_text);

    // Image watermark:
    // let watermark_img = image::open(&Path::new("path/to/watermark.png")).unwrap();

    // The dimensions method returns the images width and height.
    println!("dimensions {:?}", img.dimensions());

    // The color method returns the image's `ColorType`.
    println!("{:?}", img.color());

    let watermark_x = img.width() - watermark_img.width() - 10; // Adjust placement
    let watermark_y = img.height() - watermark_img.height() - 10;
    image::imageops::overlay(&mut img, &watermark_img, watermark_x, watermark_y);

    // Write the contents of this image to the Writer in PNG format.
    img.save("watermarked_image.jpg").unwrap();
}
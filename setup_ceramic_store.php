<?php
/**
 * Setup script for Ceramica Studio & WooCommerce Store
 */

define('WP_USE_THEMES', false);
require_once __DIR__ . '/wp-load.php';
require_once ABSPATH . 'wp-admin/includes/image.php';
require_once ABSPATH . 'wp-admin/includes/file.php';
require_once ABSPATH . 'wp-admin/includes/media.php';

echo "=== INITIALIZING CERAMICA STORE SETUP ===\n";

// 1. Update Site Info
update_option('blogname', 'CERAMICA');
update_option('blogdescription', 'Artisanal Handcrafted Ceramics & Stoneware Homeware');
update_option('woocommerce_currency', 'USD');
update_option('woocommerce_currency_pos', 'left');
update_option('woocommerce_enable_guest_checkout', 'yes');
update_option('woocommerce_enable_signup_and_login_from_checkout', 'yes');
update_option('woocommerce_enable_myaccount_registration', 'yes');

// 2. Import Media Images
$upload_dir = wp_upload_dir();
$source_dir = $upload_dir['basedir'] . '/ceramic_assets';

$image_map = [];
$sample_files = [
    'mug1.jpg'         => 'Handcrafted Speckled Mug',
    'vase1.jpg'        => 'Wabi-Sabi Terracotta Vase',
    'dinnerware1.jpg'  => 'Nordic Matte Dinnerware Set',
    'bowl1.jpg'        => 'Ceremonial Glazed Bowl',
    'planter1.jpg'     => 'Sage Stoneware Planter',
    'carafe1.jpg'      => 'Artisan Pour-Over Carafe',
    'platter1.jpg'     => 'Desert Clay Centerpiece Vessel',
    'potter_craft.jpg' => 'Potter Wheel Studio Craft',
];

foreach ($sample_files as $filename => $title) {
    $filepath = $source_dir . '/' . $filename;
    if (!file_exists($filepath)) {
        continue;
    }

    // Check if attachment already exists
    $existing = get_posts([
        'post_type'   => 'attachment',
        'meta_key'    => '_ceramic_asset_key',
        'meta_value'  => $filename,
        'posts_per_page' => 1
    ]);

    if (!empty($existing)) {
        $image_map[$filename] = $existing[0]->ID;
        echo "Found existing media for $filename (ID: {$existing[0]->ID})\n";
        continue;
    }

    // Copy to standard uploads directory
    $new_file = $upload_dir['path'] . '/' . $filename;
    copy($filepath, $new_file);

    $filetype = wp_check_filetype($filename, null);
    $attachment = [
        'guid'           => $upload_dir['url'] . '/' . basename($new_file),
        'post_mime_type' => $filetype['type'],
        'post_title'     => $title,
        'post_content'   => '',
        'post_status'    => 'inherit'
    ];

    $attach_id = wp_insert_attachment($attachment, $new_file);
    $attach_data = wp_generate_attachment_metadata($attach_id, $new_file);
    wp_update_attachment_metadata($attach_id, $attach_data);
    update_post_meta($attach_id, '_ceramic_asset_key', $filename);

    $image_map[$filename] = $attach_id;
    echo "Imported $filename as Attachment ID: $attach_id\n";
}

// 3. Create Product Categories
$categories = [
    'dinnerware' => 'Dinnerware & Tableware',
    'vases'      => 'Vases & Vessels',
    'mugs'       => 'Mugs & Cups',
    'planters'   => 'Planters & Botanical',
    'bowls'      => 'Artisanal Bowls'
];

$cat_ids = [];
foreach ($categories as $slug => $name) {
    $term = get_term_by('slug', $slug, 'product_cat');
    if (!$term) {
        $result = wp_insert_term($name, 'product_cat', ['slug' => $slug]);
        if (!is_wp_error($result)) {
            $cat_ids[$slug] = $result['term_id'];
            echo "Created Category: $name\n";
        }
    } else {
        $cat_ids[$slug] = $term->term_id;
        echo "Category exists: $name\n";
    }
}

// 4. Create Products
$products = [
    [
        'title'       => 'Wabi-Sabi Terracotta Amphora Vase',
        'price'       => '68.00',
        'regular'     => '85.00',
        'on_sale'     => true,
        'cat'         => ['vases'],
        'image'       => 'vase1.jpg',
        'short_desc'  => 'Sculptural terracotta vase with organic dual curved handles, crafted from raw iron-rich clay with an interior waterproof protective glaze.',
        'description' => 'Each Wabi-Sabi Amphora Vase is individually wheel-thrown and sculpted by hand in our studio. The exterior features an earthy unglazed texture that honors raw clay minimalism, while the interior is treated with a non-toxic clear glaze to safely hold floral arrangements. Standing at 9.5" in height, it creates an arresting centerpiece for mantlepieces, dining tables, and sunlit windowsills.',
        'sku'         => 'CRM-VAS-01',
        'featured'    => true
    ],
    [
        'title'       => 'Earth & Speckle Artisan Mug',
        'price'       => '34.00',
        'regular'     => '34.00',
        'on_sale'     => false,
        'cat'         => ['mugs'],
        'image'       => 'mug1.jpg',
        'short_desc'  => 'Wheel-thrown speckled stoneware mug with an ergonomic wide-grip handle and silky oatmeal mineral glaze. 12oz capacity.',
        'description' => 'Designed to elevate your slow morning coffee and mindful evening tea rituals. Hand-thrown on the potter’s wheel with iron-speckled stoneware clay and fired at 2350°F for extreme chip resistance and heat retention. 100% food-safe, microwave and dishwasher safe.',
        'sku'         => 'CRM-MUG-02',
        'featured'    => true
    ],
    [
        'title'       => 'Nordic Slate Matte Dinner Plate Set (Pair)',
        'price'       => '82.00',
        'regular'     => '98.00',
        'on_sale'     => true,
        'cat'         => ['dinnerware'],
        'image'       => 'dinnerware1.jpg',
        'short_desc'  => 'Set of two contemporary flat-bottom dinner plates with organic hand-pinched rims and velvet-matte slate glaze.',
        'description' => 'Transform your dining table into a culinary art gallery. These plates boast an understated silhouette with subtle tactile irregularities that celebrate handmade authenticity. Kiln-fired to high vitrification for commercial-grade durability. Measures 10.5" in diameter.',
        'sku'         => 'CRM-DIN-03',
        'featured'    => true
    ],
    [
        'title'       => 'Sun-Dappled Ceremonial Bowl',
        'price'       => '44.00',
        'regular'     => '44.00',
        'on_sale'     => false,
        'cat'         => ['bowls', 'dinnerware'],
        'image'       => 'bowl1.jpg',
        'short_desc'  => 'Hand-pinched stoneware bowl with warm honey-amber glaze pooling and textured unglazed outer rim.',
        'description' => 'Generously proportioned for nourishing grain bowls, hearty winter soups, or as an inspiring tabletop fruit display. Each bowl showcases natural glaze crystallization, ensuring no two pieces are ever completely identical.',
        'sku'         => 'CRM-BWL-04',
        'featured'    => true
    ],
    [
        'title'       => 'Ribbed Sage Stoneware Planter',
        'price'       => '48.00',
        'regular'     => '56.00',
        'on_sale'     => true,
        'cat'         => ['planters'],
        'image'       => 'planter1.jpg',
        'short_desc'  => 'Fluted vertical ribbing with soothing matte sage glaze. Includes matching drainage saucer to protect tabletops.',
        'description' => 'Give your cherished flora a breathable, natural sanctuary. The natural porous stoneware walls regulate moisture balance for healthy root development. Accommodates standard 5" to 6" nursery plants.',
        'sku'         => 'CRM-PLN-05',
        'featured'    => true
    ],
    [
        'title'       => 'Dune Ceramic Pour-Over & Carafe Set',
        'price'       => '74.00',
        'regular'     => '74.00',
        'on_sale'     => false,
        'cat'         => ['dinnerware', 'mugs'],
        'image'       => 'carafe1.jpg',
        'short_desc'  => 'Handcrafted ceramic pour-over dripper cone and matching 650ml pitcher for the perfect artisan brew ritual.',
        'description' => 'Engineered with internal spiral flutes to promote optimal bloom extraction and thermal stability. Stoneware ceramic retains water temperature far better than thin glass, producing a sweet, nuanced cup every time.',
        'sku'         => 'CRM-CAR-06',
        'featured'    => true
    ],
    [
        'title'       => 'Desert Clay Centerpiece Vessel',
        'price'       => '95.00',
        'regular'     => '120.00',
        'on_sale'     => true,
        'cat'         => ['vases'],
        'image'       => 'platter1.jpg',
        'short_desc'  => 'Monumental sculptural ceramic centerpiece vessel finished with tactile iron wash and architectural handles.',
        'description' => 'A statement artwork that anchors living spaces with earthy majesty. Formed using heavy grog clay for dramatic stone-like texture and fired in a wood-ash reduction atmosphere.',
        'sku'         => 'CRM-VES-07',
        'featured'    => true
    ],
    [
        'title'       => 'Earth Tones Tasting Cup (Set of 4)',
        'price'       => '58.00',
        'regular'     => '58.00',
        'on_sale'     => false,
        'cat'         => ['mugs'],
        'image'       => 'mug1.jpg',
        'short_desc'  => 'Hand-thrown handleless cups in four complementary mineral slips: Ochre, Terracotta, Slate, and Sandstone.',
        'description' => 'Tactile, comfortable, and versatile. Perfect for morning double-espressos, ceremonial matcha, botanical teas, or fine sake. Comes nestled in reusable natural linen storage pouch.',
        'sku'         => 'CRM-CUP-08',
        'featured'    => true
    ]
];

foreach ($products as $pdata) {
    // Check if exists
    $existing_product = get_page_by_title($pdata['title'], OBJECT, 'product');
    $product = new WC_Product_Simple($existing_product ? $existing_product->ID : null);

    $product->set_name($pdata['title']);
    $product->set_status('publish');
    $product->set_catalog_visibility('visible');
    $product->set_description($pdata['description']);
    $product->set_short_description($pdata['short_desc']);
    $product->set_sku($pdata['sku']);
    $product->set_regular_price($pdata['regular']);
    if ($pdata['on_sale']) {
        $product->set_sale_price($pdata['price']);
    } else {
        $product->set_sale_price('');
    }
    $product->set_price($pdata['price']);
    $product->set_manage_stock(false);
    $product->set_stock_status('instock');
    $product->set_featured($pdata['featured']);

    // Set categories
    $term_ids = [];
    foreach ($pdata['cat'] as $cslug) {
        if (isset($cat_ids[$cslug])) {
            $term_ids[] = $cat_ids[$cslug];
        }
    }
    $product->set_category_ids($term_ids);

    // Set image
    if (isset($image_map[$pdata['image']])) {
        $product->set_image_id($image_map[$pdata['image']]);
    }

    $pid = $product->save();
    echo "Saved Product: {$pdata['title']} (ID: $pid)\n";
}

// 5. Build Homepage Content with Great Layout
$craft_img_url = isset($image_map['potter_craft.jpg']) ? wp_get_attachment_url($image_map['potter_craft.jpg']) : '';
$hero_bg_url   = isset($image_map['vase1.jpg']) ? wp_get_attachment_url($image_map['vase1.jpg']) : '';
$vase_img_url  = isset($image_map['vase1.jpg']) ? wp_get_attachment_url($image_map['vase1.jpg']) : '';
$mug_img_url   = isset($image_map['mug1.jpg']) ? wp_get_attachment_url($image_map['mug1.jpg']) : '';
$plate_img_url = isset($image_map['dinnerware1.jpg']) ? wp_get_attachment_url($image_map['dinnerware1.jpg']) : '';
$bowl_img_url  = isset($image_map['bowl1.jpg']) ? wp_get_attachment_url($image_map['bowl1.jpg']) : '';

$homepage_html = <<<HTML
<!-- HERO SECTION -->
<div class="ceramic-hero-banner" style="position: relative; background: linear-gradient(135deg, #1f1d1a 0%, #302c27 100%); color: #ffffff; padding: 100px 30px; border-radius: 20px; margin-bottom: 60px; overflow: hidden; box-shadow: 0 20px 50px rgba(0,0,0,0.15);">
    <div style="position: absolute; right: -50px; bottom: -50px; width: 450px; height: 450px; background: radial-gradient(circle, rgba(184,93,54,0.3) 0%, rgba(0,0,0,0) 70%); border-radius: 50%; pointer-events: none;"></div>
    <div style="max-width: 1200px; margin: 0 auto; display: grid; grid-template-columns: 1.2fr 0.8fr; gap: 50px; align-items: center; position: relative; z-index: 2;">
        <div>
            <div style="display: inline-flex; align-items: center; gap: 8px; background: rgba(184,93,54,0.25); border: 1px solid rgba(226,162,117,0.4); padding: 6px 16px; border-radius: 30px; margin-bottom: 24px;">
                <span style="color: #e2a275; font-size: 0.85rem; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase;">✦ STUDIO-THROWN STONEWARE</span>
            </div>
            <h1 style="font-size: clamp(2.5rem, 5vw, 4rem); font-family: 'Playfair Display', Georgia, serif; font-weight: 700; line-height: 1.15; color: #fdfcf9; margin-bottom: 20px;">
                Earth, Fire & Soul.<br>Ceramics for Modern Living.
            </h1>
            <p style="font-size: 1.2rem; color: #d6cebf; line-height: 1.7; margin-bottom: 35px; max-width: 580px;">
                Slow-crafted stoneware and artisanal ceramics shaped by hand on the potter's wheel. Non-toxic glazes, high-fired durability, and tactile beauty for your everyday rituals.
            </p>
            <div style="display: flex; gap: 16px; flex-wrap: wrap;">
                <a href="/ceramic/shop/" class="button" style="background: #b85d36 !important; padding: 16px 36px !important; font-size: 1rem !important; border-radius: 8px !important;">Shop The Collection</a>
                <a href="/ceramic/about/" class="ceramic-btn-secondary" style="border-color: #d6cebf !important; color: #fdfcf9 !important; padding: 15px 30px !important;">Our Craft Story</a>
            </div>
        </div>
        <div style="position: relative;">
            <div style="position: relative; border-radius: 16px; overflow: hidden; box-shadow: 0 25px 50px rgba(0,0,0,0.4); border: 3px solid rgba(255,255,255,0.1);">
                <img src="{$hero_bg_url}" alt="Artisanal Ceramic Vase" style="width: 100%; height: 480px; object-fit: cover; display: block;" />
                <div style="position: absolute; bottom: 0; left: 0; right: 0; padding: 24px; background: linear-gradient(to top, rgba(15,14,12,0.9), transparent);">
                    <div style="color: #e2a275; font-size: 0.8rem; font-weight: 700; text-transform: uppercase;">Featured Piece</div>
                    <div style="color: #fff; font-family: 'Playfair Display', Georgia, serif; font-size: 1.3rem;">Wabi-Sabi Terracotta Amphora</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- TRUST VALUE PROPOSITIONS -->
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 24px; margin-bottom: 70px;">
    <div class="pottery-trust-badge">
        <div class="badge-icon">🏺</div>
        <div>
            <h4>100% Hand-Thrown</h4>
            <p>Crafted in small batches with mindful artisan care.</p>
        </div>
    </div>
    <div class="pottery-trust-badge">
        <div class="badge-icon">🔥</div>
        <div>
            <h4>2350°F High-Fired</h4>
            <p>Vitrified stoneware that is dishwasher & microwave safe.</p>
        </div>
    </div>
    <div class="pottery-trust-badge">
        <div class="badge-icon">🌿</div>
        <div>
            <h4>Lead-Free Glazes</h4>
            <p>Certified food-safe mineral pigments and clay bodies.</p>
        </div>
    </div>
    <div class="pottery-trust-badge">
        <div class="badge-icon">📦</div>
        <div>
            <h4>Eco Plastic-Free Pack</h4>
            <p>100% biodegradable corrugated wrap & paper tape.</p>
        </div>
    </div>
</div>

<!-- FEATURED CATEGORIES -->
<div style="margin-bottom: 80px;">
    <div style="text-align: center; max-width: 650px; margin: 0 auto 40px auto;">
        <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.85rem;">CURATED COLLECTIONS</span>
        <h2 style="font-size: 2.5rem; margin-top: 8px; margin-bottom: 12px;">Shop by Ceramic Category</h2>
        <p style="color: #6b6661; font-size: 1.05rem;">From nourishing morning mugs to statement centerpiece vessels, explore stoneware designed for intentional living.</p>
    </div>

    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); gap: 24px;">
        <!-- Cat 1 -->
        <a href="/ceramic/product-category/dinnerware/" style="text-decoration: none; color: inherit; group;">
            <div style="background: #ffffff; border-radius: 14px; overflow: hidden; border: 1px solid #e8e2d8; transition: transform 0.3s ease, box-shadow 0.3s ease; box-shadow: 0 4px 20px rgba(0,0,0,0.03);">
                <div style="overflow: hidden; height: 260px;">
                    <img src="{$plate_img_url}" alt="Dinnerware" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.5s ease;" />
                </div>
                <div style="padding: 20px; text-align: center;">
                    <h3 style="font-size: 1.3rem; margin: 0 0 6px 0;">Dinnerware & Sets</h3>
                    <p style="margin: 0; color: #b85d36; font-weight: 600; font-size: 0.9rem;">Explore Plates & Platters →</p>
                </div>
            </div>
        </a>

        <!-- Cat 2 -->
        <a href="/ceramic/product-category/vases/" style="text-decoration: none; color: inherit;">
            <div style="background: #ffffff; border-radius: 14px; overflow: hidden; border: 1px solid #e8e2d8; transition: transform 0.3s ease, box-shadow 0.3s ease; box-shadow: 0 4px 20px rgba(0,0,0,0.03);">
                <div style="overflow: hidden; height: 260px;">
                    <img src="{$vase_img_url}" alt="Vases & Vessels" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.5s ease;" />
                </div>
                <div style="padding: 20px; text-align: center;">
                    <h3 style="font-size: 1.3rem; margin: 0 0 6px 0;">Vases & Sculptures</h3>
                    <p style="margin: 0; color: #b85d36; font-weight: 600; font-size: 0.9rem;">View Statement Pieces →</p>
                </div>
            </div>
        </a>

        <!-- Cat 3 -->
        <a href="/ceramic/product-category/mugs/" style="text-decoration: none; color: inherit;">
            <div style="background: #ffffff; border-radius: 14px; overflow: hidden; border: 1px solid #e8e2d8; transition: transform 0.3s ease, box-shadow 0.3s ease; box-shadow: 0 4px 20px rgba(0,0,0,0.03);">
                <div style="overflow: hidden; height: 260px;">
                    <img src="{$mug_img_url}" alt="Mugs & Cups" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.5s ease;" />
                </div>
                <div style="padding: 20px; text-align: center;">
                    <h3 style="font-size: 1.3rem; margin: 0 0 6px 0;">Mugs & Cups</h3>
                    <p style="margin: 0; color: #b85d36; font-weight: 600; font-size: 0.9rem;">Morning Coffee Rituals →</p>
                </div>
            </div>
        </a>

        <!-- Cat 4 -->
        <a href="/ceramic/product-category/bowls/" style="text-decoration: none; color: inherit;">
            <div style="background: #ffffff; border-radius: 14px; overflow: hidden; border: 1px solid #e8e2d8; transition: transform 0.3s ease, box-shadow 0.3s ease; box-shadow: 0 4px 20px rgba(0,0,0,0.03);">
                <div style="overflow: hidden; height: 260px;">
                    <img src="{$bowl_img_url}" alt="Artisanal Bowls" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.5s ease;" />
                </div>
                <div style="padding: 20px; text-align: center;">
                    <h3 style="font-size: 1.3rem; margin: 0 0 6px 0;">Artisanal Bowls</h3>
                    <p style="margin: 0; color: #b85d36; font-weight: 600; font-size: 0.9rem;">Ceremonial Bowls →</p>
                </div>
            </div>
        </a>
    </div>
</div>

<!-- BEST SELLER PRODUCTS GRID -->
<div style="margin-bottom: 90px;">
    <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 35px; flex-wrap: wrap; gap: 15px;">
        <div>
            <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.85rem;">POTTER’S SELECTION</span>
            <h2 style="font-size: 2.4rem; margin: 6px 0 0 0;">Latest Ceramic Studio Drops</h2>
        </div>
        <div>
            <a href="/ceramic/shop/" style="font-weight: 600; color: #b85d36; text-decoration: none; font-size: 1rem; border-bottom: 2px solid #b85d36; padding-bottom: 2px;">View All Ceramics &rarr;</a>
        </div>
    </div>

    [products limit="8" columns="4" orderby="date" order="DESC"]
</div>

<!-- CRAFTSMANSHIP SPOTLIGHT -->
<div style="background: #ffffff; border: 1px solid #e8e2d8; border-radius: 20px; padding: 60px 40px; margin-bottom: 80px; box-shadow: 0 10px 40px rgba(0,0,0,0.03);">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center;">
        <div style="border-radius: 16px; overflow: hidden; box-shadow: 0 15px 35px rgba(0,0,0,0.1);">
            <img src="{$craft_img_url}" alt="Pottery Wheel Studio" style="width: 100%; height: 460px; object-fit: cover; display: block;" />
        </div>
        <div>
            <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.85rem;">OUR PHILOSOPHY</span>
            <h2 style="font-size: 2.4rem; margin-top: 8px; margin-bottom: 18px; line-height: 1.2;">From Raw Earth to Your Living Space</h2>
            <p style="color: #55504a; font-size: 1.05rem; line-height: 1.8; margin-bottom: 20px;">
                At Ceramica, every vessel begins as a humble lump of natural, mineral-dense clay. Guided by the rhythm of the potter's wheel, each piece is shaped with intuitive proportion and tactile reverence.
            </p>
            <p style="color: #55504a; font-size: 1.05rem; line-height: 1.8; margin-bottom: 30px;">
                We mix our own proprietary glazes from raw ground feldspar, ash, and earth oxides, firing each kiln batch slowly over 28 hours to achieve deep vitrification and one-of-a-kind surfaces.
            </p>
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 30px;">
                <div style="border-left: 3px solid #b85d36; padding-left: 15px;">
                    <strong style="display: block; font-size: 1.1rem; color: #22201d;">Non-Toxic & Safe</strong>
                    <span style="color: #78716c; font-size: 0.9rem;">Free of lead, cadmium, and artificial synthetics.</span>
                </div>
                <div style="border-left: 3px solid #b85d36; padding-left: 15px;">
                    <strong style="display: block; font-size: 1.1rem; color: #22201d;">Lifetime Durability</strong>
                    <span style="color: #78716c; font-size: 0.9rem;">Resistant to everyday chipping, heat, and moisture.</span>
                </div>
            </div>
            <a href="/ceramic/about/" class="button">Read The Studio Story</a>
        </div>
    </div>
</div>

<!-- PROMOTIONAL BANNER -->
<div style="background: #22201d; color: #ffffff; border-radius: 20px; padding: 60px 40px; margin-bottom: 80px; text-align: center; position: relative; overflow: hidden;">
    <div style="max-width: 700px; margin: 0 auto; position: relative; z-index: 2;">
        <span style="color: #e2a275; font-size: 0.85rem; font-weight: 700; letter-spacing: 0.15em; text-transform: uppercase;">LIMITED STUDIO RELEASE</span>
        <h2 style="color: #ffffff; font-size: 2.6rem; margin-top: 10px; margin-bottom: 15px;">The Minimalist Wabi-Sabi Series</h2>
        <p style="color: #d6cebf; font-size: 1.15rem; line-height: 1.7; margin-bottom: 30px;">
            Celebrating organic imperfection, coarse grogged clay textures, and soft charcoal mineral washes. Take <strong>20% off</strong> all vase and platter orders this week.
        </p>
        <div style="display: inline-flex; align-items: center; background: rgba(255,255,255,0.08); border: 1px dashed #e2a275; border-radius: 8px; padding: 8px 24px; margin-bottom: 25px;">
            <span style="color: #f7f4ee; font-size: 0.95rem; margin-right: 12px;">Use Coupon Code:</span>
            <strong style="color: #e2a275; font-size: 1.2rem; letter-spacing: 0.1em;">EARTH20</strong>
        </div>
        <div>
            <a href="/ceramic/shop/" class="button" style="background: #b85d36 !important; font-size: 1rem !important; padding: 14px 34px !important;">Explore Limited Drop</a>
        </div>
    </div>
</div>

<!-- TESTIMONIALS -->
<div style="margin-bottom: 80px;">
    <div style="text-align: center; max-width: 600px; margin: 0 auto 40px auto;">
        <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.85rem;">COMMUNITY REVIEWS</span>
        <h2 style="font-size: 2.3rem; margin-top: 8px;">Loved by Collectors & Coffee Enthusiasts</h2>
    </div>

    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 24px;">
        <div style="background: #ffffff; border: 1px solid #e8e2d8; padding: 35px; border-radius: 14px; box-shadow: 0 4px 20px rgba(0,0,0,0.02);">
            <div style="color: #b85d36; font-size: 1.1rem; margin-bottom: 15px;">★★★★★</div>
            <p style="font-style: italic; color: #44403c; line-height: 1.7; font-size: 1rem; margin-bottom: 20px;">
                "The Earth & Speckle mug is without a doubt the most comfortable ceramic cup I've ever held. The glaze pooling and balance in your hand makes morning coffee feel like a sacred ritual."
            </p>
            <div style="font-weight: 700; color: #22201d;">Elena Vance</div>
            <div style="font-size: 0.85rem; color: #78716c;">Architect & Designer, Seattle</div>
        </div>

        <div style="background: #ffffff; border: 1px solid #e8e2d8; padding: 35px; border-radius: 14px; box-shadow: 0 4px 20px rgba(0,0,0,0.02);">
            <div style="color: #b85d36; font-size: 1.1rem; margin-bottom: 15px;">★★★★★</div>
            <p style="font-style: italic; color: #44403c; line-height: 1.7; font-size: 1rem; margin-bottom: 20px;">
                "I ordered the Wabi-Sabi Amphora Vase and the craftsmanship blew me away. The raw clay exterior contrasted with the glazed interior is pure sculptural art. Arrived impeccably packaged."
            </p>
            <div style="font-weight: 700; color: #22201d;">Marcus Chen</div>
            <div style="font-size: 0.85rem; color: #78716c;">Culinary Director, Austin</div>
        </div>

        <div style="background: #ffffff; border: 1px solid #e8e2d8; padding: 35px; border-radius: 14px; box-shadow: 0 4px 20px rgba(0,0,0,0.02);">
            <div style="color: #b85d36; font-size: 1.1rem; margin-bottom: 15px;">★★★★★</div>
            <p style="font-style: italic; color: #44403c; line-height: 1.7; font-size: 1rem; margin-bottom: 20px;">
                "Our dinner guests constantly ask where we bought the Nordic Slate plates. They are heavy, tactile, and completely durable in the dishwasher. Looking forward to expanding our collection!"
            </p>
            <div style="font-weight: 700; color: #22201d;">Sarah & David Lin</div>
            <div style="font-size: 0.85rem; color: #78716c;">San Francisco</div>
        </div>
    </div>
</div>

<!-- STUDIO NEWSLETTER & WORKSHOPS -->
<div style="background: #e8e2d8; border-radius: 20px; padding: 50px 30px; text-align: center; margin-bottom: 40px;">
    <div style="max-width: 550px; margin: 0 auto;">
        <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.85rem;">JOIN THE KILN CIRCLE</span>
        <h2 style="font-size: 2.2rem; margin: 10px 0 15px 0;">Receive First Access to New Studio Drops</h2>
        <p style="color: #55504a; font-size: 1rem; margin-bottom: 25px;">Subscribe to receive studio updates, pottery glaze recipes, behind-the-scenes firing videos, and <strong>15% off</strong> your first order.</p>
        <form style="display: flex; gap: 10px; max-width: 480px; margin: 0 auto;" onsubmit="event.preventDefault(); alert('Thank you for joining the Kiln Circle! Your 15% discount code is CERAMIC15');">
            <input type="email" placeholder="Enter your email address" required style="flex: 1; padding: 14px 18px; border-radius: 8px; border: 1px solid #d1c8bb; background: #fff; font-size: 0.95rem;" />
            <button type="submit" class="button" style="margin: 0 !important; white-space: nowrap;">Subscribe</button>
        </form>
    </div>
</div>
HTML;

// Create or update Home Page
$home_page = get_page_by_path('home');
$home_id = $home_page ? $home_page->ID : 0;

$home_post_data = [
    'post_title'   => 'Home',
    'post_name'    => 'home',
    'post_content' => $homepage_html,
    'post_status'  => 'publish',
    'post_type'    => 'page'
];

if ($home_id) {
    $home_post_data['ID'] = $home_id;
    wp_update_post($home_post_data);
    echo "Updated Home Page (ID: $home_id)\n";
} else {
    $home_id = wp_insert_post($home_post_data);
    echo "Created Home Page (ID: $home_id)\n";
}

// Set as Front Page
update_option('show_on_front', 'page');
update_option('page_on_front', $home_id);

// 6. Build About Us Page
$about_html = <<<HTML
<div style="max-width: 900px; margin: 0 auto; padding: 20px 0 60px 0;">
    <div style="text-align: center; margin-bottom: 50px;">
        <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.9rem;">THE ARTISAN STORY</span>
        <h1 style="font-size: 3rem; margin: 10px 0 20px 0;">Mindful Pottery for Contemporary Living</h1>
        <p style="font-size: 1.25rem; color: #55504a; line-height: 1.8;">Founded on the premise that everyday objects should elevate and soothe our sensory lives.</p>
    </div>

    <div style="border-radius: 16px; overflow: hidden; margin-bottom: 50px; box-shadow: 0 15px 35px rgba(0,0,0,0.08);">
        <img src="{$craft_img_url}" alt="Pottery Studio Craftsmanship" style="width: 100%; height: 500px; object-fit: cover;" />
    </div>

    <div style="font-size: 1.15rem; line-height: 1.9; color: #333;">
        <h2 style="font-size: 2rem; color: #22201d; margin-top: 40px;">The Rhythm of Wheel & Earth</h2>
        <p>
            Ceramica began in a small seaside workshop with one kick wheel, a bucket of iron-rich stoneware clay, and an obsession with timeless, tactile forms. We reject mass manufacturing in favor of the human hand: the rhythmic spin of the wheel, the gentle pressure of fingers molding walls, and the quiet alchemy of wood ash and flame.
        </p>

        <h2 style="font-size: 2rem; color: #22201d; margin-top: 40px;">Sustainable Craftsmanship</h2>
        <p>
            Every piece is created using locally sourced, non-toxic clays. Our glaze recipes are mixed from scratch in-house using natural feldspar, silica, and mineral oxides — completely free of lead, cadmium, and synthetic pigments. Our electric kilns run on 100% renewable energy credits, and all clay trimmings are meticulously slaked, pugged, and reclaimed so nothing goes to waste.
        </p>

        <div style="background: #ffffff; border: 1px solid #e8e2d8; border-radius: 12px; padding: 30px; margin: 40px 0;">
            <h3 style="margin-top: 0; color: #b85d36;">Our Studio Commitments</h3>
            <ul style="margin: 0; padding-left: 20px;">
                <li><strong>Wheel-Thrown & Hand-Finished:</strong> Each vessel passes through over 18 distinct hand operations before reaching your home.</li>
                <li><strong>Food & Oven Safe:</strong> Fired at vitrification temperatures (Cone 6 / 2232°F) ensuring waterproof durability.</li>
                <li><strong>Carbon-Neutral Shipping:</strong> Protected in biodegradable kraft paper and biodegradable cornstarch cushioning.</li>
            </ul>
        </div>
    </div>

    <div style="text-align: center; margin-top: 50px;">
        <a href="/ceramic/shop/" class="button" style="padding: 16px 40px !important;">Explore Our Stoneware Collection</a>
    </div>
</div>
HTML;

$about_page = get_page_by_path('about');
$about_id = $about_page ? $about_page->ID : 0;
$about_post_data = [
    'post_title'   => 'About Our Craft',
    'post_name'    => 'about',
    'post_content' => $about_html,
    'post_status'  => 'publish',
    'post_type'    => 'page'
];

if ($about_id) {
    $about_post_data['ID'] = $about_id;
    wp_update_post($about_post_data);
    echo "Updated About Page (ID: $about_id)\n";
} else {
    $about_id = wp_insert_post($about_post_data);
    echo "Created About Page (ID: $about_id)\n";
}

// 7. Build Contact Us Page
$contact_html = <<<HTML
<div style="max-width: 1000px; margin: 0 auto; padding: 20px 0 60px 0;">
    <div style="text-align: center; margin-bottom: 50px;">
        <span style="color: #b85d36; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; font-size: 0.9rem;">VISIT OR REACH OUT</span>
        <h1 style="font-size: 3rem; margin: 10px 0 20px 0;">Studio & Ceramic Inquiries</h1>
        <p style="font-size: 1.2rem; color: #55504a;">Have a custom commission, wholesale request, or question about a ceramic piece?</p>
    </div>

    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 50px;">
        <!-- Contact Info -->
        <div style="background: #ffffff; border: 1px solid #e8e2d8; padding: 40px; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.02);">
            <h3 style="font-size: 1.6rem; margin-top: 0; margin-bottom: 25px;">Ceramica Studio</h3>
            
            <div style="margin-bottom: 24px;">
                <strong style="display: block; color: #b85d36; font-size: 0.9rem; text-transform: uppercase; margin-bottom: 4px;">Studio Showroom & Workshop</strong>
                <p style="margin: 0; color: #44403c;">428 Artisans Way, Kiln Quarter<br>Portland, OR 97209</p>
            </div>

            <div style="margin-bottom: 24px;">
                <strong style="display: block; color: #b85d36; font-size: 0.9rem; text-transform: uppercase; margin-bottom: 4px;">Opening Hours</strong>
                <p style="margin: 0; color: #44403c;">Wednesday - Saturday: 10:00 AM - 6:00 PM<br>Sunday: 11:00 AM - 4:00 PM<br>Monday & Tuesday: Kiln Firing Days (Closed)</p>
            </div>

            <div style="margin-bottom: 24px;">
                <strong style="display: block; color: #b85d36; font-size: 0.9rem; text-transform: uppercase; margin-bottom: 4px;">Direct Contact</strong>
                <p style="margin: 0; color: #44403c;">Email: hello@ceramicstudio.local<br>Phone: +1 (503) 555-0198</p>
            </div>

            <div style="margin-top: 30px; padding-top: 20px; border-top: 1px solid #e8e2d8;">
                <strong style="display: block; color: #22201d; margin-bottom: 8px;">Studio Pottery Workshops</strong>
                <p style="margin: 0; color: #78716c; font-size: 0.95rem;">We host monthly beginner wheel throwing and glazing workshops on Saturday afternoons. Inquire below to reserve your space.</p>
            </div>
        </div>

        <!-- Form -->
        <div style="background: #ffffff; border: 1px solid #e8e2d8; padding: 40px; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.02);">
            <h3 style="font-size: 1.6rem; margin-top: 0; margin-bottom: 20px;">Send a Message</h3>
            <form onsubmit="event.preventDefault(); alert('Thank you! Your message has been sent to our ceramic artisans. We will get back to you shortly.');">
                <div style="margin-bottom: 18px;">
                    <label style="display: block; font-weight: 600; font-size: 0.9rem; margin-bottom: 6px;">Your Name *</label>
                    <input type="text" required style="width: 100%; padding: 12px 14px; border: 1px solid #d1c8bb; border-radius: 8px;" />
                </div>
                <div style="margin-bottom: 18px;">
                    <label style="display: block; font-weight: 600; font-size: 0.9rem; margin-bottom: 6px;">Email Address *</label>
                    <input type="email" required style="width: 100%; padding: 12px 14px; border: 1px solid #d1c8bb; border-radius: 8px;" />
                </div>
                <div style="margin-bottom: 18px;">
                    <label style="display: block; font-weight: 600; font-size: 0.9rem; margin-bottom: 6px;">Inquiry Type</label>
                    <select style="width: 100%; padding: 12px 14px; border: 1px solid #d1c8bb; border-radius: 8px;">
                        <option>General Ceramic Question</option>
                        <option>Custom Commission</option>
                        <option>Wholesale & Restaurant Ware</option>
                        <option>Studio Workshop Booking</option>
                    </select>
                </div>
                <div style="margin-bottom: 24px;">
                    <label style="display: block; font-weight: 600; font-size: 0.9rem; margin-bottom: 6px;">Your Message *</label>
                    <textarea rows="4" required style="width: 100%; padding: 12px 14px; border: 1px solid #d1c8bb; border-radius: 8px;"></textarea>
                </div>
                <button type="submit" class="button" style="width: 100%;">Send Message</button>
            </form>
        </div>
    </div>
</div>
HTML;

$contact_page = get_page_by_path('contact');
$contact_id = $contact_page ? $contact_page->ID : 0;
$contact_post_data = [
    'post_title'   => 'Contact Us',
    'post_name'    => 'contact',
    'post_content' => $contact_html,
    'post_status'  => 'publish',
    'post_type'    => 'page'
];

if ($contact_id) {
    $contact_post_data['ID'] = $contact_id;
    wp_update_post($contact_post_data);
    echo "Updated Contact Page (ID: $contact_id)\n";
} else {
    $contact_id = wp_insert_post($contact_post_data);
    echo "Created Contact Page (ID: $contact_id)\n";
}

// 8. Create & Assign Primary Menu
$menu_name = 'Ceramica Main Menu';
$menu_exists = wp_get_nav_menu_object($menu_name);

if ($menu_exists) {
    wp_delete_nav_menu($menu_exists->term_id);
}

$menu_id = wp_create_nav_menu($menu_name);

$shop_page_id = wc_get_page_id('shop');
$cart_page_id = wc_get_page_id('cart');
$account_page_id = wc_get_page_id('myaccount');

$menu_items = [
    ['title' => 'Home', 'url' => home_url('/'), 'object_id' => $home_id, 'type' => 'post_type', 'object' => 'page'],
    ['title' => 'Shop All', 'url' => get_permalink($shop_page_id), 'object_id' => $shop_page_id, 'type' => 'post_type', 'object' => 'page'],
    ['title' => 'Vases & Vessels', 'url' => home_url('/product-category/vases/'), 'type' => 'custom'],
    ['title' => 'Dinnerware', 'url' => home_url('/product-category/dinnerware/'), 'type' => 'custom'],
    ['title' => 'Mugs & Cups', 'url' => home_url('/product-category/mugs/'), 'type' => 'custom'],
    ['title' => 'Planters', 'url' => home_url('/product-category/planters/'), 'type' => 'custom'],
    ['title' => 'Our Craft', 'url' => get_permalink($about_id), 'object_id' => $about_id, 'type' => 'post_type', 'object' => 'page'],
    ['title' => 'Contact', 'url' => get_permalink($contact_id), 'object_id' => $contact_id, 'type' => 'post_type', 'object' => 'page'],
    ['title' => 'Cart 🛒', 'url' => get_permalink($cart_page_id), 'object_id' => $cart_page_id, 'type' => 'post_type', 'object' => 'page'],
];

foreach ($menu_items as $index => $item) {
    $args = [
        'menu-item-title'   => $item['title'],
        'menu-item-url'     => $item['url'],
        'menu-item-status'  => 'publish',
        'menu-item-position'=> $index + 1
    ];
    if (isset($item['type']) && $item['type'] === 'post_type') {
        $args['menu-item-type'] = 'post_type';
        $args['menu-item-object'] = $item['object'];
        $args['menu-item-object-id'] = $item['object_id'];
    } else {
        $args['menu-item-type'] = 'custom';
    }
    wp_update_nav_menu_item($menu_id, 0, $args);
}

// Assign to Astra primary menu location
$locations = get_theme_mod('nav_menu_locations');
if (!is_array($locations)) {
    $locations = [];
}
$locations['primary'] = $menu_id;
set_theme_mod('nav_menu_locations', $locations);
echo "Primary Navigation Menu configured!\n";

// 9. Configure Astra theme settings for clean ceramic full layout
$astra_settings = get_option('astra-settings', []);
$astra_settings['site-content-layout'] = 'plain-container';
$astra_settings['site-sidebar-layout'] = 'no-sidebar';
$astra_settings['woocommerce-shop-item-structure'] = ['title', 'price', 'ratings', 'add_cart'];
update_option('astra-settings', $astra_settings);

echo "=== CERAMICA SETUP COMPLETED SUCCESSFULLY ===\n";

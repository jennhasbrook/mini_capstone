Supplier.create!([
  {name: "Factory", email: "factory@headquarters", phone_number: "505-555-5555"},
  {name: "Amazon", email: "legos@amazon.com", phone_number: "444-44-4445"},
  {name: "Lego Producer", email: "buildit@gmail.com", phone_number: "444-333-3333"}
])

Category.create!([
  {name: "Star Wars"},
  {name: "Classic"},
  {name: "Ninjago"}
])

Product.create!([
  {name: "The Simpsons House Legos", price: "299.0", description: "D'oh! The Simpsons House has been turned into LEGO® bricks!", in_stock: true, supplier_id: 1},
  {name: "Millennium Falcon Legos", price: "799.0", description: "Travel the LEGO® galaxy in the ultimate Millennium Falcon!", in_stock: true, supplier_id: 2},
  {name: "Big Ben Legos", price: "249.0", description: "Build the world’s best-known clock tower!", in_stock: true, supplier_id: 3},
  {name: "Tower Bridge Legos", price: "249.0", description: "Build London's famous Tower Bridge!", in_stock: true, supplier_id: 1},
  {name: "Ghostbuster: Firehouse Headquarters Legos", price: "349.0", description: "Get ready to bust some ghosts at the Firehouse Headquarters!", in_stock: true, supplier_id: 2},
  {name: "Minecraft: The Mountain Cave", price: "249.0", description: "Experience the Mountain Cave!", in_stock: true, supplier_id: 3},
  {name: "Death Star Legos", price: "499.0", description: "Win the battle for the Empire with the awesome Death Star!", in_stock: true, supplier_id: 2},
  {name: "London Bus Legos", price: "139.0", description: "All aboard the London Bus!", in_stock: true, supplier_id: 1},
  {name: "Downtown Diner Legos", price: "169.0", description: "Discover a place where music is on the menu!", in_stock: true, supplier_id: 2},
  {name: "Kai-Dragon Master", price: "14.0", description: "Fly through the sky with Kai!", in_stock: true, supplier_id: 2},
  {name: "Jay-Dragon Master", price: "15.0", description: "Become a Dragon Master with Jay!", in_stock: true, supplier_id: 3},
  {name: "Golden Dragon Master", price: "14.0", description: "Fly to glory with the Golden Master!", in_stock: true, supplier_id: 1},
  {name: "Zane Dragon Master", price: "15.0", description: "Train with Zane to master the dragons!", in_stock: true, supplier_id: 2},
  {name: "Cole-Dragon Master", price: "15.0", description: "Soar to greatness with Cole!", in_stock: true, supplier_id: 2},
  {name: "Silent Mary Legos", price: "199.0", description: "Discover the secrets of the Silent Mary!", in_stock: true, supplier_id: 3}
])

CategoryProduct.create!([
  {category_id: 1, product_id: 2},
  {category_id: 1, product_id: 7},
  {category_id: 2, product_id: 3},
  {category_id: 2, product_id: 4},
  {category_id: 3, product_id: 10},
  {category_id: 3, product_id: 11},
  {category_id: 3, product_id: 12},
  {category_id: 3, product_id: 13},
  {category_id: 3, product_id: 14},
  {category_id: 2, product_id: 8},
  {category_id: 2, product_id: 9},
  {category_id: 2, product_id: 15}
])


Image.create!([
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/71006?$leaf2$", product_id: 1},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/71006_alt1?$main$", product_id: 1},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/75192?$leaf2$", product_id: 2},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/75192_alt1?$main$", product_id: 2},
  {url: " https://sh-s7-live-s.legocdn.com/is/image/LEGO/10253?$leaf2$", product_id: 3},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/10253_alt1?$main$", product_id: 3},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/10214?$leaf2$", product_id: 4},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/10214_alt1?$main$", product_id: 4},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/75827?$leaf2$", product_id: 5},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/75827_alt1?$main$", product_id: 5},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/21137?$leaf2$", product_id: 6},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/21137_alt1?$main$", product_id: 6},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/75159?$leaf2$", product_id: 7},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/75159_alt1?$main$", product_id: 7},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/10258?$leaf2$", product_id: 8},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/10258_alt1?$main$", product_id: 8},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/10260?$leaf2$", product_id: 9},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/10260_alt1?$main$", product_id: 9},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/70647?$leaf2$", product_id: 10},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/70647_alt1?$main$", product_id: 10},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/70646?$leaf2$", product_id: 11},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/70646_alt1?$main$", product_id: 11},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/70648?$leaf2$", product_id: 13},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/70648_alt1?$main$", product_id: 13},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/71042?$leaf2$", product_id: 15},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/71042_alt1?$main$", product_id: 15},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/70647?$leaf2$", product_id: 14},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/70647_alt1?$main$", product_id: 14},
  {url: "https://sh-s7-live-s.legocdn.com/is/image/LEGO/70644?$leaf2$", product_id: 12},
  {url: "https://sh-s7-live-s.legocdn.com/is/image//LEGO/70644_alt1?$main$", product_id: 12}
])

User.create!([
  {name: "Peter", email: "peter@email.com", password_digest: "$2a$10$pybdQh5aN3y1exnM1WlyAeN3L3RGmVGuFdMZ9/MXmUVEZFh7TILaG", admin: nil},
  {name: "Audrey Hasbrook", email: "cat@gmail.com", password_digest: "$2a$10$Q66ySSfrmZNgkPKrJhL7Z.xp5Zy46TlImvp7kErGIDExIfsYl94b.", admin: nil},
  {name: "Kate Hasbrook", email: "lady@gmail.com", password_digest: "$2a$10$nlQ7Zx783PtwIccKwGj4..3c3CWExAcg.pvx2divcT/gRMUBIRr9a", admin: nil},
  {name: "Trixie Trailer", email: "airstream@gmail.com", password_digest: "$2a$10$GrbyYyv0SWPkHiPAOW5bYeRrYEMU9QWHFUvLmF6CewO/euO9b9XQS", admin: nil},
  {name: "Dani Zaghian", email: "dani@gmail.com", password_digest: "$2a$10$eFFNbisTdGG0r8afXKYmhOCgqVmFijTTggZFsY1ob9.rwB5SKMHma", admin: nil},
  {name: "Kellie", email: "kellie@gmail.com", password_digest: "$2a$10$GJGMAa5aL6LnQ6AhxbNQdOuUWMDTLwN6A2Ubh.FMNtw7IIre4jY5a", admin: nil},
  {name: "Amanda", email: "amanda@gmail.com", password_digest: "$2a$10$WSZLNSNvc054tc1H/qIbZezSuL5sbUCw0/Z7C6DLWAZuKUbNGu7Ta", admin: nil}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: 1745.0, tax: 157.05, total: 1902.05},
  {user_id: 2, subtotal: 2397.0, tax: 215.73, total: 2612.73},
  {user_id: 2, subtotal: 2397.0, tax: 215.73, total: 2612.73},
  {user_id: 2, subtotal: 1745.0, tax: 157.05, total: 1902.05},
  {user_id: 2, subtotal: 169.0, tax: 15.21, total: 184.21},
  {user_id: 2, subtotal: 1745.0, tax: 157.05, total: 1902.05},
  {user_id: 2, subtotal: 499.0, tax: 44.91, total: 543.91},
  {user_id: 2, subtotal: 1745.0, tax: 157.05, total: 1902.05},
  {user_id: 4, subtotal: 597.0, tax: 53.73, total: 650.73},
  {user_id: 4, subtotal: 15.0, tax: 1.35, total: 16.35},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: 747.0, tax: 67.23, total: 814.23},
  {user_id: 4, subtotal: 598.0, tax: 53.82, total: 651.82},
  {user_id: 4, subtotal: 299.0, tax: 26.91, total: 325.91},
  {user_id: 4, subtotal: 499.0, tax: 44.91, total: 543.91},
  {user_id: 4, subtotal: 28.0, tax: 2.52, total: 30.52},
  {user_id: 4, subtotal: 30.0, tax: 2.7, total: 32.7},
  {user_id: 4, subtotal: 14.0, tax: 1.26, total: 15.26},
  {user_id: 2, subtotal: 799.0, tax: 71.91, total: 870.91},
  {user_id: 4, subtotal: 60.0, tax: 5.4, total: 65.4},
  {user_id: 4, subtotal: 448.0, tax: 40.32, total: 488.32},
  {user_id: 4, subtotal: 0.0, tax: 0.0, total: 0.0},
  {user_id: 4, subtotal: 798.0, tax: 71.82, total: 869.82},
  {user_id: 2, subtotal: 3641.0, tax: 327.69, total: 3968.69},
  {user_id: 2, subtotal: 377.0, tax: 33.93, total: 410.93}
])



CartedProduct.create!([
  {user_id: 4, quantity: 1, status: "purchased", order_id: 30, product_id: 4},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 30, product_id: 15},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 32, product_id: 7},
  {user_id: 4, quantity: 1, status: "purchased", order_id: 32, product_id: 1},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 33, product_id: 1},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 33, product_id: 1},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 33, product_id: 1},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 33, product_id: 1},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 33, product_id: 6},
  {user_id: 2, quantity: 2, status: "purchased", order_id: 33, product_id: 2},
  {user_id: 2, quantity: 2, status: "purchased", order_id: 33, product_id: 1},
  {user_id: 2, quantity: 2, status: "removed", order_id: nil, product_id: 4},
  {user_id: 2, quantity: 1, status: "removed", order_id: nil, product_id: 10},
  {user_id: 2, quantity: 1, status: "purchased", order_id: 34, product_id: 5},
  {user_id: 2, quantity: 2, status: "purchased", order_id: 34, product_id: 10}
])
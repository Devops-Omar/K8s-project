-- Enhanced SQL Script

-- Specify the database to use
USE `omartill`;

-- Admin Table
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,  -- Increased size for hashed passwords
  PRIMARY KEY (`adminid`),
  UNIQUE (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert admin with hashed password (example using bcrypt hash)
INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$abcdefghijklmnopqrstuv');  -- Replace with an actual hashed value

-- Contact Table
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Customer Table
CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1),
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100),
  `country` varchar(50),
  `zipcode` varchar(20),
  `mobile` varchar(20),
  `telephone` varchar(20),
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,  -- Increased size for hashed passwords
  PRIMARY KEY (`customerid`),
  UNIQUE (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Product Table
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_size` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(3, 'Nike Air Max Neon', 12000.00, 7, '1141103372nike15.jpg', 'Nike', 'basketball'),
(4, 'Nike Air Max Green', 12000.00, 8, '832975975nike5.jpg', 'Nike', 'basketball'),
(6, 'Adidas Gent', 13000.00, 9, '13634363832010-Adidas-Men-Basketball-Shoes-2.jpg', 'Adidas', 'basketball'),
(7, 'Adidas 599 LRG', 15000.00, 8, '872686791Adidas Basketball Shoes 599_LRG.jpg', 'Adidas', 'basketball'),
(8, 'Lebron 11 Siver', 18000.00, 8, '124030907nike13.jpg', 'Nike', 'basketball'),
(9, 'Adidas Adizero Black', 18000.00, 10, '14237873113-adidas-Rose-Dominate-Adizero-shoes.jpg', 'Adidas', 'basketball'),
(10, 'Adidas Adizero Blue', 18000.00, 10, '1024158586Adidas_Rose_Shoes_009.jpg', 'Adidas', 'basketball'),
(11, 'Lebron 11 Red', 18000.00, 9, '567507982nike10.jpg', 'Nike', 'basketball'),
(13, 'Nike Hypervenom', 10000.00, 12, '1312216564nike-hypervenoms-customize-fg-2015-outlet-neymar-colors-soccer-shoes-professional.jpg', 'Nike', 'football'),
(14, 'Nike C Lou Generation', 12000.00, 11, '533123642013_Discount_Nike_C_Luo_9_Generation_Online_Blue_Green.jpg', 'Nike', 'football'),
(15, 'Nike Mercurial Vapor 7 Superfly II FG Lightning', 12000.00, 12, '1157463277Nike-Mercurial-Vapor-7-Superfly-III-FG-Lightning-Soccer-Shoes-Fluorescent-Yellow-Black.jpg', 'Nike', 'football'),
(16, 'Nike Magista Obra', 12000.00, 9, '335092704Cheap-Nike-Magista-Obra-.jpg', 'Nike', 'football'),
(17, 'Adidas Chaussures', 12000.00, 8, '697721412chaussures001.jpg', 'Adidas', 'football'),
(19, 'Nike Flyknit Lunar Green Blue', 8000.00, 9, '745184160Nike_Nike_Flyknit_Lunar_2_Mens_Fluorescent_Green_Blue_Running_Shoes_2015_Outlet.jpg', 'Nike', 'Running'),
(20, 'Nike Flyknit Lunar Sea Blue', 8000.00, 10, '1239262802Nike_Nike_Flyknit_Lunar_2_Mens_Sky_Blue_Sea_Blue_Running_Shoes_2015_Cheap.jpg', 'Nike', 'Running'),
(21, 'Nike Flyknit Green', 8000.00, 12, '470680173flyknit.jpg', 'Nike', 'Running'),
(26, 'Nike Hypervenom Phantom', 15000.00, 8, '15416832542014-Nike-Hypervenom-Phantom-FG-Red-Fluorescent-Yellow.jpg', 'Nike', 'football'),
(28, 'Adidas Adizero Red', 18000.00, 9, '153564340adidas-all-star-basketball-shoes-adizero-shadow.jpg', 'Adidas', 'basketball'),
(29, 'Adidas Gents', 10000.00, 9, '14124685402-Adidas-gents-shoes-collection-2015-01.jpg', 'Adidas', 'Running'),
(30, 'Nike Flyknit Gray & Pink', 8000.00, 11, '948731815nw1.jpg', 'Nike', 'Running'),
(31, 'Reebok Zigtech Shake', 10000.00, 10, '245113227reebok-zigtech-shake-running-shoes-offer-lemonstore-1405-13-lemonstore@1.jpg', 'Reebok', 'Running'),
(157, 'Reebok Blast', 10000.00, 9, '547866585reebok-blast-profile.jpg', 'Reebok', 'feature'),
(21561, 'Lebron 11 ', 15000.00, 10, '1125171488heat-lebron-11-17.jpg', 'Nike', 'feature'),
(51292, 'Adidas Adizero F50', 10000.00, 10, '1272267959adizero-F50-FG.jpg', 'Adidas', 'feature'),
(358159, 'Flyknit 360', 8000.00, 8, '40329068flyknit.jpg', 'Nike', 'feature'),
(431860, 'Nike Hypervenom Neymar Jr.', 12000.00, 9, '852236910hypervenom.png', 'Nike', 'feature'),
(961461, 'Adidas Bounce Titan', 9000.00, 9, '367527167Rabatt_Prezzo_Ridotto_Adidas_Bounce_Titan_Herren_White_Schwarz_Running_Sho_Online.jpg', 'Adidas', 'feature');

-- Stock Table
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 3, 20),
(2, 4, 30),
(3, 6, 20),
(4, 7, 20),
(5, 8, 20),
(6, 9, 20),
(7, 10, 19),
(8, 11, 23),
(9, 13, 20),
(10, 14, 20),
(11, 15, 20),
(12, 16, 20),
(13, 17, 20),
(14, 19, 20),
(15, 20, 20),
(16, 21, 20),
(17, 26, 13),
(18, 28, 21),
(19, 29, 18),
(20, 30, 20),
(21, 31, 22),
(22, 431860, 39),
(23, 21561, 30),
(24, 358159, 30),
(25, 157, 25),
(26, 51292, 20),
(27, 961461, 22);

-- Transaction Table
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`),
  FOREIGN KEY (`customerid`) REFERENCES `customer`(`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Transaction Detail Table
CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  PRIMARY KEY (`transacton_detail_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`),
  FOREIGN KEY (`transaction_id`) REFERENCES `transaction`(`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- AUTO_INCREMENT for Admin Table
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- AUTO_INCREMENT for Contact Table
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for Customer Table
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for Stock Table
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

-- AUTO_INCREMENT for Transaction Detail Table
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;

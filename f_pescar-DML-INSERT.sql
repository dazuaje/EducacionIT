/*DATA MANIPULATION LANGUAGE - INSERT*/
	USE compumundo_hyper_mega_red;
	# Insercion de Registros
    
    ## TABLA USERS
    -- carga completa de datos
    INSERT INTO users VALUES (0, 'c215714n', 'cristiandracedo@hotmail.com', 'root');
    -- carga parcial de datos
    INSERT INTO users(user_name, user_email) VALUES ('Cristian Racedo', 'cristiandracedo@gmail.com');
    -- carga multiple de datos
	INSERT INTO users(user_name, user_email)
    VALUES 	('Marcelo Martinez','mjmserviciostecnicos@gmail.com'),
			('Pablo Molina','palitomolina22@gmail.com'),
            ('Gino Long','ginolong@hotmail.com'),
            ('Sebastian Macaya','contacto@sebastianmacaya.com');
	-- carga por asignacion
    INSERT INTO users_data
	SET user = 10,
		first_name = "Linus",
		last_name = "Torvald",
        gender = 1,
        cuit = "30-03020130-2";
    
    ## TABLA USERS_DATA
		-- carga parcial
        INSERT INTO users_data(last_name, first_name, gender, birth_date, cuit, user)
        VALUES ('Racedo', 'Cristian', 3, '1991-04-18', '20-64463353-5', 2);
        -- carga multiple
        INSERT INTO users_data(first_name, last_name, cuit)
        VALUES 	('Sebastian', 'Macaya','20-03034567-3'),
				('Gino', 'Long','20-29386382-2'),
				('Pablo', 'Molina','20-10234882-6'),
                ('Marcelo', 'Martinez', '25-08291283-2');
	
    ## TABLA CATEGORIES
		INSERT INTO categories(description)
		VALUES 	('autopartes'),
				('articulos de limpieza'),
				('deportes'),
                ('electrodomesticos'),
                ('herramientas'),
                ('hogar'),
                ('indumentaria'),
                ('jardineria'),
                ('tecnologia');
	
    ## TABLA PRODUCTS
		INSERT INTO products(category, product)
        VALUES 	(1,'neumatico'),
				(1,'optica'),
                (1,'radio'),
                (2,'alcohol en gel'),
                (2,'suavizante'),
                (2,'detergente'),
				(3,'calzado'),
                (3,'camiseta'),
                (3,'guantes de box'),
                (4,'lavarropas'),
                (4,'microondas'),
				(4,'secarropas'),
                (5,'serrucho'),
                (5,'martillo'),
                (5,'destornillador'),
                (5,'pala'),
				(6,'sommier'),
                (6,'modular'),
                (6,'pintura'),
                (7,'camisa'),
                (7,'saco'),
				(7,'corbata'),
                (8,'abono'),
                (8,'manguera'),
                (8,'rastrillo'),
                (9,'notebook'),
                (9,'pc escritorio'),
                (9,'teclado'),
                (9, 'monitor');
	
    ## TABLA POSTS
		INSERT INTO posts(product, user, post_title, post_description, quantity)
        VALUES ( 	
			(SELECT product_id FROM products WHERE product LIKE "lava%rropas"),
			(SELECT user_id FROM users WHERE user_email LIKE "cristiandracedo@hotmail.com" ),
            'Lavarropas Drean Excel 16kg',
            'Ultimos lavarropas en muy buen estado, se vende por liquidacion de stock',
            10 
		);
        INSERT INTO posts(product, user, quantity, post_date)
        VALUES 
			(7,5,20,current_date()),
            (20,5,5, current_date()),
            (22,5,10,current_date()),
			(4,6,20,current_date()),
            (5,6,25, current_date()),
            (2,6,30,current_date()),
			(10,3,22,current_date()),
            (15,3,14, current_date()),
            (18,3,44,current_date()),
			(3,4,33,current_date()),
            (6,4,12, current_date()),
            (4,4,10,current_date());
		
        INSERT INTO sales(user, post, quantity)
        VALUES
			(1,1,5),
			(1,7,2),
			(2,11,3),
			(4,8,4),
			(5,4,4),
			(6,10,5),
			(6,11,12),
			(4,8,10),
			(3,3,4),
			(3,2,5);
	## TABLA PAY_METHODS
		INSERT INTO pay_methods(description) 
        VALUES 
			('efectivo'),
            ('debito'),
            ('credito'),
            ('cbu'),
            ('cvu');

	## TABLA BILLING
		INSERT INTO billing(pay_m, user, pay_data)
        VALUES 
			(2,1,'2094-2349-2348-1234'),
			(2,2,'7822-1234-7438-1283'),
            (3,1,'7438-1283-1238-1238'),
            (4,1,'2374091823740123823'),
            (5,2,'2983741293048172034');
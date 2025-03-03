-- =============================================
-- Author: Chen Leila, Li Haowen, Liu Ying, Huynh Tam Minh Quan, Zhang Lu
-- Create date: 2025 Feb
-- Description: Supermarket database for Data Management & Analysis class - WLU
-- =============================================

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female', 'Other')),
    birthday DATE CHECK (birthday <= CURRENT_DATE),
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address TEXT NOT NULL,
    postcode VARCHAR(20) NOT NULL
);

CREATE TABLE currency (
    currency_id SERIAL PRIMARY KEY,
    currency_unit VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    department_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    em_gender VARCHAR(10) CHECK (em_gender IN ('Male', 'Female', 'Other')),
    em_birthday DATE NOT NULL CHECK (em_birthday <= CURRENT_DATE),
    em_phone VARCHAR(20) NOT NULL UNIQUE ,
    em_email VARCHAR(100) UNIQUE,
    em_address TEXT NOT NULL,
    em_postcode VARCHAR(20) NOT NULL,
    em_position VARCHAR(50) NOT NULL,
    year_hired SMALLINT,
    skill TEXT NOT NULL,
    hourly_wage NUMERIC NOT NULL CHECK ( hourly_wage > 0.0 ),
    currency_id INT NOT NULL,
    location_type SMALLINT CHECK (location_type IN (0,1,2)), -- 0 = warehouse, 1 = outlet, 2 = office
    em_status SMALLINT CHECK ( em_status IN (0,1) ), -- 0 = working, 1 = resigned

    CONSTRAINT fk_employee_currency FOREIGN KEY (currency_id)
        REFERENCES currency(currency_id) ON DELETE CASCADE
);

CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    manager INT,
    de_name VARCHAR(50) NOT NULL,
    de_type SMALLINT NOT NULL CHECK ( de_type IN (0,1,2)), -- 0 = outlet, 1 = warehouse, 2 = office
    de_location TEXT NOT NULL,
    de_postal VARCHAR(20) NOT NULL,
    de_status SMALLINT NOT NULL CHECK ( de_status IN (0,1,2)), -- 0 = running, 1 = maintaining, 2 = permanently closed

    CONSTRAINT fk_department_manager FOREIGN KEY (manager)
        REFERENCES employee(employee_id) ON DELETE CASCADE
);

ALTER TABLE employee ADD CONSTRAINT fk_employee_department FOREIGN KEY (department_id)
    REFERENCES department(department_id) ON DELETE SET NULL;

CREATE TABLE warehouse (
    department_id INT PRIMARY KEY,
    regions TEXT NOT NULL,

    CONSTRAINT fk_warehouse_department FOREIGN KEY (department_id)
        REFERENCES department(department_id) ON DELETE CASCADE
);

CREATE TABLE outlet (
    department_id INT PRIMARY KEY,
    open_time TEXT NOT NULL,

    CONSTRAINT fk_outlet_department FOREIGN KEY (department_id)
        REFERENCES department(department_id) ON DELETE CASCADE
);

CREATE TABLE office (
    department_id INT PRIMARY KEY,
    capacity INT NOT NULL,

    CONSTRAINT fk_office_department FOREIGN KEY (department_id)
        REFERENCES department(department_id) ON DELETE CASCADE
);

CREATE TABLE product_type (
    ptype_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    unit VARCHAR(10) NOT NULL,
    unit_price NUMERIC CHECK (product_type.unit_price > 0.0) NOT NULL,
    currency_id INT NOT NULL,
    category VARCHAR(50) NOT NULL,

    CONSTRAINT fk_product_type_currency FOREIGN KEY (currency_id)
        REFERENCES currency(currency_id) ON DELETE CASCADE
);

CREATE TABLE product_detail (
    product_id SERIAL PRIMARY KEY,
    ptype_id INT NOT NULL,
    batch_no VARCHAR(20) NOT NULL,
    current_price NUMERIC CHECK ( current_price > 0.0 ) NOT NULL,
    bbf_date DATE NOT NULL,

    CONSTRAINT fk_product_detail_product_type FOREIGN KEY (ptype_id)
        REFERENCES product_type(ptype_id) ON DELETE CASCADE
);

CREATE TABLE product_order (
    po_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    outlet_id INT NOT NULL,
    po_price NUMERIC CHECK ( po_price > 0.0 ) NOT NULL,
    currency_id INT NOT NULL,
    po_date DATE NOT NULL,
    payment_method SMALLINT CHECK ( payment_method IN (0,1,2,3)), -- 0 = cash, 1 = credit, 2 = visa, 3 = online banking
    payment_status SMALLINT CHECK ( payment_status IN (0,1,2)), -- 0 = unpaid, 1 = paid, 2 = cancelled

    CONSTRAINT fk_product_order_customer FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_product_order_outlet FOREIGN KEY (outlet_id)
        REFERENCES outlet(department_id) ON DELETE CASCADE,
    CONSTRAINT fk_employee_currency FOREIGN KEY (currency_id)
        REFERENCES currency(currency_id) ON DELETE CASCADE
);

CREATE TABLE delivery (
    delivery_id SERIAL PRIMARY KEY,
    po_id INT NOT NULL,
    tracking_number VARCHAR(50) NOT NULL,
    sender VARCHAR(50) NOT NULL,
    receiver VARCHAR(50) NOT NULL,
    courier VARCHAR(50) NOT NULL,
    d_address TEXT NOT NULL,
    d_est_date DATE,
    d_act_date DATE,
    deliver_type SMALLINT NOT NULL CHECK ( deliver_type IN (0,1) ), -- 0 = delivery, 1 = pick-up in store
    deliver_status SMALLINT NOT NULL CHECK ( deliver_status IN (0,1,2)), -- 0 = arrived, 1 = delivering, 2 = preparing

    CONSTRAINT fk_delivery_product_order FOREIGN KEY (po_id)
        REFERENCES product_order(po_id) ON DELETE CASCADE
);

CREATE TABLE inventory_request (
    request_id SERIAL PRIMARY KEY,
    outlet_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    ir_date DATE NOT NULL,
    ir_status SMALLINT NOT NULL CHECK ( ir_status IN (0,1,2)), -- 0 = pending, 1 = approved, 2 = denied
    approved_by INT,

    CONSTRAINT fk_inventory_request_outlet FOREIGN KEY (outlet_id)
        REFERENCES outlet(department_id) ON DELETE CASCADE,
    CONSTRAINT fk_inventory_request_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(department_id) ON DELETE CASCADE,
    CONSTRAINT fk_inventory_request_approved_by FOREIGN KEY (approved_by)
        REFERENCES employee(employee_id) ON DELETE CASCADE
);

CREATE TABLE inventory_shipment (
    ishipment_id SERIAL PRIMARY KEY,
    request_id INT NOT NULL,
    is_courier VARCHAR(50) NOT NULL,
    from_address TEXT NOT NULL,
    to_address TEXT NOT NULL,
    is_est_date DATE,
    is_act_date DATE,
    is_status SMALLINT NOT NULL CHECK ( is_status IN (0,1,2) ), -- 0 = arrived, 1 = delivering, 2 = preparing

    CONSTRAINT fk_inventory_shipment_inventory_request FOREIGN KEY (request_id)
        REFERENCES inventory_request(request_id) ON DELETE CASCADE
);

CREATE TABLE supplier (
    supplier_id SERIAL PRIMARY KEY,
    su_name VARCHAR(50) NOT NULL,
    su_phone VARCHAR(20) UNIQUE NOT NULL,
    su_email VARCHAR(100) UNIQUE NOT NULL,
    su_address TEXT NOT NULL,
    su_postcode VARCHAR(20) NOT NULL
);

CREATE TABLE supplier_order (
    so_id SERIAL PRIMARY KEY,
    supplier_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    so_price NUMERIC NOT NULL CHECK ( so_price > 0.0 ),
    currency_id INT NOT NULL,
    so_date DATE NOT NULL,
    so_pay_method SMALLINT CHECK (so_pay_method in (0,1,2,3)) NOT NULL, -- 0 = cash, 1 = credit, 2 = visa, 3 = online banking
    so_pay_status SMALLINT CHECK (so_pay_status in (0,1,2)) NOT NULL, -- 0 = unpaid, 1 = paid, 2 = cancelled
    delivery_status SMALLINT CHECK (delivery_status in (0,1,2)) NOT NULL, -- 0 = arrived, 1 = delivering, 2 = preparing
    so_handler INT NOT NULL,

    CONSTRAINT fk_supplier_order_supplier FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id) ON DELETE CASCADE ,
    CONSTRAINT fk_supplier_order_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(department_id) ON DELETE CASCADE ,
    CONSTRAINT fk_supplier_so_handler FOREIGN KEY (so_handler)
        REFERENCES employee(employee_id) ON DELETE CASCADE,
    CONSTRAINT fk_supplier_order_currency FOREIGN KEY (currency_id)
        REFERENCES currency(currency_id) ON DELETE CASCADE
);

CREATE TABLE supply_shipment (
    sshipment_id SERIAL PRIMARY KEY,
    so_id INT NOT NULL,
    ss_courier VARCHAR(50) NOT NULL,
    from_address TEXT NOT NULL,
    to_address TEXT NOT NULL,
    ss_est_date DATE,
    ss_act_date DATE,
    shipping_status SMALLINT NOT NULL CHECK (shipping_status in (0,1,2)), -- 0 = arrived, 1 = delivering, 2 = preparing

    CONSTRAINT fk_supply_shipment_supply_order FOREIGN KEY (so_id)
        REFERENCES supplier_order(so_id) ON DELETE CASCADE
);

CREATE TABLE complaint (
    complaint_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    po_id INT NOT NULL,
    issue_desc TEXT NOT NULL,
    res_desc TEXT,
    res_status SMALLINT CHECK (res_status in (0,1,2)) NOT NULL, -- 0 = pending, 1 = solved, 2 = cancelled
    res_date DATE,
    complain_handler INT,

    CONSTRAINT fk_complaint_customer FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_complaint_product FOREIGN KEY (po_id)
        REFERENCES product_order(po_id) ON DELETE CASCADE,
    CONSTRAINT fk_complaint_complaint_handler FOREIGN KEY (complain_handler)
        REFERENCES employee(employee_id) ON DELETE CASCADE
);

-- N-N relationship table
CREATE TABLE product_order_product_detail (
    po_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,

    PRIMARY KEY (po_id, product_id),

    CONSTRAINT fk_po FOREIGN KEY (po_id)
        REFERENCES product_order(po_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES product_detail(product_id) ON DELETE CASCADE
);

CREATE TABLE outlet_product_detail (
    product_id INT NOT NULL,
    outlet_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,

    PRIMARY KEY (product_id,outlet_id),

    CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES product_detail(product_id) ON DELETE CASCADE,
    CONSTRAINT fk_outlet FOREIGN KEY (outlet_id)
        REFERENCES outlet(department_id) ON DELETE CASCADE
);

CREATE TABLE inventory_request_product_detail (
    product_id INT NOT NULL,
    request_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,

    PRIMARY KEY (product_id,request_id),

    CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES product_detail(product_id) ON DELETE CASCADE,
    CONSTRAINT fk_request FOREIGN KEY (request_id)
        REFERENCES inventory_request(request_id) ON DELETE CASCADE
);

CREATE TABLE warehouse_product_detail (
    product_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,

    PRIMARY KEY (product_id,warehouse_id),

    CONSTRAINT fk_product FOREIGN KEY (product_id)
        REFERENCES product_detail(product_id) ON DELETE CASCADE,
    CONSTRAINT fk_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(department_id) ON DELETE CASCADE
);

CREATE TABLE supplier_product_type (
    supplier_id INT NOT NULL,
    ptype_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,

    PRIMARY KEY (supplier_id,ptype_id),

    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (ptype_id)
        REFERENCES product_type(ptype_id) ON DELETE CASCADE
);

CREATE TABLE supplier_order_product_type (
    ptype_id INT NOT NULL,
    so_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit VARCHAR(20) NOT NULL,
    batch_no VARCHAR(50) NOT NULL,

    PRIMARY KEY (ptype_id,so_id),

    CONSTRAINT fk_product FOREIGN KEY (ptype_id)
        REFERENCES product_type(ptype_id) ON DELETE CASCADE,
    CONSTRAINT fk_supplier FOREIGN KEY (so_id)
        REFERENCES supplier_order(so_id) ON DELETE CASCADE
);




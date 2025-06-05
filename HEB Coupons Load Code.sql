LOAD DATA LOCAL INFILE 'G:/Shared drives/TGC SQL and Data/Coupon_Loads/Coupons_WE_2025_05_11.csv'
INTO TABLE HEB_coupons
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@week_end_date, total_doll, total_count, per_coupon_doll, coupon_id, description, @start, @end, storenumber, storename, promo_type)
SET
    week_end_date = STR_TO_DATE(@week_end_date, '%m/%d/%Y'),
    start = STR_TO_DATE(@start, '%m/%d/%Y'),
    end = STR_TO_DATE(@end, '%m/%d/%Y');
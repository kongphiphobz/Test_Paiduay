SELECT users.*, user.age, zipcodes.zipcode, district.name, province.name, subdistrict.name 
FROM users
JOIN zipcode ON users.zipcode_fk = zipcodes.zipcode
JOIN district ON zipcodes.district_fk = district.id
JOIN provinces ON zipcodes.provinces_fk = provinces.id
JOIN subdistrict ON zipcodes.subdistrict_fk = subdistrict.id
WHERE users.username = 'paiduay' OR users.username = 'kasidit'
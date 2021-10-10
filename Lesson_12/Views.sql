CREATE VIEW all_partners AS 
SELECT tc.name as type_,  c.name categories, p.* FROM table_categories tc 
LEFT JOIN categories c on c.table_category_id = tc.id 
INNER JOIN partners__categories pc on c.id  = pc.category_id 
LEFT JOIN partners p on p.id = pc.partner_id 


CREATE VIEW models_params AS 
SELECT mm.id, mm.name as name_model, mm.body, mmh.name as param_name, mmh.value as param_val, mmo.name as opt_name, mmo.value as opt_val FROM ml_models mm 
LEFT JOIN ml_models_hyperparameters mmh ON mmh.ml_model_id = mm.id 
LEFT JOIN ml_models_options mmo ON mmo.ml_model_id = mm.id
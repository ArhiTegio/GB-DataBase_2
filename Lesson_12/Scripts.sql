--Весь список партнеров
SELECT tc.name as type_,  c.name categories, p.name as name_partner, p.offer, p.min_cost_offer, p.discription, p.link FROM table_categories tc 
LEFT JOIN categories c on c.table_category_id = tc.id 
INNER JOIN partners__categories pc on c.id  = pc.category_id 
LEFT JOIN partners p on p.id = pc.partner_id 

--Список моделей с параметрами
SELECT ml.name, count(mmh.id) as count_ FROM ml_models ml
LEFT JOIN ml_models_hyperparameters mmh on mmh.ml_model_id = ml.id 
GROUP BY ml.name 
HAVING count_ > 0

--Количество лучших моделей для каждой из категории
SELECT c.id, c.name, count(best_ml_model_id) as count_ FROM partners__categories pc 
LEFT JOIN categories as c on c.id = pc.category_id 
INNER JOIN ml_models mm on mm.id = pc.best_ml_model_id 
GROUP BY c.id 

--Список отзывов для определенного партнера
SELECT p.name, pr.* FROM partners p 
LEFT JOIN partner_reviews pr ON pr.partner_id = p.id 
WHERE p.id = 510

--Описания партнеров
SELECT p.name, pp.* FROM partners p 
LEFT JOIN partner_profile pp 

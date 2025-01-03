# who prefers energy drinks more?
SELECT Gender, count(*) AS drinks_preferences
FROM 
dim_repondents
GROUP BY Gender
ORDER BY drinks_preferences DESC;

# Which age group prefers energy drinks more?
SELECT Age, count(*) AS Age_preferences
FROM 
dim_repondents
GROUP BY Age
ORDER BY Age_preferences DESC;

# Which type of marketing reaches the most Youth (15-30)?

SELECT Marketing_channels, COUNT(*) AS Marketing_preferences
FROM fact_survey_responses AS FSR
JOIN dim_repondents AS DR ON FSR.Respondent_ID = DR.Respondent_ID
WHERE Age = "15-18" OR Age = "19-30"
GROUP BY Marketing_channels
ORDER BY Marketing_preferences DESC;

# What are the preferred ingredients of energy drinks among respondents?

SELECT Ingredients_expected AS Ingredients, COUNT(*) AS Total_Ingredients_preferred
FROM fact_survey_responses
GROUP BY Ingredients
ORDER BY Total_Ingredients_preferred DESC;

# What packaging preferences do respondents have for energy drinks?

SELECT Packaging_preference AS Packaging, COUNT(*) AS Total_Packaging_preferred
FROM fact_survey_responses
GROUP BY Packaging
ORDER BY Total_Packaging_preferred DESC;

# Who are the current market leaders?
SELECT Current_brands AS Brands, COUNT(*) AS Market_Leaders
FROM fact_survey_responses
GROUP BY Brands
ORDER BY Market_Leaders DESC;

# What are the primary reasons consumers prefer those brands over ours?

SELECT Reasons_for_choosing_brands AS brand_Reasons, COUNT(*) AS Total_Reasons_preferred
FROM fact_survey_responses
GROUP BY Reasons_for_choosing_brands
ORDER BY Total_Reasons_preferred DESC;

# Which marketing channel can be used to reach more customers?
SELECT Marketing_channels, COUNT(*) AS Best_Marketing_Channels
FROM fact_survey_responses
GROUP BY Marketing_channels
ORDER BY Best_Marketing_Channels DESC;

# What do people think about our brand? (overall rating)
SELECT Brand_perception, COUNT(*) AS Overall_Ratings
FROM fact_survey_responses
GROUP BY Brand_perception
ORDER BY Overall_Ratings DESC;

SELECT Taste_experience, COUNT(*) AS Taste_Ratings
FROM fact_survey_responses
GROUP BY Taste_experience
ORDER BY Taste_Ratings DESC;

# Which cities do we need to focus more on?
SELECT DC.City, DC.Tier, Count(*) AS Responders_Count
FROM dim_cities AS DC
join dim_repondents AS DR on DC.City_ID = DR.City_ID
GROUP BY DC.City, DC.Tier
Order BY Responders_Count DESC;

# Where do respondents prefer to purchase energy drinks?

SELECT Purchase_location, COUNT(*) AS Purchase_location_preferred
FROM fact_survey_responses
GROUP BY Purchase_location
ORDER BY Purchase_location_preferred DESC;

# What are the typical consumption situations for energy drinks among respondents?
SELECT Typical_consumption_situations, COUNT(*) AS Respondants_number
FROM fact_survey_responses
GROUP BY Typical_consumption_situations
ORDER BY Respondants_number DESC;

# What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
SELECT Limited_edition_packaging, COUNT(*) AS Total_number_of_respondents
FROM fact_survey_responses
GROUP BY Limited_edition_packaging
ORDER BY Total_number_of_respondents DESC;

SELECT Price_range, COUNT(*) AS price_preferred
FROM fact_survey_responses
GROUP BY Price_range
ORDER BY price_preferred DESC;

# Which area of business should we focus more on our product development? (Branding/taste/availability)

SELECT Reasons_for_choosing_brands, COUNT(*) AS Reasons
FROM fact_survey_responses
GROUP BY Reasons_for_choosing_brands
ORDER BY Reasons DESC;

# What are the main reasons for consuming energy drinks?
SELECT Consume_reason AS reasons, COUNT(*) AS total
FROM fact_survey_responses
GROUP BY Consume_reason
ORDER BY total DESC;

# what are the main reasons preventing you from trying it?
SELECT Reasons_preventing_trying, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Reasons_preventing_trying
ORDER BY Total DESC;

# How often do you consume energy drinks?
SELECT Consume_time, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Consume_time
ORDER BY Total DESC;

# What improvements would you like to see in energy drinks currently available in the market?
SELECT Improvements_desired, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Improvements_desired
ORDER BY Total DESC;

# Would you be interested in an energy drink with natural or organic ingredients?
SELECT Interest_in_natural_or_organic, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Interest_in_natural_or_organic
ORDER BY Total DESC;

# Have you heard of our energy drink before today?
SELECT Heard_before, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Heard_before
ORDER BY Total DESC;

# How often do you consume energy drinks?
SELECT Consume_time, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Consume_time
ORDER BY Total DESC;

# Have you heard of our energy drink before today?
SELECT Heard_before, COUNT(*) AS Total
FROM fact_survey_responses
GROUP BY Heard_before
ORDER BY Total DESC;
-- SELECT * 
-- FROM Death_By_Cause.HIVDeaths
-- Order by 1,2

-- Select Data that we are going to be starting with

-- SELECT Entity, Year, Deaths_All_Ages
-- FROM Death_By_Cause.HIVDeaths
-- Order by 1,2

--  HIV deaths all ages vs HIV deaths 15 to 49

-- SELECT Entity, Year, Deaths_15_49, Deaths_All_Ages
-- FROM Death_By_Cause.HIVDeaths
-- Order by 1,2

-- HIV deaths all ages vs HIV deaths 15 to 49 as percentage

-- SELECT Entity, Year, Deaths_15_49, Deaths_All_Ages, (Deaths_15_49/Deaths_All_Ages)*10 as Percent
-- FROM Death_By_Cause.HIVDeaths
-- Order by 1,2

-- Countries with Highest Death Rate 

-- SELECT Entity, Max(Deaths_All_Ages) as Highest_HIV_deaths
-- FROM Death_By_Cause.HIVDeaths
-- Group by Entity
-- Order by Highest_HIV_deaths desc


-- Looking at specific countries

-- SELECT *
-- FROM Death_By_Cause.HIVDeaths
-- where Entity = 'Russia'
-- Or Entity = 'Japan'


-- GLOBAL NUMBERS

-- SELECT SUM(Deaths_All_Ages) as Total_Deaths_Worldwide
-- FROM Death_By_Cause.HIVDeaths


-- Percent of population infected compared to number of deaths 

-- Select * 
-- From Death_By_Cause.HIVDeaths dea
-- Join Death_By_Cause.Percent_Population_Infected vac
-- on dea.entity = vac.entity

Create View Percentinfected_compared_Deaths as
Select * 
From Death_By_Cause.HIVDeaths dea
Join Death_By_Cause.Percent_Population_Infected vac
on dea.entity = vac.entity


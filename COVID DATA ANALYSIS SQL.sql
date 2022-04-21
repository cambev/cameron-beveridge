select*
From [COVID DATA ]..coviddeaths
order by 3,4

--select* 
--from [COVID DATA ]..covidvax
--order by 3,4


-- select data that we are going to use[dbo].[COVID DEATHS]

select location, data, total_cases, new_cases, total_deaths, population
from [COVID DATA ]..coviddeaths
order by 1,2

--looking at total cases vs total deaths
--illustrates the liklihood of dying from contracting covid in a country

select location, data, total_cases, total_deaths, (total_deaths/total_cases)*100 as deathpercentage
from [COVID DATA ]..coviddeaths
where location like '%states%'
order by 1,2

--looking at total cases vs population
--illustrates the % population that has Covid

select location, data, total_cases, population, (total_cases/population)*100 as deathpercentage
from [COVID DATA ]..coviddeaths
where location like '%states%'
order by 1,2

--Identifying countries with the highest infection rate compared to population

select location, population, MAX(total_cases) as highestinfectioncount, MAX((total_cases/population))*100 as percentpopulationinfected
from [COVID DATA ]..coviddeaths
--where location like '%states%'
Group by location, population
order by percentpopulationinfected desc

--countries with the highest death count per population

select location, MAX(total_deaths) as totaldeathcount
from [COVID DATA ]..coviddeaths
--where location like '%states%'
Group by location, population
order by totaldeathcount desc

--countries with the highest death count per continent

select continent, MAX(cast(total_deaths as int)) as totaldeathcount
from [COVID DATA ]..coviddeaths
--where location like '%states%'
where continent is not null
Group by location, population
order by totaldeathcount desc


--total population vaccinated

select dea.location, dea.date, dea.population, vac.new_vaccinations
from [COVID DATA ]..coviddeaths dea
join [COVID DATA ]..covidvax vac
	on dea.location = vac.location
	and dea.date = vac.date
order by 1,2,3 




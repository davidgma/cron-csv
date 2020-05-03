#!/bin/bash
csvsql --query 'SELECT [Food Name], count([Food Name]) as CountOf from servings group by [Food Name]' servings.csv
#csvsql --query 'SELECT [Food Name] from servings' servings.csv

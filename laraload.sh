#!/bin/bash

function keep_doing_function(){
	if [ ! -f .env ]
	then
		cp .env.example .env
	fi
}

composer update --no-scripts && composer fund && keep_doing_function  && php artisan key:generate && php artisan migrate && echo -e "*** Successfully loaded Laravel project ***" && php artisan serve 

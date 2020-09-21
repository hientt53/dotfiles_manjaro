laravelClear() {
    php artisan config:clear 
    php artisan cache:clear 
    php artisan view:clear 
    php artisan route:clear 
    composer dump-autoload
}

alias pan="php artisan"
alias paner="php artisan tinker"

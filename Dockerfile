FROM whiterabbitgede/franken-laravel:dev-v0.0.3

WORKDIR /app

# copy laravel project
# COPY --chown=www-data:www-data . .

EXPOSE 80 443 8000

CMD php artisan octane:frankenphp --host=0.0.0.0 --caddyfile=/app/Caddyfile

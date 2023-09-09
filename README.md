# solomira

Es un pequeño cliente de la API de justwatch.com. No necesita credenciales. En proceso.

## Uso
Ejecutar `bundle install` para instalar las dependencias del cliente.

Para hacer uso del cliente, basta con ejecutar `irb` en consola:
```ruby
require_relative 'client'
cli = SoloMira::Client.new
puts cli.search_movie('Shrek')
```

Por ahora `search_movie` es el único endpoint implementado. Con el tiempo se irán agregando más recursos de la API.
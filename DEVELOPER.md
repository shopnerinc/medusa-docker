# Developer Guide

## Dependencies

- Docker
- Docker Compose
- cURL

## Running

```sh
# Run the compose stack
pnpm compose:up

# Check the health of the Medusa Server
curl http://localhost:9000/health

# Stop the compose stack
pnpm compose:down
```

## Admin UI

```sh
# Create an admin user
docker exec -it medusa-medusa-server-1 ./node_modules/.bin/medusa user -e <email> --invite
```

| URL                                                 |
| --------------------------------------------------- |
| [Admin login page](http://localhost:9000/app/login) |

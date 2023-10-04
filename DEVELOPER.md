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
curl http://127.0.0.1:9000/health

# Stop the compose stack
pnpm compose:down
```

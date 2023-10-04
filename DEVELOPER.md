# Developer Guide

## Dependencies

- pnpm
- Docker
- Docker Compose
- cURL

## Running

### Compose

```sh
# Run the compose stack
pnpm compose:up

# Check the health of the Medusa Server
curl http://localhost:9000/health

# Stop the compose stack
pnpm compose:down
```

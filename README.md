# DSSB - Directório de Serviços de Saúde e Bem Estar

## Setup

### Prerequisites

- Ruby 3.4.5
- Rails 8.0+
- PostgreSQL

### Installation

1. **Clone and install**

   ```bash
   git clone https://github.com/dmcarmo/lista.git
   cd lista
   bundle install
   ```

2. **Environment setup**

   ```bash
   cp .env.example .env
   # Edit .env with your credentials and other config
   ```

3. **Database setup**

   ```bash
   rails db:create db:migrate db:seed
   ```

4. **Start the server**

   ```bash
   bin/dev
   ```

Visit `http://localhost:3000`

## Testing

```bash
rspec
```

## License

MIT License
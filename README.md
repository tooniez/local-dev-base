# Local Development Services 

This project provides a local development environment with essential services for building and testing modern web applications. It includes a variety of databases, caching solutions, search capabilities, object storage, and email testing tools, all containerized for easy setup.

## Features
- MongoDB for flexible, document-based data storage
- PostgreSQL for robust relational database needs
- Redis for high-performance caching and real-time data processing
- Elasticsearch for powerful full-text search and analytics
- MinIO for S3-compatible object storage
- MailHog for testing email functionality in a sandboxed environment

All services are pre-configured with Docker Compose, allowing developers to quickly spin up a complete development stack with a single command. This setup ensures consistency across different development environments and simplifies the process of onboarding new team members.


## Prerequisites

- Docker
- Docker Compose
- Make (optional, for using Makefile commands)

## Services

This project uses several services, all containerized using Docker:

1. **MongoDB**: NoSQL database
   - Default port: 27017

2. **PostgreSQL**: Relational database
   - Default port: 5432

3. **Redis**: In-memory data structure store
   - Default port: 6379

4. **Elasticsearch**: Search and analytics engine
   - Default port: 9200

5. **MinIO**: Object storage
   - API port: 9000
   - Console port: 9001

6. **MailHog**: Email testing tool
   - SMTP port: 1025
   - Web interface port: 8025

## Running the Project

To start all services:

```
make up
```

To stop all services:

```
make down
```

To view logs:

```
make logs
```

To access the MinIO console:

```
http://localhost:9001
```

To access the MailHog web interface:

```
http://localhost:8025
```

## Additional Information

For more details on each service, refer to their respective documentation:

- [MongoDB](https://www.mongodb.com/docs)
- [PostgreSQL](https://www.postgresql.org/docs)
- [Redis](https://redis.io/docs)
- [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
- [MinIO](https://docs.min.io/docs/minio-docker-quickstart-guide.html)
- [MailHog](https://github.com/mailhog/MailHog)

# License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

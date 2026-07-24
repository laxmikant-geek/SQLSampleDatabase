# SQLSampleDatabase

Scripts to create the sample databases used in [GeeksArray](https://geeksarray.com) tutorials —
AdventureWorks, Northwind, and GeekStore.

## Scripts

| Script | Creates | Notes |
|---|---|---|
| `AdventureWorks2022.sql` | `AdventureWorks2022` (schema) | For SQL Server 2019/2022 and Docker/Azure SQL Edge. No hard-coded file paths, compatibility level 160. |
| `AdventureWorks2017.sql` | `AdventureWorks2017` (schema) | Kept for older tutorials that reference the 2017 name. |
| `AdventureWorks-seed-products.sql` | sample rows in `Production.Product` | Run after either AdventureWorks script so Web API / EF Core tutorials return data. |
| `GeekStore.sql` | `GeekStore` | Categories + related tables used in the repository-pattern tutorial. |
| `Northwind.sql` | `Northwind` | The classic Northwind database. |

## How to run

**SQL Server Management Studio / Azure Data Studio** — open the script and execute it.

**Command line (`sqlcmd`)** — works on Windows, macOS, and Linux:

```bash
sqlcmd -S localhost -U sa -P '<your password>' -C -i AdventureWorks2022.sql
sqlcmd -S localhost -U sa -P '<your password>' -C -d AdventureWorks2022 -i AdventureWorks-seed-products.sql
```

**SQL Server in Docker** — start a container first, then run the same `sqlcmd` commands against it:

```bash
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<your password>" \
  -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
```

Notes:

- The AdventureWorks scripts create the schema (tables, views, procedures, functions).
  Use the seed script for sample product rows, or restore Microsoft's full
  [AdventureWorks backup](https://learn.microsoft.com/sql/samples/adventureworks-install-configure)
  if you need the complete data set.
- On Azure SQL Edge (ARM Macs), objects that depend on full-text search or XML schema
  collections are skipped — everything the GeeksArray tutorials use works fine.

# EctoTest Seeding Ownership Timeout Example

### Demonstrates ecto timing out and disconnecting when resetting test seed data despite setting `:ownership_timeout` to larger number.

#### Details:
- basic Phoenix 1.4.9 starting point
- ecto 3.1.7
- ecto_sql 3.1.6
- ownership_timeout is set to `100_000`
- seeds.exs waits for `70_000` between inserts

#### To test:
1. clone repo
2. `mix ecto.create`
3. `MIX_ENV=test mix ecto.reset`
4. observe output in terminal

#### Output

```
Application.get_env(:ecto_example, EctoExample.Repo): [
  username: "postgres",
  password: "postgres",
  database: "ecto_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  ownership_timeout: 100000
]
insertion one: %EctoExample.Blog.Post{
  __meta__: #Ecto.Schema.Metadata<:loaded, "blog_posts">,
  id: 1,
  inserted_at: ~N[2019-07-11 03:36:16],
  title: "title one",
  updated_at: ~N[2019-07-11 03:36:16]
}
wait: 70000
23:37:16.719 [error] Postgrex.Protocol (#PID<0.321.0>) disconnected: ** (DBConnection.ConnectionError) owner #PID<0.92.0> timed out because it owned the connection for longer than 60000ms (set via the :ownership_timeout option)
insertion two: %EctoExample.Blog.Post{
  __meta__: #Ecto.Schema.Metadata<:loaded, "blog_posts">,
  id: 2,
  inserted_at: ~N[2019-07-11 03:37:26],
  title: "title two",
  updated_at: ~N[2019-07-11 03:37:26]
}
```
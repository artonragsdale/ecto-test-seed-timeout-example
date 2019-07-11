# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EctoExample.Repo.insert!(%EctoExample.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
IO.inspect(Application.get_env(:ecto_example, EctoExample.Repo), label: "Application.get_env(:ecto_example, EctoExample.Repo)")
EctoExample.Repo.insert!(%EctoExample.Blog.Post{title: "title one"}) |> IO.inspect(label: "insertion one")
wait = 70_000
IO.inspect(wait, label: "wait")
:timer.sleep(wait)
EctoExample.Repo.insert!(%EctoExample.Blog.Post{title: "title two"}) |> IO.inspect(label: "insertion two")

ExUnit.start()

defmodule ExGithubActionsTest do
  use ExUnit.Case
  doctest ExGithubActions
  test "与えられた引数＋１" do
    assert ExGithubActions.my_func(1) == 2
  end
  test "与えられた引数＋１（キーワードリスト）", do:
  assert(ExGithubActions.my_func(1) == 2)
  test "与えられた引数を文字列から数値に変換し＋１" do
    assert ExGithubActions.my_funcs("100") == 101
  end
  test "結果が２以上になっていないことを確認" do
    refute ExGithubActions.my_func(1) > 2
  end
end

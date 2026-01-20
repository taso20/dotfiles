local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    s("cp-", {
        t({
            "#include <bits/stdc++.h>",
            "using namespace std;",
            "",
            "using ll = long long;",
            "#define rep(i, n) for (int i = 0; i < (int)(n); i++)",
            "#define rep1(i, n) for (int i = 1; i <= (int)(n); i++)",
            "#define all(x) (x).begin(), (x).end()",
            "const ll INF = 1e18;",
            "",
            "int main() {",
            "    ios_base::sync_with_stdio(false);",
            "    cin.tie(NULL);",
            "",
            "    "
        }),
        i(1), -- 展開後にここにカーソルがジャンプします
        t({
            "",
            "",
            "    return 0;",
            "}"
        }),
    }),
})

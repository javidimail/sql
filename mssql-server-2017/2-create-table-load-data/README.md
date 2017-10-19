Clone a copy of microsoft sample databases:
```
git clone -n https://github.com/Microsoft/sql-server-samples
cd sql-server-samples
git config core.sparsecheckout true
echo samples/databases/*| out-file -append -encoding ascii.git/info/sparse-checkout
git checkout
```

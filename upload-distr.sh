#!/bin/bash

# 删除打包目录
rm -r './dist'

# 打包，记得修改版本号
python3 -m build

# 上传到服务器, 记得在 $HOME/.pypirc 增加 pypi 的 用户名 和  token
python3 -m twine upload --repository pypi dist/*
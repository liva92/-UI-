### 
# @Author: liva
 # @Date: 2019-08-23 11:03:14
 # @LastEditors: liva
 # @LastEditTime: 2019-08-23 11:05:18
 ###

# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件tuitui-ui.css
echo '正在生成ui.css文件...'
npx postcss src/ui.css -o dist/ui.css -u postcss-import autoprefixer --no-map 


# 打包出被压缩的CSS文件tuitui-ui.min.css
echo '正在生成ui.min.css文件...'
npx postcss src/ui.css -o dist/ui.min.css -u postcss-import autoprefixer cssnano --no-map

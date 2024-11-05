# Node.jsの公式イメージを使用
FROM node:14

# 作業ディレクトリを設定
WORKDIR /app

# パッケージ情報をコピーして依存関係をインストール
COPY package*.json ./
RUN npm install

# プロジェクトのソースコードをコピー
COPY . .

# 開発サーバーを起動
CMD ["npm", "start"]
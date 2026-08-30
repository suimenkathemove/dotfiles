---
name: cspell-global
description: グローバルの cspell 個人辞書（dotfiles の cspell.json）に単語を追加する。「cspell に追加して」「スペルチェックに登録して」「unknown word を許可して」など、cspell の未知語エラーを解消したいときに使う。
---

# グローバル cspell 辞書に単語を追加する

対象ファイル: `~/development/suimenkathemove/dotfiles/cspell.json`

これは `install/install.sh` の `cspell link add` でグローバル設定として登録されている個人辞書。

プロジェクト固有の用語（そのリポジトリでしか使わない造語など）は、そこにプロジェクトローカルの
`cspell.json` があればそちらに追加するか、ユーザーにどちらへ入れるか確認する。

## 手順

1. 追加する単語を決める。
   ユーザーが明示していない場合は、cspell の出力や対象ファイルから未知語を集める。
   - `npx cspell <path>` または `npx cspell lint --words-only --unique <path>` で未知語一覧を取得できる。
2. `cspell.json` を Read し、Edit で `words` 配列の**正しい並び順の位置**に単語を挿入する。
3. 追加後に `npx cspell <path>` を再実行して、エラーが解消したことを確認する。

## ルール

- `words` は**大文字小文字を無視したアルファベット順**で並べる（既存の並びに合わせる）。
- 既存の単語（大文字小文字を無視して一致）は追加しない。
- 元の表記（例: `PKCE` のような大文字）はそのまま保持する。
- 配列の最後の要素にも**末尾カンマを付ける**既存スタイルを維持する。
- インデントは 2 スペース。

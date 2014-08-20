## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

Xcodeセットアップガイド
==================

最初の準備
----------

1. Xcodeを、[OS XのApp Store](https://itunes.apple.com/ca/app/xcode/id497799835?mt=12)からインストール
2. Xcodeのコマンドラインツール（command line tools）をインストール

コマンドラインツールをインストールするには、まずXcodeをインストールしてから、ターミナルを起動して（Applications/Utilities/Terminal.app にあります）以下のコマンドを入力してエンターキーを押します。

```
xcode-select --install
```

これで、コマンドラインツールのインストーラーが起動します。「Install」ボタンでインストールを開始します。

![install dialog for the command line tools](install-dialog.png)

もしアップデート・サーバーが利用できないというエラーが出ても、気にしないでください。このエラーは、既にツールがインストールされている場合に起こるようです。この場合は、既に準備はできています!

![server error when installing command line tools](install-dialog-server-error.png)


セットアップのテスト
------------------

これで、openFrameworksのアプリケーションをビルドする全てが整いました! openFrameworksに付属してくるサンプルを一つ開いて、テストしてみましょう。

まず始めに、このサイトからダウンロードして解答したフォルダーを、どこか適当な場所に移動します。このフォルダーは、あなたのopenFrameworksのルート（OF_ROOTと呼ばれます）として参照されます。このopenFrameworksルート中に、いくつかキーとなるサブフォルダーがあります。

- **apps** は、あなたが作成するアプリケーションを配置することになります。
- **examples** には、ビデオや3Dグラフィクス、サウンド、フォントなど様々な特定の機能をデモするアプリケーションが含まれています。
- **addons** は、[openFrameworksのアドオン](http://ofxaddons.com/)が含まれます (コミュニティーの貢献による、openFrameworksのコア機能を拡張するものです)。
- **projectGenerator_osx** には、新規にopenFramworksのプロジェクトを生成するのに便利な、project generatorが入っています。

では、3DPrimitivesExampleでセットアップをテストしてみましょう。**example**フォルダを開いて、その中の**3d**のさらに中にある**3DPrimitivesExample**フォルダを開きます。この中には2つのフォルダといくつかのファイルが入っています。

![selecting the 3D primitives example](example-selecting.png)

openFrameworksのアプリケーションの基本的な構造は以下のようになっています。

- **src** には、アプリケーションのソースファイルが入っています。
- **bin** は、最終的に起動可能なアプリケーションが配置されます。さらにその中の**data**フォルダには、画像、サウンドといったアプリケーションのアセット（素材）が入っています。

`.xcodeproj`という拡張子のファイルは、Xcodeで開くものです。早速開いてみましょう。下記のような画面が表示されるはずです。ウィンドウの左コラムのプロジェクトの項目を展開して、内容を表示するために、下記の画像にあるように`ofApp.cpp`まで下がっていきましょう。

この解説は、Xcodeのバージョン6で書かれています。あなたが未来に生きていない限り、表示は若干異なります。

![xcode showing an openframeworks example](example-open.png)

左側のバーは、汎用的なプロジェクトのブラウザです。ここで、プロジェクトのファイルや、アプリケーションをビルドした際のエラーが表示されます（三角形のアイコンで表示されます）。小さな画面で作業する際のTips: Command+0でサイドバーの表示/非表示を切り替えます。Command+1やCommnd+2で、また別のタブを表示します。

画面中央がメインのエディターです。ここに、プロジェクトのブラウザで選択したファイルのためのエディターを表示します。通常は、ソースファイル（`.cpp`と`.h`ファイル）のテキストエディターです。しかし、一番上にあるプロジェクトファイルを選択すると、プロジェクトの設定画面を表示します。また、画像/ビデオ/サウンドなども選択して調査することが可能です。

右側は、補助的なサイドバーで、あまりopenFrameworksでは関係ありません。右上にあるアイコンの青く表示されたサイドバーの部分をクリックするか、command+option+0で隠すことができます。

画面上は、ツールバーで、大きな「run」ボタンがあります（再生ボタンのような見た目です）、また、Xcodeに実行するのか伝える際にビルドするプロジェクトの種類（Xcodeではこれを「スキーム」と呼んでいます）を表示するダイアログでもあります。

**間違ったスキームが選択されていることがよくあります。**Xcodeはアプリケーションのビルドではなく、「openFrameworks」というスキームが選択される傾向にあります。「openFrameworks」が表示されているドロップダウンを選択して、アプリケーションの名前を選択しましょう。もしrunボタンを選択しても何も起こらない場合、ほとんどの場合これが原因になっています。

![selecting the correct scheme in xcode](example-scheme.gif)


正しいスキームを選択したら、準備は完了です! 左上のrunボタンを押して（もしくはCommand +r）Xcodeにサンプルをビルドして起動するよう伝えます。

最初にopenFrameworksのプロジェクトをビルドする際には、openFramworks自体がコンパイルされるので、数分時間がかかります。openFramworksをアップデートしたり内部のファイルを編集しない限りは、必要なのは一度だけです。openFrameworks自体のビルドが完了すると、Xcodeはサンプルをコンパイルし、「Build Succeeded」というメッセージが表示されて、サンプルのアプリケーションが開始します。

![example running in a window in front of xcode](example-running.png)

サンプルを閉じた後、Xcode画面の下に新たなパネルが開いているのに気づくでしょう。これはコンソールで、`ofLog`のメッセージを表示したり、その他デバッグに使用します。このパネルの表示/非表示は、command+shift+yで切り替えられます。

openFrameworksがコンパイルされるとき、いくつかの注意メッセージが表示されます。不吉な感じがしますが、これは完全に正常です。

新規プロジェクトの生成
------------------------

セットアップの確認ができました。次は新規のプロジェクトをスクラッチから開始する時です。**projectGenerator_osx**フォルダーの中に、`projectGenerator.app`があります。これは、openFrameworksの新規プロジェクト生成を簡単にしてくれます。firstSketch という名前に設定し残りは全て初期設定のままで新規のスケッチを生成し、generateボタンをクリックしましょう。

その後、project generatorを閉じて、**apps/myApps/firstSketch**フォルダに移動します。Xcodeで`firstSketch.xcodeproj`を開いて、左側のブラウザの中のプロジェクトを開きます。**src**フォルダを展開して`ofApp.cpp`ファイルを選択します。

空の`setup()`、`update()`、`draw()` という関数（その他別のいろいろな空の関数）の入った、空欄のアプリケーションのテンプートを閲覧できるでしょう。

![blank openframeworks project template](generate-blank.png)

ウィンドウの左上コーナーにテキストを表示するシンプルなアプリケーションを作成しましょう。`draw()`関数の中に、下記のコードを記入して、command+r（もしくはrunボタンをクリック）でアプリケーションを起動しましょう。

```
ofDrawBitmapStringHighlight("Everything works!", 20, 20);
```

![filling in the draw function while showing xcode autocomplete](generate-text.gif)

タイピングした際に、Xcodeの既に入力した内容から自動補完機能によるサジェスチョンを見ることができたでしょう。上下矢印のキーで選択を完了し、enterキーで確定します。

もし、自動補完が表示されない場合は、Xcodeの速度を上げるため、まずクイックビルドを先にする必要があります。command+bを押して、アプリケーションを起動せずにビルドします。

エラーとデバッグ
--------------------

エラーには必然的に遭遇します。コンパイルエラーとランタイムエラーの、2種類のエラーがあります。コンパイルエラーは、通常、タイプミスやビルド設定の間違いで引き起され、アプリケーションがコンパイル中のまま保持されます。ランタイムエラーは、アプリケーションが起動した後に発生し、`EXC_BAD_ACCESS`や`SIGSEGV`といった大文字のメッセージで脅してきます。

タイプミスによるコンパイルエラーは、特定の行まで、場合によっては特定の文字まで、辿っていくことが可能です。Xcodeは問題の行を赤くハイライトして、問題と思われる部分に小さな赤い三角形の文字で表示します。下記の例は、forループの中で「+」の文字が多すぎる際の表示です。

![compilation error in xcode](errors-compilation.png)

Xcodeはランタイムエラーでも特定の行まで辿ろうとしますが、ちょっと気難しい感じです。正しい場合もありますが、Xcodeはあなたが一切記述していないファイルを指摘することもあり、混乱しがちです。下記の例は、アプリケーションのクラッシュの原因となった行を正しく指摘います（間違ったポインタを使おうとしています）。

![runtime error in xcode](errors-runtime.png)

もし、Xcodeが指摘した行が、正確な問題箇所ではなさそうな場合、左側のサイドバーの別の場所（番号リストになったアイテム）を試します。

ランタイムエラーは、想定しなかった状態に変数が使われた際（想定したよりも大きな値が`int`に代入されたり、可能と思っていたのにポインタが`NULL`になっていたり）に起こることがあります。Xcodeは便利なデバッガが装備されていて、特定の行でアプリケーションの実行を止める機能が便利です。全ての変数について、チェックして回ることが可能です。

ブレイクポイントは、テキストエディターの全ての行の左の枠の小さな隙間をクリックすることで設定可能です。青の矢印で表示され、ドラッグして消去することが可能です。

![setting breakpoints](errors-breakpoint.gif)

アプリケーションがブレイクポイントに当たると、一時停止して、Xcode下部のデバッグ用の枠に、現状での全ての変数の値を表示します。下記のスクリーンショットは、forループが完了した後の変数`a`と`b`の最終値を表示しています。

![triggering breakpoints](errors-breakpoint-triggered.png)

ブレイクポイントのもう一つの使用法として、特定の状況でのみ引き起される状態をセットすることが可能です。下記の画面は、変数`a`が50のときの状況を設定したブレイクポイントです。

![conditional breakpoint being triggered](errors-condition.gif)

プロジェクトにファイルを追加する（アドオンなど）
---------------------------------------------

プロジェクトが大きくなってくると、新しくファイルを追加したくなってくるでしょう。自分のプロジェクト専用に書かれたものであったり、他の人が作成したアドオンや外部ライブラリだったりします。

新規ファイルの生成は、いくつかの方法で可能です。Xcode内のsrcフォルダを右クリックして、「New File...」を選択するのが一つの方法です。また、Xcodeのメニューから「File > New File..」を選択する方法もあります。

ダイアログボックスが表示されたら、「OS X > Source」に移動して「C++ file」を選択します。Xcodeは`.cpp`と`.h`ファイルのペアを自動的に生成します。ですので、例えば基本となる名前「myNewClass」だけを指定すれば、残りは処理してくれます。Xcodeが新規のファイルをsrcフォルダ以下に生成したことを確認してください。

openFramworksのアドオン（addons）の追加は、少し複雑です。しかし、比較的間違いの少ない方法が存在します。もしアドオンにREADMEがある場合は、どのようにアドオンをプロジェクトに追加するのかの説明があります。もしREADMEが無いのであれば、以下の方法が良いでしょう :

- アドオンをopenFrameworksのルートの下にある**addons**フォルダ内に入れます
- Xcodeのプロジェクト内の**addons**フォルダを右クリックします
- 「Add file to (name of your project)...」を選択します。
- ファイルダイアログでアドオンのフォルダまで移動して、追加するアドオンに移動します
- **src**フォルダと*libs*フォルダ（**libs**フォルダが無い場合もあります）を選択します
- 下記のスクリーンショットのようになります

![adding src and libs folders for an addon](files-addons.png)

- 「Add」をクリックします
- Xcodeのプロジェクト内の追加したいフォルダを選択して、右クリックして「New Group from Selection」を選びます
- グループの名前をアドオンの名前に変更します

![renaming addon group](files-new-group.gif)

この段階で、プロジェクトのビルドを試しましょう。もしうまくいったなら、めでたく完了です! もし「file not found」というエラーが出たら、ヘッダーのサーチパスにアドオンのフォルダを追加する必要があります。そのフォルダーは大抵は「include」で、プロジェクトの**src**または**libs**内にあります。

![finding the include folder in ofxjson](files-include-folder.png)

もしパスがわかったら、Xcodeの左バーの先頭にあるプロジェクトのビルド設定に移動して「Build Settings"」のタブを選択します。そして、検索欄に「header search paths」と記入して検索します。

![finding the build settings dialog](files-finding-build-settings.gif)

正しい設定欄が見付かったら、ダブルクリックで編集します。「+」ボタンをクリックして新規パスを追加して、アドオンの「include」フォルダへのパスを入力します。設定欄の`$(OF_PATH)`というのは、openFrameworksのルートフォルダへのパスをあらわしています。

![adding a header search path to a project](files-adding-header-path.gif)

もしアドオンに複数の**include**フォルダがある場合には、この操作をくりかえして行う必要があります。

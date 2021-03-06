#coding:utf-8
<%inherit file="/_templates/slideshow_wide.mako" />

<h1>download</h1>
<div id="download-latest-header">
  <h2>${bf.config.currentVersion}</h2>
  <h3>は最新のリリースです。様々な新機能や新しいインターフェイスが追加されています。もしかしたら新たなバグも… ${bf.config.currentVersion}は、これまでの古いプロジェクトとは100%の互換性はありません。バージョン間の違いの一覧は、<a href="https://raw.github.com/openframeworks/openFrameworks/${bf.config.currentVersion}/CHANGELOG.md">更新履歴</a>を参照してください。</strong></h3>
  <p>openFrameworksを使用するためにはIDE(統合開発環境)が必要です。また、実際に試していくにはプラットフォームごとのセットアップガイドが必要となるでしょう。もしバグをみつけたら<a href="http://github.com/openframeworks/openFrameworks/issues">問題点</a>のページに投稿してください。その他質問があれば、<a href="http://forum.openframeworks.cc">フォーラム</a>に投稿してください。openFrameworksは、<a href="../about/license.html">MITライセンス</a>で配布されています。</p>
</div>

<div id="download-bg-desktop">
    <div id="download-latest-platform">
	    <h2>osx</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_osx_release.zip">osx</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/xcode">xcode</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform">
	    <h2>linux</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux_release.tar.gz">linux 32bit</a> / <a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux64_release.tar.gz">linux 64bit</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/linux-install">linux install</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/linux-eclipse">eclipse</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>windows</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_vs_release.zip">visual studio (2015)</a></p>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_msys2_release.zip">qt creator / msys2</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/vs">visual studio</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/msys2">msys2</a></p>
    </div>
</div>

<div id="download-bg-mobile">
    <div id="download-latest-platform-title">
      <h2>mobile</h2>
      <p><em>モバイル版のopenFrameworksは、デスクトップ版と同等の機能に加えて、加速度系、コンパス、GPSなど、モバイル端末固有の機能をサポートしています。</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>ios</h2>
	    <p><em>osx only</em></p><br/>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_ios_release.zip">xcode</a></p><br/>
	    <h3>IDE setup guide</h3>
	    <p><a href="../setup/iphone">xcode</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>android</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_android_release.tar.gz">android</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/android-eclipse">eclipse + ADT</a></p>
	    <p><a href="../setup/android-studio">android studio</a></p>
    </div>
</div>


<div id="download-bg-armlinux">
    <div id="download-latest-platform-title">
      <h2>linux arm</h2>
      <p><em>Raspberry Pi, Beaglebone (black), Pandaboard, BeagleBoardといった、Linuxの作動するARMベースのボードのためのopenFrameworksです。</em></p>
      <p><em>セットアップガイドは主要なボードのみしか用意されていませんが、ARM6かARM7のボードであれば作動するはずです。</em></p>
    </div>

    <div id="download-latest-platform">
      <h2>linux&nbsp;armv6</h2>
      <h3>download<br/>openFrameworks for</h3>
      <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
      <h3>setup guide</h3>
      <p><a href="../setup/raspberrypi">raspberry pi</a></p>
    </div>

    <div id="download-latest-platform-last">
      <h2>linux&nbsp;armv7</h2>
      <h3>download<br/>openFrameworks for</h3>
      <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv7l_release.tar.gz">linux armv7</a></p><br/>
      <h3>setup guide</h3>
      <p><a href="../setup/pandaboard">pandaboard</a></p>
      <p><a href="../setup/armv7">generic armv7</a></p>
    </div>
</div>

<br class="clearboth"/>

openFrameworksはコンパイルされていない状態でライブラリとしてリリースしています。つまり、openFrameworksをダウンロードしてunzipしたら、以下のフォルダが展開されるはずです：「addons/」「/apps」「/libs」など。これらのフォルダにopenFrameworksの全てが含まれています。ですので、もし複数のバージョンのopenFrameworksを同時に保持していたいのであれば、複数のフォルダを作成して保存するだけです。例えば「of_v0.9.0_osx_release/」「of_v0.8.4_osx_release/」というフォルダを一つずつ作成し、それぞれに「apps/」フォルダなどが含まれるようにします。もし新しいバージョンのopenFrameworksがリリースされたとしても、作成した古いバージョンのアプリケーションは、引き続き古いバージョンのopenFrameworksでコンパイル可能です。

exampleフォルダーは、スタート地点としてうってつけです。exampleフォルダの中には、openFrameworksで可能な様々な実例が入っています。フォントのロード、グラフィクス、オーディオ入出力、サウンドファイルを再生しFFT解析、ビデオのキャプチャー、動画の再生、画像のロードと保存、イベントの取り扱い、シリアル接続などをデモしています。

<div id="myslides">
  <img src="0.png" />
  <img src="1.jpg" />
  <img src="2.png" />
  <img src="3.jpg" />
</div>

--------------------------------

nightly builds
--------------

毎晩、自動的にoFをビルドしています。最新のビルドは[こちら](http://www.openframeworks.cc/nightlybuilds.html)から。

--------------------------------

その他のリリース
--------------

さらに古いバージョンのopenFrameworksは、[ここ](older.html)にアーカイブしてあります。完璧に最新のバージョンは、[openFrameworks GitHub](https://github.com/openframeworks/openFrameworks/)です。ですので、もしopenFrameworksの開発に貢献したいと考えたとしたら、GitHugのリポジトリをフォークしてください。そして、[openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)にあるガイドラインに従うようにしてください。

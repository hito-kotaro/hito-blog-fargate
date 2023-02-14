# aws-plane-network

VPC と PublicSubnet を作成するテンプレートです。
(InternetGateway や RouteTable も含みます。)

# 準備

## Makefile の編集

スタック名を編集

```
STACK_NAME=<STACK_NAME>
```

プロファイル名を編集

```
PROFILE=<YOUR_PROFILE_NAME>
```

プロファイル指定が不要の場合は削除してください
また、deploy コマンド内の以下の行も削除してください(8 行目あたり)

```
--profile $(PROFILE) \
```

# パラメータの編集

テンプレートに渡すパラメータは`params/params.json`で定義します。
VPC の IP アドレス第 2 オクテットと、プレフィックスなどに用いる文字列を指定できます。

```
[
  {
    "ParameterKey": "CidrIp",
    "ParameterValue": "10"
  },
  {
    "ParameterKey": "Project",
    "ParameterValue": "sample-nw"
  }
]
```

# デプロイ

```
$ make deploy
```

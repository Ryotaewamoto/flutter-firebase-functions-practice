/// 型不定 (dynamic) なレスポンスデータを Map<String, dynamic> に変換する。
Map<String, dynamic> toResponseJson(dynamic data) {
  if (data == null) {
    return <String, dynamic>{};
  }
  if (data is List) {
    // リストの場合は適当なキー名として 'items' をつける
    return <String, List<dynamic>>{'items': data};
  }
  if (data is Map) {
    return data as Map<String, dynamic>;
  }
  // リストでもマップでもない場合は存在するのか？？
  // 存在しない想定でとりあえず空のマップを返すことにした。
  return <String, dynamic>{};
}

/// HTTP 通信でのエラーの種別の列挙
/// いまは ConnectivityInterceptor で onRequest をインターセプトして
/// ネットワーク接続を確認したときに、接続がない場合の networkNotConnected しかない。
/// 必要に応じて増やす。
enum ErrorCode {
  networkNotConnected,
}

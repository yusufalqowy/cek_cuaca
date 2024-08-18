import 'package:cekcuaca/core/network_response.dart';
import 'package:flutter/material.dart';

class HandleNetworkResponse<T> extends StatelessWidget {
  final NetworkResponse<T> networkResponse;
  final Widget Function()? onLoading;
  final Widget Function(T)? onSuccess;
  final Widget Function()? onEmpty;
  final Widget Function(String?)? onError;

  const HandleNetworkResponse(
      {super.key,
      required this.networkResponse,
      this.onLoading,
      this.onSuccess,
      this.onEmpty,
      this.onError});

  @override
  Widget build(BuildContext context) {
    Widget widget = const SizedBox(height: 0, width: 0);
    if (networkResponse.status == NetworkStatus.loading) {
      if (onLoading != null) {
        widget = onLoading!();
      }
    } else if (networkResponse.status == NetworkStatus.success) {
      if (onSuccess != null && networkResponse.data != null) {
        widget = onSuccess!(networkResponse.data as T);
      } else if (onEmpty != null && networkResponse.data == null) {
        widget = onEmpty!();
      }
    } else {
      if (onError != null) {
        widget = onError!(networkResponse.message);
      }
    }
    return widget;
  }
}

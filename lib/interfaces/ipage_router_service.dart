import 'package:domain/models/core_router.dart';
import 'package:domain/models/transition_data.dart';
import 'package:flutter/material.dart';
import 'package:infrastructure/interfaces/iobserver.dart';

abstract class IPageRouterService {
  late CoreRouter router;
  late int currentIndex;
  late Object? callbackResult;
  late String lastPage;
  late String onSubmit;
  late String dashboard;
  late IObserver observer;
  late bool isLocked;
  late BuildContext lastContext;
  bool isBoxOpen = false;

  void registerRouter(CoreRouter router);
  bool changePage(
    String name,
    BuildContext context,
    TransitionData data, {
    Object? bindingData,
    bool slice = false,
    int sliceCount = 1,
    bool saveRoute = true,
  });
  Object? getPageBindingData();
  bool clearNavigationData();
  void setPageIndex(int index);
  void backToPrevious(BuildContext context, {bool reverse});
  backToPreviousFirst(BuildContext context, String route);
  void setCallbackResult(Object current);
  openBar(Widget content, BuildContext context,
      {double? width, double? height});
  openDialog(Widget content, BuildContext context,
      {double? width, double? height});
  dismissBar(BuildContext context);
}

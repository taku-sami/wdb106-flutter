import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/service_provider.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc.dart';

class ItemsBlocProvider extends BlocProvider<ItemsBloc> {
  ItemsBlocProvider({
    @required Widget child,
  }) : super(
          child: child,
          creator: (context, _bag) {
            final provider = ServiceProvider.of(context);
            return ItemsBloc(client: provider.apiClient);
          },
        );

  static ItemsBloc of(BuildContext context) => BlocProvider.of(context);
}
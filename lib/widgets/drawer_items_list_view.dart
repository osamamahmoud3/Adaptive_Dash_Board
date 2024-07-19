import 'package:adaptive_dash_board/models/repos/app_repo_impl.dart';
import 'package:adaptive_dash_board/utils/controllers/show_data_cubit.dart';
import 'package:adaptive_dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int activeindex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ShowItems(AppRepoImpl())..getDrawerItems(),
        child: BlocBuilder<ShowItems, ShowItemState>(
          builder: (context, state) {
            final cubit = BlocProvider.of<ShowItems>(context);
            return cubit.drawerItemModel != null
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: cubit.drawerItemModel!.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                activeindex = index;
                              });
                            },
                            child: DrawerItem(
                              image: cubit.drawerItemModel![index].image,
                              title: cubit.drawerItemModel![index].title,
                              isactive: activeindex == index,
                            )),
                      );
                    }),
                  )
                : const Center(child: CircularProgressIndicator());
          },
        ));
  }
}

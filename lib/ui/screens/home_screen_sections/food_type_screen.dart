import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_admin/blocs/food_type/food_type_bloc.dart';
import 'package:restaurant_admin/ui/widgets/custom_alert_dialog.dart';
import 'package:restaurant_admin/ui/widgets/custom_progress_indicator.dart';
import 'package:restaurant_admin/ui/widgets/custom_search.dart';
import 'package:restaurant_admin/ui/widgets/food_type_card.dart';
import 'package:restaurant_admin/ui/widgets/item_card.dart';

class FoodTypeScreen extends StatefulWidget {
  const FoodTypeScreen({super.key});

  @override
  State<FoodTypeScreen> createState() => _FoodTypeScreenState();
}

class _FoodTypeScreenState extends State<FoodTypeScreen> {
  FoodTypeBloc foodTypeBloc = FoodTypeBloc();

  String? query;

  void getFoodTypes() {
    foodTypeBloc.add(
      GetAllFoodTypeEvent(
        query: query,
      ),
    );
  }

  @override
  void initState() {
    getFoodTypes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodTypeBloc>.value(
      value: foodTypeBloc,
      child: BlocConsumer<FoodTypeBloc, FoodTypeState>(
        listener: (context, state) {
          if (state is FoodTypeFailureState) {
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: 'Failed',
                message: state.message,
                primaryButtonLabel: 'Ok',
                primaryOnPressed: () {
                  getFoodTypes();
                },
              ),
            );
          }
        },
        builder: (context, state) {
          return Center(
            child: SizedBox(
              width: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CustomSearch(
                    onSearch: (search) {
                      query = search;
                      getFoodTypes();
                    },
                  ),
                  const Divider(
                    height: 40,
                  ),
                  Expanded(
                    child: state is FoodTypeSuccessState
                        ? state.types.isNotEmpty
                            ? SingleChildScrollView(
                                child: Wrap(
                                  spacing: 20,
                                  runSpacing: 20,
                                  children: List<Widget>.generate(
                                    state.types.length,
                                    (index) => FoodTypeCard(
                                      foodTypeBloc: foodTypeBloc,
                                      foodTypeDetails: state.types[index],
                                    ),
                                  ),
                                ),
                              )
                            : const Center(child: Text('No food types found.'))
                        : const Center(
                            child: CustomProgressIndicator(),
                          ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

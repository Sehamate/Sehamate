import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'first_aid_list.dart';

class EmergencyViewBody extends StatefulWidget {
  const EmergencyViewBody({super.key});

  @override
  State<EmergencyViewBody> createState() => _EmergencyViewBodyState();
}

class _EmergencyViewBodyState extends State<EmergencyViewBody> {
  String location = "Mansoura city";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () async {
                  String? result = await showModalBottomSheet<String>(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    useRootNavigator: true,
                    builder: (context) => EditLocationWidget(initialValue: location),
                  );
                  if (result != null) setState(() => location = result);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.primary),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location: $location",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.location_on,
                        color: context.colors.primary,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    Spacer(),
                    Text(
                      "Call Emergency",
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 56)),
            SliverToBoxAdapter(
              child: CustomTextField(
                hint: "Search Topic",
                icon: Icons.search,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
              child: Row(
                spacing: 16,
                children: [
                  Image.asset(
                    'assets/icons/doctor-bag.png',
                    color: context.colors.secondary,
                    height: 30,
                  ),
                  Text(
                    "First Aid",
                    style: context.texts.titleMedium!.copyWith(color: context.colors.secondary),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
          ];
        },
        body: FirstAidList(),
      ),
    );
  }
}

class EditLocationWidget extends StatefulWidget {
  final String initialValue;
  const EditLocationWidget({super.key, required this.initialValue});

  @override
  State<EditLocationWidget> createState() => _EditLocationWidgetState();
}

class _EditLocationWidgetState extends State<EditLocationWidget> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Location", style: TextStyle(color: Colors.black)),
              SizedBox(height: 10),
              CustomTextField(
                controller: controller,
                autoFocus: true,
                hint: widget.initialValue,
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Done",
                onPressed: () {
                  context.router.pop(controller.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

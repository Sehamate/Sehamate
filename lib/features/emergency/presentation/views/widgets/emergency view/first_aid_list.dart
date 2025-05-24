import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';
import 'bleeding_dialog.dart';
import 'burns_dialog.dart';
import 'chocking_dialog.dart';
import 'cpr_dialog.dart';
import 'first_aid_item.dart';
import 'fracture_dialog.dart';
import 'poisoning_dialog.dart';

class FirstAidList extends StatelessWidget {
  const FirstAidList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => CprDialog(),
            );
          },
          title: "CPR & Cardiac Arrest",
          icon: 'assets/icons/cpr.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => BleedingDialog(),
            );
          },
          title: "Bleeding",
          icon: 'assets/icons/bleeding.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => BurnsDialog(),
            );
          },
          title: "Burns",
          icon: 'assets/icons/burn.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => ChockingDialog(),
            );
          },
          title: "Chocking",
          icon: 'assets/icons/cough.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => FractureDialog(),
            );
          },
          title: "Fracture",
          icon: 'assets/icons/fracture.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => PoisoningDialog(),
            );
          },
          title: "Poisoning",
          icon: 'assets/icons/poisoning.png',
        ),
        FirstAidItem(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AllergiesDialog(),
            );
          },
          title: "Allergies",
          icon: 'assets/icons/allergies.png',
        ),
      ],
    );
  }
}

class AllergiesDialog extends StatelessWidget {
  const AllergiesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16),
        clipBehavior: Clip.hardEdge,
        width: double.maxFinite,
        height: context.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
            width: 30,
            color: context.colors.primary,
          )),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              Text(
                "Allergies",
                style: context.texts.titleMedium!.copyWith(color: Colors.black),
              ),
              TitledParagraphWidget(
                title: 'When to use:',
                subtitle:
                    'After exposure to known allergens (foods, insect stings, medications, latex, etc.), especially if signs of anaphylaxis appear (swelling of lips or throat, difficulty breathing, hives, dizziness).',
              ),
              TitledParagraphWidget(
                title: 'Steps for mild reactions:',
                subtitle:
                    "1.Remove the allergen source if possible.\n2.Give an oral antihistamine if available and safe.\n3.Monitor closely for worsening symptoms.",
              ),
              TitledParagraphWidget(
                title: 'Steps for severe reactions (anaphylaxis):',
                subtitle:
                    "•Call emergency services immediately.\n•Use epinephrine auto-injector (e.g. EpiPen) if available — inject into outer thigh.\n•Lay the person down and elevate their legs (unless they’re having trouble breathing — then sit them up).\n•Loosen tight clothing and stay with them.\n•If unconscious and not breathing, begin CPR.",
              ),
              TitledParagraphWidget(
                title: 'Call emergency services if:',
                subtitle:
                    "•There’s trouble breathing, swelling in the face or throat, or confusion.\n•Epinephrine was used — medical follow-up is necessary.\n•Symptoms improve and then return — a second reaction can occur.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

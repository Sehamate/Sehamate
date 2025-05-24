import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/terms services view/terms_services_view_body.dart';

class TermsServicesView extends StatelessWidget {
  const TermsServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Terms And Services', canBack: true),
      body: TermsServicesViewBody(),
    );
  }
}

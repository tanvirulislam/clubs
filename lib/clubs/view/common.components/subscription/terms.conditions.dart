import 'package:club/clubs/context.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';

class SubscriptionTermsAndConditions extends StatelessWidget {
  const SubscriptionTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.7,
      height: context.height * 0.7,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Spordium Club - Terms & Conditions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.close, color: Colors.grey[600], size: 24),
              ),
            ],
          ),
          Divider(),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(
                    '1. Acceptance of Terms',
                    'By purchasing any \'Club\' package on Spordium, you agree to be bound by these Terms and Conditions. If you do not agree, you may not use the package or its services.',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '2. Service Description',
                    'The Clubs package provides digital tools for managing sports club operations and access is granted to registered users via the Spordium platform.',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '3. Subscription & Billing',
                    'The Clubs package is offered as a subscription (monthly or annual, depending on selection). All prices are inclusive of vat & tax. Payments are processed securely. You authorize Spordium to charge your chosen payment method at the beginning of each billing cycle. Subscriptions automatically renew unless cancelled prior to the renewal date.',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '4. Cancellation & Refunds',
                    'You may cancel your subscription at any time from your account dashboard. Refunds are not issued for partial months or unused time, except as required by law or in cases of platform malfunction.',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '5. User Responsibilities',
                    'You are responsible for maintaining the confidentiality of your login credentials and you agree not to misuse the platform (no unauthorized access, scraping or interfering with service integrity).',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '6. Data Privacy',
                    'All data collected and stored under your account remains your property. Spordium complies with data protection laws. See our Privacy Policy for full details.',
                  ),
                  SizedBox(height: 16),

                  _buildSection(
                    '7. Modifications',
                    'We may update package features, pricing or terms at our discretion. You will be notified in advance of any significant...',
                  ),
                ],
              ),
            ),
          ),
          height10,
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff060C2F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              'Agree',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildSection(String title, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
      SizedBox(height: 8),
      Text(content, style: TextStyle(fontSize: 13, height: 1.5)),
    ],
  );
}

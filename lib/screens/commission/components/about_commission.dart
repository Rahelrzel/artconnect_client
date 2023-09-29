import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutCommission extends HookConsumerWidget {
  const AboutCommission({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Client',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  clientInfo(),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Service Type',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  serviceType(),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Price Offer',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 24,
                      ),
                      children: const [
                        TextSpan(
                          text: '100',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(text: ' ETB'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: const Text(
                "I have a specific vision in mind for this artwork. I envision a stunning, intricate design that combines elements of nature and the cosmos, exuding a sense of serenity and wonder. I'm particularly drawn to earthy tones and celestial blues that evoke a harmonious connection between the terrestrial and the celestial. The dimensions I am considering for the piece are approximately 24 inches by 24 inches, but I am open to your artistic expertise and recommendations. Furthermore, I am fascinated by the way your string art breathes life into each creation, and I would love to discuss the possibility of incorporating subtle LED lighting to enhance the artwork's mystique. If you are available to take on this commission, I would be honored to collaborate with you on bringing this artistic vision to life. Please let me know your availability and estimated timeline for completion, as I am eager to adorn my space with your incredible artistry. Looking forward to embarking on this artistic journey with you!",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container serviceType() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Vector Illustration',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$ 10ETB',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Estimated Time: 2 days',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Container clientInfo() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/art3.png'),
            radius: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Brooklyn Simmons',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Social Media Marketer',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.grey.shade400,
                    ),
                    Text(
                      'Addis Ababa, Ethiopia',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

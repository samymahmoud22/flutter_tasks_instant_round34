import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),

            //user card 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    
                    CircleAvatar(radius: 30),
                    const SizedBox(width: 16),

                    //name&email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          " ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),

                    const Spacer(),

                  
                    const Icon(Icons.edit, color: Colors.green, size: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            //list product
            _buildTile(icon: Icons.shopping_bag, title: "Orders"),
            _buildTile(icon: Icons.person, title: "My Details"),
            _buildTile(icon: Icons.location_on, title: "Delivery Address"),
            _buildTile(icon: Icons.credit_card, title: "Payment Methods"),
            _buildTile(icon: Icons.card_giftcard, title: "Promo Card"),
            _buildTile(icon: Icons.notifications, title: "Notifications"),
            _buildTile(icon: Icons.help_outline, title: "Help"),
            _buildTile(icon: Icons.info_outline, title: "About"),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({required IconData icon, required String title}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, size: 26, color: Colors.black87),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        const Divider(height: 1, indent: 20),
      ],
    );
  }
}

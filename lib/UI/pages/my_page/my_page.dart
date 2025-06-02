import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:recipea_app/UI/pages/my_page/widgets/icon_text_item.dart';
import 'package:recipea_app/UI/pages/my_page/widgets/section_container.dart';
import 'package:recipea_app/UI/pages/my_page/widgets/user_header.dart';
import 'package:recipea_app/UI/pages/refirg/refrig_page.dart';
import 'package:recipea_app/providers/auth_provider.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'recipea',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () async {
              await ref.read(authViewModelProvider.notifier).logout();
              context.go('/login');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserHeader(),
              _buildRecipeSection(context),
              _buildShoppingSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeSection(BuildContext context) {
    return SectionContainer(
      title: '레시피',
      children: [
        IconTextItem(label: '내가 본 레시피', icon: Icons.remove_red_eye),
        IconTextItem(label: '스크랩', icon: Icons.bookmark_border),
        IconTextItem(
          label: 'MY냉장고',
          icon: MdiIcons.fridge,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RefrigPage()),
            );
          },
        ),
        IconTextItem(label: '노트', icon: Icons.note_outlined),
      ],
    );
  }

  Widget _buildShoppingSection() {
    return SectionContainer(
      title: '쇼핑',
      // subtitle: '적립금 0원',
      children: const [
        IconTextItem(label: '내가 본 상품', icon: Icons.remove_red_eye_outlined),
        IconTextItem(label: '구매내역', icon: Icons.credit_card),
        IconTextItem(label: '장바구니/찜', icon: Icons.shopping_cart_outlined),
        IconTextItem(label: '쿠폰', icon: Icons.local_offer_outlined),
      ],
    );
  }
}

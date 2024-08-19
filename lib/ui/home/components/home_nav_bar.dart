import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_life/ui/home/home_view_model.dart';

class HomeNavBar extends ConsumerStatefulWidget {
  const HomeNavBar({
    super.key,
  });

  @override
  ConsumerState<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends ConsumerState<HomeNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<AlignmentGeometry> _positionAnimation;
  late Animation<double> _widthAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _positionAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      _animationController,
    );

    _widthAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          tween: Tween<double>(begin: 159, end: 200).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
          weight: 50,
        ),
        TweenSequenceItem(
          tween: Tween<double>(begin: 200, end: 159).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
          weight: 50,
        ),
      ],
    ).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isFirstSelected = ref.watch(
      homeViewModelProvider.select((_) => _.isFirstSelected),
    );

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F9),
        borderRadius: BorderRadius.circular(23.5),
      ),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => Stack(
          alignment: _positionAnimation.value,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 11),
              height: 42,
              width: _widthAnimation.value,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23.5),
              ),
            ),
            child ?? const SizedBox.shrink()
          ],
        ),
        child: Row(
          children: [
            _NavBarItem(
              label: 'My Assessments',
              onTap: () {},
              isSelected: isFirstSelected,
              animationController: _animationController,
            ),
            _NavBarItem(
              label: 'My Appointments',
              onTap: () {},
              isSelected: !isFirstSelected,
              animationController: _animationController,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends ConsumerWidget {
  const _NavBarItem({
    required this.label,
    required this.onTap,
    required this.isSelected,
    required this.animationController,
  });

  final String label;
  final void Function()? onTap;
  final bool isSelected;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstSelected = ref.watch(
      homeViewModelProvider.select((_) => _.isFirstSelected),
    );

    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (!isSelected) {
            ref.read(homeViewModelProvider.notifier).toggleTabs();
            if (isFirstSelected) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          }
        },
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23.5),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? const Color(0xFF255FD5)
                    : const Color(0xFF6B6B6B),
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

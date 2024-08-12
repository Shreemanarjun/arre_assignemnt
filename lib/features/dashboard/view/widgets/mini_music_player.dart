import 'package:arre_assignmemnt/features/dashboard/controller/is_visible_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MiniMusicPlayer extends ConsumerStatefulWidget {
  const MiniMusicPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MiniMusicPlayerState();
}

class _MiniMusicPlayerState extends ConsumerState<MiniMusicPlayer> {
  var defaultHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    final isVisible = ref.watch(isVisiblePod);
    return isVisible
        ? Dismissible(
            key: const Key("music"),
            crossAxisEndOffset: 0,
            direction: DismissDirection.down,
            onUpdate: (details) {
              setState(() {
                defaultHeight = 100 * details.progress;
              });
            },
            onDismissed: (direction) {
              ref.read(isVisiblePod.notifier).update(
                    (state) => false,
                  );
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: defaultHeight,
              decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}

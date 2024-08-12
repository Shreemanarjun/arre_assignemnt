import 'package:arre_assignmemnt/features/dashboard/controller/is_visible_player.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/music_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MiniMusicPlayer extends ConsumerStatefulWidget {
  const MiniMusicPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MiniMusicPlayerState();
}

class _MiniMusicPlayerState extends ConsumerState<MiniMusicPlayer> {
  var defaultHeight = 72.0;
  var currentHeight = 72.0;

  @override
  Widget build(BuildContext context) {
    final isVisible = ref.watch(isVisiblePod);
    return isVisible
        ? Dismissible(
            key: const Key("music"),
            direction: DismissDirection.down,
            confirmDismiss: (direction) async {
              ref.read(isVisiblePod.notifier).update(
                    (state) => false,
                  );
              return true;
            },
            onUpdate: (details) {
              if (details.direction == DismissDirection.down) {
                if (details.progress == 1.0) {
                  ref.read(isVisiblePod.notifier).update(
                        (state) => false,
                      );
                }
                setState(() {
                  currentHeight = defaultHeight * details.progress;
                });
              }
            },
            onDismissed: (direction) {
              ref.read(isVisiblePod.notifier).update((state) => false);
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: currentHeight,
              decoration: BoxDecoration(
                color: isVisible
                    ? Colors.black.withOpacity(0.7)
                    : Colors.black.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: const MusicControllers(),
            ),
          )
        : const SizedBox.shrink();
  }
}

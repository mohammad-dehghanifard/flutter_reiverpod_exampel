import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/counter/provider.dart';

class CounterApp extends ConsumerWidget{
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter app"),centerTitle: true),
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text( ref.watch(counterProvider).toString(),style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  if(ref.watch(counterProvider) > 0){
                    ref.read(counterProvider.notifier).update((state) => state -= 1);
                  }
                }, child: const Text("-1")),
                ElevatedButton(onPressed: () {
                  ref.read(counterProvider.notifier).update((state) => state += 1);
                }, child: const Text("+1")),
              ],
            )
          ],
        ),
      ),
    );
  }

}

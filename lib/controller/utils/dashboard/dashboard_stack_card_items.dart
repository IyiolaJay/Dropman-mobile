import "package:flutter/material.dart";

import "dashboard_stack_buttons.dart";

class DashboardCardItems extends StatefulWidget {
  const DashboardCardItems({
    super.key,
  });

  @override
  State<DashboardCardItems> createState() => _DashboardCardItemsState();
}

class _DashboardCardItemsState extends State<DashboardCardItems> {
  final TextEditingController _trackIdController = TextEditingController();

  @override
  void dispose() {
    _trackIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 34,
        child: TextField(
          controller: _trackIdController,
          cursorColor: Theme.of(context).colorScheme.secondary,
          style: Theme.of(context).textTheme.bodySmall,
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
              hintText: 'Enter tracking number',
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 9,
                  ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primary,
              contentPadding: const EdgeInsets.all(8)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 4),
        child: StackCardButton(
          onPressed: () {},
          label: 'Track',
        ),
      ),
      Row(
        children: [
          Expanded(
            child: StackCardButton(
              onPressed: () {},
              label: "Request",
              icon: const Icon(
                Icons.send,
                size: 10,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: StackCardButton(
            onPressed: () {},
            label: "View History",
            icon: const Icon(
              Icons.history,
              size: 10,
            ),
          )),
        ],
      ),
    ]);
  }
}

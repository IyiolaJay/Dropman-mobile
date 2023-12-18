import "package:flutter/material.dart";


class RecentDeliveryItems extends StatelessWidget {
  const RecentDeliveryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 8, 8, 12),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/red-bike.png',
            fit: BoxFit.cover,
          ),
        ),
        ////

        title: Text(
          "Emmanuel Okafor",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Address",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 9,
                ),
          ),
          Text('Delivery Date',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 9,
                  )),
        ]),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.check_box,
              color: Colors.green,
            ),
            Text(
              "#2,345",
            )
          ],
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}
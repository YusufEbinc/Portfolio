import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackColor12,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Message',
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('SEND MESSAGE',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: blackColor)),
                      style: ElevatedButton.styleFrom(
                        primary: whiteColor,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'yusufebinc3@gmail.com',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

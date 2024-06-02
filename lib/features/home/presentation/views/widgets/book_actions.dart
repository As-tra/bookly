import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/functions/url_lancher.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  final BookModel bookModel;
  const BookActions({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              bgColor: kPrimaryColor,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: () async {
                var url = bookModel.volumeInfo?.previewLink ?? '';
                urlLancher(context, url);
              },
              text: getText(bookModel),
              bgColor: kLivecolor,
              textColor: kPrimaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/button.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/form_textfield.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/pdf.dart';
import 'package:unilag_lecturer_app/view/theme/colors.dart';


class AddNewContent extends StatelessWidget {
  const AddNewContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
            backgroundColor: Colors.white,
            builder: (context) => _ModalBottomSheetWidget(),
          );
        },
        child: Container(
          height: 40,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  LineIcon(Icons.upload_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Add New Content",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ModalBottomSheetWidget extends StatelessWidget {
  const _ModalBottomSheetWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomFormField(hintText: 'Topic'),
          SizedBox(height: 10),
          Row(
            children: [
              InkWell(
                onTap: (){
                  // add pdf from phone storage
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColor.brown,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.add, size: 40),
                ),
              ),
              SizedBox(width: 10),
              Expanded(child: PDF()),
            ],
          ),
          SizedBox(height: 10),
          CustomButton(
            text: 'Add',
            onPressed: () {
              // add inputs to database

              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

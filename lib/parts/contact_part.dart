import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/contactModel.dart';
import 'package:portfolio/widgets/contactContainer.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPart extends StatefulWidget {
  const ContactPart({Key? key, this.isMobile}) : super(key: key);
  final isMobile;
  @override
  State<ContactPart> createState() => _ContactPartState();
}

class _ContactPartState extends State<ContactPart> {
  List<Widget> contactOptionList = [];

  addContactOptions() {
    for (int i = 0; i < 4; i++) {
      contactOptionList.add(ContactContainer(
          isMobile: widget.isMobile,
          link: contactWays[i].link,
          color: contactWays[i].color,
          imageAsset: contactWays[i].imageAsset,
          text: contactWays[i].text));
      contactOptionList.add(widget.isMobile
          ? SizedBox(
              height: 1.h,
            )
          : SizedBox(
              width: 3.w,
            ));
    }
  }

  launchEmail() async {
    final url = 'mailto:sathya.srivatsav.ss.100@gmail.com?subject=Porfolio';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    addContactOptions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isMobile
        ? Container(
            height: 100.h,
            width: 100.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cBG.jpg'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: Constants().constPaddingSize,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Contact me",
                        style: widget.isMobile
                            ? Constants().mobileHeadingTextStyle
                            : Constants().headingTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "My social weapons",
                        style: widget.isMobile
                            ? Constants().mobileCaptionsTextStyle
                            : Constants().captionsTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: contactOptionList,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: launchEmail,
                        child: Container(
                          padding: EdgeInsets.all(1.h),
                          height: 5.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              color: contactWays[4].color.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Image.asset(contactWays[4].imageAsset),
                              SizedBox(
                                width: 0.6.w,
                              ),
                              Text(
                                contactWays[4].text,
                                style: Constants().mobileNormalTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      ContactContainer(
                          link: contactWays[5].link,
                          color: contactWays[5].color,
                          isMobile: widget.isMobile,
                          imageAsset: contactWays[5].imageAsset,
                          text: contactWays[5].text),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Container(
            height: 100.h,
            width: 100.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cBG.jpg'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: Constants().constPaddingSize,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Contact me",
                        style: widget.isMobile
                            ? Constants().mobileHeadingTextStyle
                            : Constants().headingTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "My social weapons",
                        style: widget.isMobile
                            ? Constants().mobileCaptionsTextStyle
                            : Constants().captionsTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: contactOptionList,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: launchEmail,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(0.5.h),
                          height: 7.h,
                          width: 16.w,
                          decoration: BoxDecoration(
                              color: contactWays[4].color.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Image.asset(contactWays[4].imageAsset),
                              SizedBox(
                                width: 0.6.w,
                              ),
                              Text(
                                contactWays[4].text,
                                style: Constants().normalTextStyle,
                              ),
                            ],
                          ),
                        ),
                        ContactContainer(
                            link: contactWays[5].link,
                            color: contactWays[5].color,
                            isMobile: widget.isMobile,
                            imageAsset: contactWays[5].imageAsset,
                            text: contactWays[5].text),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/styles.dart';
import 'package:news_app_clean_architecture/common/util/animation.dart';
import 'package:news_app_clean_architecture/common/widget/draggable_sheet.dart';
import 'package:news_app_clean_architecture/common/widget/expandable_group.dart';
import 'package:news_app_clean_architecture/features/movie_detail/domain/entity/movie_information_db/movie_information_db.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/widget/star_icon_display.dart';
import 'package:readmore/readmore.dart';

class MovieDetailWidget extends StatelessWidget {
  const MovieDetailWidget({super.key, required this.info});
  final MovieInformationDb info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://image.tmdb.org/t/p/w500${info.posterPath}'),
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 50),
          child: Container(
            // color: Colors.black.withOpacity(.5),
            child: Stack(
              // physics: BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * (1 - 0.63),
                        width: MediaQuery.of(context).size.width,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://image.tmdb.org/t/p/w500${info.posterPath}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CreateIcons(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                              ),
                            ),
                            CreateIcons(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 30, 34, 45),
                                  context: context,
                                  builder: (BuildContext ctx) {
                                    return Container(
                                      color: Colors.black26,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(
                                            height: 14,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Column(
                                            children: [
                                              // CopyLink(
                                              //   title: info.title,
                                              //   id: info.tmdbId,
                                              //   type: 'movie',
                                              // ),
                                              Divider(
                                                height: .5,
                                                thickness: .5,
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              ListTile(
                                                onTap: () {
                                                  // launch(
                                                  //     "https://www.themoviedb.org/movie/" +
                                                  //         info.tmdbId);
                                                },
                                                leading: Icon(
                                                  CupertinoIcons.share,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                title: Text(
                                                  "Open in Brower ",
                                                  style: h5(context: context),
                                                ),
                                              ),
                                              Divider(
                                                height: .5,
                                                thickness: .5,
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Icon(
                                CupertinoIcons.ellipsis,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                BottomInfoSheet(
                  backdrops:
                      'https://image.tmdb.org/t/p/w500${info.posterPath}',
                  child: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: DelayedDisplay(
                              delay: const Duration(microseconds: 500),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: kElevationToShadow[8],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/w500${info.posterPath}',
                                      width: 120),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DelayedDisplay(
                                    delay: const Duration(microseconds: 700),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: info.title,
                                            style: h2(
                                                context: context,
                                                fontWeight: '700'),
                                          ),
                                          TextSpan(
                                            text: info.releaseDate == null
                                                ? ''
                                                : " (${info.releaseDate.toString().split("-")[0]})",
                                            style: h2(context: context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  DelayedDisplay(
                                      delay: const Duration(microseconds: 700),
                                      child: info.genres == null
                                          ? Container()
                                          : Column(
                                              children: [
                                                ...info.genres!.map((e) => Text(
                                                      e.name ?? '',
                                                      style:
                                                          h7(context: context),
                                                    ))
                                              ],
                                            )),
                                  const SizedBox(height: 5),
                                  DelayedDisplay(
                                    delay: const Duration(microseconds: 700),
                                    child: Row(
                                      children: [
                                        IconTheme(
                                          data: const IconThemeData(
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          child: StarDisplay(
                                            value: info.voteAverage == null
                                                ? 0
                                                : ((info.voteAverage! * 5) / 10)
                                                    .round(),
                                          ),
                                        ),
                                        Text(
                                          "  " +
                                              info.voteCount.toString() +
                                              "/10",
                                          style: h7(
                                              color: Colors.amber,
                                              context: context),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  // DelayedDisplay(
                                  //   delay: const Duration(microseconds: 800),
                                  //   child: LikeButton(
                                  //     id: info.tmdbId,
                                  //     title: info.title,
                                  //     rate: info.rateing,
                                  //     poster: info.poster,
                                  //     type: 'MOVIE',
                                  //     date: info.releaseDate,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    if (info.overview != '')
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DelayedDisplay(
                                delay: const Duration(microseconds: 800),
                                child: Text(
                                  "Overview",
                                  style:
                                      h3(context: context, fontWeight: '700'),
                                )),
                            const SizedBox(height: 10),
                            DelayedDisplay(
                              delay: const Duration(microseconds: 1000),
                              child: ReadMoreText(
                                info.overview ?? '',
                                trimLines: 6,
                                colorClickableText: Colors.pink,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'more',
                                trimExpandedText: 'less',
                                style: h7(fontWeight: '600', context: context),
                                moreStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    // if (trailers.isNotEmpty)
                    //   TrailersWidget(
                    //     trailers: trailers,
                    //     backdrops: backdrops,
                    //     backdrop: info.backdrops,
                    //   ),
                    // if (castList.isNotEmpty)
                    //   Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const SizedBox(height: 20),
                    //       Padding(
                    //         padding: const EdgeInsets.all(14.0),
                    //         child: Text("Cast",
                    //             style: heading.copyWith(color: Colors.white)),
                    //       ),
                    //       CastList(
                    //         castList: castList,
                    //       ),
                    //     ],
                    //   ),
                    ExpandableGroup(
                      isExpanded: true,
                      expandedIcon: Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white != Colors.white
                            ? Colors.black
                            : Colors.white,
                      ),
                      collapsedIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white != Colors.white
                            ? Colors.black
                            : Colors.white,
                      ),
                      header: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "About Movie",
                          style: h3(context: context, fontWeight: '700'),
                        ),
                      ),
                      items: [
                        ListTile(
                            title: Text(
                              "Runtime",
                              style: h5(context: context),
                            ),
                            subtitle: Text(
                              info.runtime.toString(),
                              style: h7(context: context),
                            )),
                        // ListTile(
                        //     title: Text(
                        //       "Writers",
                        //       style: h5(context: context),
                        //     ),
                        //     subtitle: Text(
                        //       imdbInfo.writer,
                        //       style:  h7(context: context),
                        //     )),
                        // ListTile(
                        //     title: Text(
                        //       "Director",
                        //       style: heading.copyWith(
                        //           color: Colors.white, fontSize: 16),
                        //     ),
                        //     subtitle: Text(
                        //       imdbInfo.director,
                        //       style:  h7(context: context),
                        //     )),
                        ListTile(
                            title: Text(
                              "Released on/Releasing on",
                              style: h5(context: context),
                            ),
                            subtitle: Text(
                              info.releaseDate == null
                                  ? ''
                                  : info.releaseDate!.toLocal().toString(),
                              style: h7(context: context),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ExpandableGroup(
                        isExpanded: false,
                        expandedIcon: Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white != Colors.white
                              ? Colors.black
                              : Colors.white,
                        ),
                        collapsedIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white != Colors.white
                              ? Colors.black
                              : Colors.white,
                        ),
                        header: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "Movie on Boxoffice",
                            style: h7(context: context),
                          ),
                        ),
                        items: [
                          ListTile(
                              title: Text(
                                "Rated",
                                style: h5(context: context),
                              ),
                              subtitle: Text(
                                info.voteAverage.toString(),
                                style: h7(context: context),
                              )),
                          ListTile(
                              title: Text(
                                "Budget",
                                style: h5(context: context),
                              ),
                              subtitle: Text(
                                k_m_b_generator(info.budget) == "0"
                                    ? "N/A"
                                    : k_m_b_generator(info.budget),
                                style: h7(context: context),
                              )),
                          // ListTile(
                          //   title: Text(
                          //     "BoxOffice",
                          //     style: heading.copyWith(
                          //         color: Colors.white, fontSize: 16),
                          //   ),
                          //   subtitle: Text(
                          //     imdbInfo.boxOffice,
                          //     style: h7(context: context),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // if (similar.isNotEmpty)
                    //   Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const SizedBox(height: 20),
                    //       Padding(
                    //         padding: const EdgeInsets.all(14.0),
                    //         child: Text("You might also like",
                    //             style: heading.copyWith(color: Colors.white)),
                    //       ),
                    //       HorizontalListViewMovies(
                    //           list: similar, color: Colors.white)
                    //     ],
                    //   ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
String k_m_b_generator(num) {
  if (num > 999 && num < 99999) {
    return "${(num / 1000).toStringAsFixed(1)} K";
  } else if (num > 99999 && num < 999999) {
    return "${(num / 1000).toStringAsFixed(0)} K";
  } else if (num > 999999 && num < 999999999) {
    return "${(num / 1000000).toStringAsFixed(1)} M";
  } else if (num > 999999999) {
    return "${(num / 1000000000).toStringAsFixed(1)} B";
  } else {
    return num.toString();
  }
}

class CreateIcons extends StatelessWidget {
  final Widget child;
  final Function()? onTap;
  const CreateIcons({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: kElevationToShadow[2],
      ),
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 50),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(.5),
            ),
            child: InkWell(onTap: onTap, child: child),
          ),
        ),
      ),
    );
  }
}

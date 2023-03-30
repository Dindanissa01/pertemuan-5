import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "data:image/jpeg;base64,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",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                   const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: const [
                        Text(
                          'Yuk simak profile Suga BTS',
                           style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                  const Text(
                    'Sugas BTS',
                    
                    maxLines: 10,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  )
                  ],
                ),
              ),
          ],
          
        ),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key, 
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsQbt0x_4wjRidb1U7-s14-IlwE88FhhSkEQ&usqp=CAU",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                   const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: const [
                        Text(
                          'Konser Agust D di jakarta harga mulai 3-9jt',
                           style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                  const Text(
                    'Konser',
                    maxLines: 10,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  )
                  ],
                ),
              ),
          ],
          
        ),
      ),
    );
  }
}
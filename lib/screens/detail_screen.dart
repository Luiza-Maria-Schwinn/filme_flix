import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),

            const Center(
              child: Text(
                'The Glory',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24),

            Image.asset(
              'assets/images/detail_the_glory.jpg',
              width: MediaQuery.of(context).size.width,
              height: 220,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The Glory',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '2022 | 18+ | 1 Season | K-Drama',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Color(0xFF969696),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A young woman, bullied to the point of deciding to drop out of school, plans the best way to get revenge. After becoming a primary school teacher, she takes in the son of the man who tormented her the most to enact her vengeance.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Starring : Song Hye-kyo, Lee Do-hyun, Lim Ji-yeon',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Creators : Kim Eun-sook, An Gil-ho',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Genre : Revenge, Psychological Thriller',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Colors.white),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Episodes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Season 1',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),

                  episodeCard('Episode 1', '47m', 'Tormented by her high school classmates and with nowhere...'),
                  const SizedBox(height: 16),
                  episodeCard('Episode 2', '52m', 'With Park Yeon-jin’s wedding on the way, Dong-eun’s revenge...'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget episodeCard(String title, String duration, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 80,
          color: const Color(0xFFD9D9D9),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    duration,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Color(0xFF969696),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
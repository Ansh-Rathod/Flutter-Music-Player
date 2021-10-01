import 'package:just_audio/just_audio.dart';
import 'package:musicbanner/models/song_model.dart';

var songs = [
  {
    'Song': 'Cinematic Fairy Tale Story (Main)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_153f263349.mp3?filename=cinematic-fairy-tale-story-main-8697.mp3',
    'Album':
        'https://images.unsplash.com/photo-1546707012-c46675f12716?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Battle Of The Dragons',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_14fb3b6893.mp3?filename=battle-of-the-dragons-8037.mp3',
    'Album':
        'https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Chillhop Main',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_dc39bde808.mp3?filename=cinematic-chillhop-main-6676.mp3',
    'Album':
        'https://images.unsplash.com/photo-1494368308039-ed3393a402a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2M3x8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'THE WAY HOME',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_c9a4a1d834.mp3?filename=the-way-home-6674.mp3',
    'Album':
        'https://images.unsplash.com/photo-1464569039280-183cbe6ea28a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3MHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Triumphant (Long)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_6e054b59f6.mp3?filename=triumphant-long-6673.mp3',
    'Album':
        'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Melody of Nature (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_88447e769f.mp3?filename=melody-of-nature-main-6672.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'My Life (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_6eb9c39740.mp3?filename=my-life-main-6670.mp3',
    'Album':
        'https://images.unsplash.com/photo-1603190287605-e6ade32fa852?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Chilled Acoustic Indie Folk Instrumental Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_6623aaf984.mp3?filename=chilled-acoustic-indie-folk-instrumental-background-music-for-videos-5720.mp3',
    'Album':
        'https://images.unsplash.com/photo-1576328077645-2dd68934d2b7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1NHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'In the Forest - Ambient Acoustic Guitar Instrumental Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_202082aa0b.mp3?filename=in-the-forest-ambient-acoustic-guitar-instrumental-background-music-for-videos-5718.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501386761578-eac5c94b800a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxN3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiring Cinematic Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_6d7cd70222.mp3?filename=inspiring-cinematic-background-music-for-videos-5717.mp3',
    'Album':
        'https://images.unsplash.com/photo-1527137342181-19aab11a8ee8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2MXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Emotional Piano Sad Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/26/audio_c8102c4eae.mp3?filename=emotional-piano-sad-background-music-for-videos-5688.mp3',
    'Album':
        'https://images.unsplash.com/photo-1604537466608-109fa2f16c3b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3OHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Acoustic Guitars Ambient Uplifting Background Music for Videos',
    'Artist': 'lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/24/audio_c2bf654098.mp3?filename=acoustic-guitars-ambient-uplifting-background-music-for-videos-5642.mp3',
    'Album':
        'https://images.unsplash.com/photo-1507676184212-d03ab07a01bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzNHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Freedom Inspired Cinematic Background Music For Video',
    'Artist': 'lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/22/audio_9584aae297.mp3?filename=freedom-inspired-cinematic-background-music-for-video-5606.mp3',
    'Album':
        'https://images.unsplash.com/photo-1521318870395-37018f667b3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3OHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
];

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
  {
    'Song': 'Fluidity (1:00 IG Edit)',
    'Artist': 'tobylane',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/20/audio_cb31fe8a54.mp3?filename=fluidity-100-ig-edit-4558.mp3',
    'Album':
        'https://images.unsplash.com/photo-1564585222527-c2777a5bc6cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Awakening Instrumental',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_746c5a0fb3.mp3?filename=awakening-instrumental-1165.mp3',
    'Album':
        'https://images.unsplash.com/photo-1527137342181-19aab11a8ee8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2MXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Canci�n Triste',
    'Artist': 'enrique27naveda',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/11/10/audio_547ebbf828.mp3?filename=cancion-triste-1502.mp3',
    'Album':
        'https://images.unsplash.com/photo-1507874457470-272b3c8d8ee2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzOXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Under pressure - Michael Kobrin 105bpm',
    'Artist': 'MichaelKobrin',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/07/audio_d5755615b6.mp3?filename=under-pressure-michael-kobrin-105bpm-3781.mp3',
    'Album':
        'https://images.unsplash.com/photo-1483086431886-3590a88317fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'NightLife - Michael Kobrin - 95bpm',
    'Artist': 'MichaelKobrin',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/07/audio_8ed06844ef.mp3?filename=nightlife-michael-kobrin-95bpm-3783.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Happy at Home Background Music For Videos',
    'Artist': 'lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/22/audio_c53c82ad19.mp3?filename=happy-at-home-background-music-for-videos-5607.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533038590840-1cde6e668a91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3MHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Background Loop Melodic Techno #03',
    'Artist': 'Zen Man',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/08/audio_7ac09a1714.mp3?filename=background-loop-melodic-techno-03-2691.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cali',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_fe4d3bcac9.mp3?filename=cali-1171.mp3',
    'Album':
        'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3Mnx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'U said it v13',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_a4d4d462c3.mp3?filename=u-said-it-v13-1167.mp3',
    'Album':
        'https://images.unsplash.com/photo-1525469718471-0e5888a562e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3NXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Wataboi - Flavour',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_99ef3e6f9b.mp3?filename=wataboi-flavour-1164.mp3',
    'Album':
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2N3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Modular Ambient 04',
    'Artist': 'sscheidl',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/30/audio_926fbf0b66.mp3?filename=modular-ambient-04-792.mp3',
    'Album':
        'https://images.unsplash.com/photo-1565035010268-a3816f98589a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxMHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Modular Ambient 01',
    'Artist': 'sscheidl',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/30/audio_be9f2675c8.mp3?filename=modular-ambient-01-789.mp3',
    'Album':
        'https://images.unsplash.com/photo-1545224144-b38cd309ef69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0Nnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Watching the Stars Background music for video',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_07dbf394a9.mp3?filename=watching-the-stars-background-music-for-video-8756.mp3',
    'Album':
        'https://images.unsplash.com/photo-1580436541340-36b8d0c60bae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3N3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Sublime Journey Upbeat Indie Background music',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_f42b1e426a.mp3?filename=sublime-journey-upbeat-indie-background-music-8755.mp3',
    'Album':
        'https://images.unsplash.com/photo-1505245208761-ba872912fac0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiring Cinematic Uplifting Piano (Short)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_769e1c9f43.mp3?filename=inspiring-cinematic-uplifting-piano-short-8701.mp3',
    'Album':
        'https://images.unsplash.com/photo-1554188572-9d184b57d8e2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3MXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Fairy Tale Story (Short +Kikc)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_1a93a684e6.mp3?filename=cinematic-fairy-tale-story-short-kikc-8698.mp3',
    'Album':
        'https://images.unsplash.com/photo-1585231015738-d528ed0c01c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2Nnx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Fairy Tale Story (Loop)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_e11c6bfc05.mp3?filename=cinematic-fairy-tale-story-loop-8696.mp3',
    'Album':
        'https://images.unsplash.com/photo-1531386450450-969f935bd522?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2M3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'You Live in My Heart',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/24/audio_91ed62f7c8.mp3?filename=you-live-in-my-heart-8660.mp3',
    'Album':
        'https://images.unsplash.com/photo-1619229666372-3c26c399a4cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0OXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Heart (2 min.)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/24/audio_4e243d181f.mp3?filename=epic-heart-2-min-8643.mp3',
    'Album':
        'https://images.unsplash.com/photo-1565035010268-a3816f98589a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxMHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Heart (1 min.)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/24/audio_b89480049f.mp3?filename=epic-heart-1-min-8642.mp3',
    'Album':
        'https://images.unsplash.com/photo-1604177052603-c2b4cff228db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzNXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Heart (Long version)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/24/audio_a30e7e265a.mp3?filename=epic-heart-long-version-8640.mp3',
    'Album':
        'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Nightmare on ImaginationLand',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_cb1c3e82d9.mp3?filename=nightmare-on-imaginationland-8040.mp3',
    'Album':
        'https://images.unsplash.com/photo-1486556396467-d83d2b23514b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Ragnarok',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_a6ef7032e1.mp3?filename=ragnarok-8039.mp3',
    'Album':
        'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Knights of Camelot',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_80533fb187.mp3?filename=knights-of-camelot-8038.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Adventures of the Fellowship',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_04528e1ef4.mp3?filename=adventures-of-the-fellowship-8036.mp3',
    'Album':
        'https://images.unsplash.com/photo-1564585222527-c2777a5bc6cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'A song of Wolves and Dragons',
    'Artist': 'xelementumign1s',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/06/audio_41d0a54148.mp3?filename=a-song-of-wolves-and-dragons-8034.mp3',
    'Album':
        'https://images.unsplash.com/photo-1565511718486-fa62742277f3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0OHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Geovane Bruno - Journey',
    'Artist': 'geovanebruny',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/30/audio_cd9e782f99.mp3?filename=geovane-bruno-journey-7865.mp3',
    'Album':
        'https://images.unsplash.com/photo-1578946956088-940c3b502864?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Moon Acoustic Vibes - Calm Acoustic Guitar Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/27/audio_e22212cafc.mp3?filename=moon-acoustic-vibes-calm-acoustic-guitar-background-music-for-videos-7768.mp3',
    'Album':
        'https://images.unsplash.com/photo-1604537466608-109fa2f16c3b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3OHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Ambient  Feeling - Ambient Piano Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/27/audio_6013a54b35.mp3?filename=cinematic-ambient-feeling-ambient-piano-music-for-videos-7767.mp3',
    'Album':
        'https://images.unsplash.com/photo-1572293007244-8b60335d2b7d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzOHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  
];

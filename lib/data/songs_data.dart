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
  {
    'Song': 'Trip to Home - Relaxing Acoustic Guitar Background Music',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/23/audio_607d040239.mp3?filename=trip-to-home-relaxing-acoustic-guitar-background-music-7625.mp3',
    'Album':
        'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3Mnx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Isak Solbakken - Flowering',
    'Artist': 'sodiacofficial',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/17/audio_25917ee85d.mp3?filename=isak-solbakken-flowering-7443.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'ANIMA (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/16/audio_2b0f289c2b.mp3?filename=anima-main-7426.mp3',
    'Album':
        'https://images.unsplash.com/photo-1506260408121-e353d10b87c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3M3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Calm River - Lofi Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/11/audio_be8e122dc7.mp3?filename=calm-river-lofi-background-music-for-videos-7289.mp3',
    'Album':
        'https://images.unsplash.com/photo-1547495827-fff7a5e8b26c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1Nnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Rhythm of War (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_50eea691aa.mp3?filename=rhythm-of-war-main-7233.mp3',
    'Album':
        'https://images.unsplash.com/photo-1506260408121-e353d10b87c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3M3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Ambient Emotional (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_81ee10ad78.mp3?filename=cinematic-ambient-emotional-main-7230.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501612780327-45045538702b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Ambient Light (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_3f1bc54102.mp3?filename=ambient-light-main-7229.mp3',
    'Album':
        'https://images.unsplash.com/photo-1563841930606-67e2bce48b78?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Action Epic Cinematic Victory',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_b7008d1a64.mp3?filename=action-epic-cinematic-victory-7195.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiration Piano - Calm Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_104be4d885.mp3?filename=inspiration-piano-calm-background-music-for-videos-7186.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501612780327-45045538702b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cosmic Glow',
    'Artist': 'Andrewkn',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/09/audio_ca3c052de7.mp3?filename=cosmic-glow-6703.mp3',
    'Album':
        'https://images.unsplash.com/photo-1505245208761-ba872912fac0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Cinematic Future (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_e85e959983.mp3?filename=epic-cinematic-future-main-6682.mp3',
    'Album':
        'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Romantic Violin Suite Main',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_eeececbe49.mp3?filename=romantic-violin-suite-main-6678.mp3',
    'Album':
        'https://images.unsplash.com/photo-1567942712661-82b9b407abbf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxMXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Heart (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_19983cfd5d.mp3?filename=epic-heart-main-6677.mp3',
    'Album':
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw5fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Called to Win (Main)',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_5bc533c094.mp3?filename=called-to-win-main-6675.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Joy of Travel',
    'Artist': 'GoodBMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/08/audio_75d2f13a79.mp3?filename=joy-of-travel-6671.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Power - Background Music For Video',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/08/06/audio_0b57f1f473.mp3?filename=epic-power-background-music-for-video-6572.mp3',
    'Album':
        'https://images.unsplash.com/photo-1567942712661-82b9b407abbf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxMXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Emotional Vibes Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/30/audio_22805021b0.mp3?filename=epic-emotional-vibes-background-music-for-videos-5806.mp3',
    'Album':
        'https://images.unsplash.com/photo-1499002238440-d264edd596ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3Nnx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Travel on Celtic Roads - Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/30/audio_0a088a13f7.mp3?filename=epic-travel-on-celtic-roads-background-music-for-videos-5799.mp3',
    'Album':
        'https://images.unsplash.com/photo-1437623889155-075d40e2e59f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2N3x8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspirational Epic Cinematic Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/29/audio_25c9362035.mp3?filename=inspirational-epic-cinematic-background-music-for-videos-5778.mp3',
    'Album':
        'https://images.unsplash.com/photo-1502472584811-0a2f2feb8968?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw4MHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Trailer Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/29/audio_f69e828e3e.mp3?filename=epic-trailer-background-music-for-videos-5774.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Cinematic Trailer Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/29/audio_4592e8f851.mp3?filename=epic-cinematic-trailer-background-music-for-videos-5771.mp3',
    'Album':
        'https://images.unsplash.com/photo-1609743522471-83c84ce23e32?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2NHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Desert Raid',
    'Artist': 'IAmFowler',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/28/audio_5a850031d9.mp3?filename=desert-raid-5760.mp3',
    'Album':
        'https://images.unsplash.com/photo-1523766775147-152d0d6e2adb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw4MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Summer Beach - Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/28/audio_c23e8f6fbf.mp3?filename=summer-beach-background-music-for-videos-5753.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Survival Epic Cinematic Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_6d3956563b.mp3?filename=survival-epic-cinematic-background-music-for-videos-5719.mp3',
    'Album':
        'https://images.unsplash.com/photo-1619229666372-3c26c399a4cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0OXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Goodbye stress - Calming Acoustic Guitar Instrumental Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_fedf8949d8.mp3?filename=goodbye-stress-calming-acoustic-guitar-instrumental-background-music-for-videos-5714.mp3',
    'Album':
        'https://images.unsplash.com/photo-1590721791974-d6c8ca43f6bc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzMXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Acoustic Folk - Ambient Acoustic Guitar Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_ddecf07ec1.mp3?filename=acoustic-folk-ambient-acoustic-guitar-background-music-for-videos-5713.mp3',
    'Album':
        'https://images.unsplash.com/photo-1572293007244-8b60335d2b7d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzOHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Morning Light - Ambient Acoustic Guitar Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_02a50810f0.mp3?filename=morning-light-ambient-acoustic-guitar-background-music-for-videos-5712.mp3',
    'Album':
        'https://images.unsplash.com/photo-1506260408121-e353d10b87c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3M3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song':
        'Uplifting Dreams - Ambient Acoustic Guitar (Royalty Free : No Copyright) Background  Music',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/27/audio_aa570da93e.mp3?filename=uplifting-dreams-ambient-acoustic-guitar-royalty-free-no-copyright-background-music-5711.mp3',
    'Album':
        'https://images.unsplash.com/photo-1508528000085-57406ae6b7bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3Mnx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiring Ambient Acoustic Guitar Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/26/audio_1527b6039c.mp3?filename=inspiring-ambient-acoustic-guitar-background-music-for-videos-5692.mp3',
    'Album':
        'https://images.unsplash.com/photo-1519411862549-fcd226e35d10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspirational Exciting Piano Background Music For Videos',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/26/audio_8b1dec504b.mp3?filename=inspirational-exciting-piano-background-music-for-videos-5689.mp3',
    'Album':
        'https://images.unsplash.com/photo-1522158637959-30385a09e0da?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Upbeat Acoustic Ambient Guitar Background Music For Videos',
    'Artist': 'lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/22/audio_7109a63dab.mp3?filename=upbeat-acoustic-ambient-guitar-background-music-for-videos-5601.mp3',
    'Album':
        'https://images.unsplash.com/photo-1587502536263-5dda37cd33f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': '2:40',
    'Artist': 'NoCopyrightxVlogMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/07/12/audio_a9a0118f80.mp3?filename=240-5413.mp3',
    'Album':
        'https://images.unsplash.com/photo-1576328172036-6d52156c525f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1OXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Only The Shadows Left',
    'Artist': 'enmorgenstern',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/06/28/audio_76d8cd5c39.mp3?filename=only-the-shadows-left-5263.mp3',
    'Album':
        'https://images.unsplash.com/photo-1429962714451-bb934ecdc4ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Wave Breaker',
    'Artist': 'enmorgenstern',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/06/28/audio_98187d6424.mp3?filename=wave-breaker-5261.mp3',
    'Album':
        'https://images.unsplash.com/photo-1572293007244-8b60335d2b7d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzOHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Deep Music Every Day -  Kingdom',
    'Artist': 'DeepMusicEveryDay',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/06/10/audio_2db476ae90.mp3?filename=deep-music-every-day-kingdom-5015.mp3',
    'Album':
        'https://images.unsplash.com/photo-1486556396467-d83d2b23514b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'BIG ON TIME - CHARLES MICHEL ( 30 SECOND CHALLENGE)',
    'Artist': 'CHARLES MICHEL',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/06/05/audio_498f546f92.mp3?filename=big-on-time-charles-michel-30-second-challenge-4904.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524230659092-07f99a75c013?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1N3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Funky Trap Sax',
    'Artist': 'John Sib',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/06/03/audio_4f085c61e3.mp3?filename=funky-trap-sax-4864.mp3',
    'Album':
        'https://images.unsplash.com/photo-1522158637959-30385a09e0da?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Moonlight (Mastered)',
    'Artist': 'XendomArts',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/27/audio_79b99b216e.mp3?filename=moonlight-mastered-4736.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Geovane Bruno - Hello World',
    'Artist': 'geovanebruny',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/26/audio_31b673c70b.mp3?filename=geovane-bruno-hello-world-4685.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Geovane Bruno -  Friend',
    'Artist': 'geovanebruny',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/18/audio_f556bea99c.mp3?filename=geovane-bruno-friend-4505.mp3',
    'Album':
        'https://images.unsplash.com/photo-1506260408121-e353d10b87c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3M3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Assassin (136 bpm, c min)',
    'Artist': 'tobylane',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/18/audio_761dea348c.mp3?filename=assassin-136-bpm-c-min-4475.mp3',
    'Album':
        'https://images.unsplash.com/photo-1552082919-e60010758c47?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2Mnx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Tech House Loop #01',
    'Artist': 'Zen Man',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/05/01/audio_f88aa31493.mp3?filename=tech-house-loop-01-4230.mp3',
    'Album':
        'https://images.unsplash.com/photo-1580436541340-36b8d0c60bae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3N3x8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Pixabay 1 min Piano Arp',
    'Artist': 'DeepMusicEveryDay',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/30/audio_8ac563deaf.mp3?filename=pixabay-1-min-piano_arp-4222.mp3',
    'Album':
        'https://images.unsplash.com/photo-1488711500009-f9111944b1ab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2Nnx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Crazy (120bpm) gmin',
    'Artist': 'tobylane',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/21/audio_0230d7579d.mp3?filename=crazy-120bpm-gmin-4059.mp3',
    'Album':
        'https://images.unsplash.com/photo-1507874457470-272b3c8d8ee2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzOXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Dreamy Piano Soft Sound Ambient Background',
    'Artist': 'WinkingFoxMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/21/audio_1897ccbea1.mp3?filename=dreamy-piano-soft-sound-ambient-background-4049.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'stealth escape',
    'Artist': 'aldermansweden',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/14/audio_db67dad9c9.mp3?filename=stealth-escape-3937.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Background Loop Melodic Techno #04',
    'Artist': 'Zen Man',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/08/audio_cd16379edf.mp3?filename=background-loop-melodic-techno-04-3822.mp3',
    'Album':
        'https://images.unsplash.com/photo-1483086431886-3590a88317fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Innovation',
    'Artist': 'John Sib',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/07/audio_60a6b1f99c.mp3?filename=innovation-3794.mp3',
    'Album':
        'https://images.unsplash.com/photo-1521318870395-37018f667b3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3OHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Decision - Michael Kobrin - 137bpm',
    'Artist': 'MichaelKobrin',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/07/audio_33250ce068.mp3?filename=decision-michael-kobrin-137bpm-3784.mp3',
    'Album':
        'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw4fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Waves - Michael Kobrin',
    'Artist': 'MichaelKobrin',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/07/audio_c64a162a74.mp3?filename=waves-michael-kobrin-3782.mp3',
    'Album':
        'https://images.unsplash.com/photo-1568738558403-f4e8c8f7a842?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1NXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiring Cinematic',
    'Artist': 'John Yasutis',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/03/audio_fdf057c3e4.mp3?filename=inspiring-cinematic-3681.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533038590840-1cde6e668a91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3MHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Fashion',
    'Artist': 'John Yasutis',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/03/audio_e02d0a56a5.mp3?filename=fashion-3678.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501612780327-45045538702b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Short Action',
    'Artist': 'John Yasutis',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/03/audio_9c2194bfe8.mp3?filename=short-action-3677.mp3',
    'Album':
        'https://images.unsplash.com/photo-1609102026400-3c0ca378e4c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1OHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Trailer',
    'Artist': 'John Yasutis',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/03/audio_dd7c2d159a.mp3?filename=epic-trailer-3676.mp3',
    'Album':
        'https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Geovane Bruno - That Journey',
    'Artist': 'geovanebruny',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/04/01/audio_60b109ce45.mp3?filename=geovane-bruno-that-journey-3654.mp3',
    'Album':
        'https://images.unsplash.com/photo-1429962714451-bb934ecdc4ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwzfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Geovane Bruno - Dancing In The Future',
    'Artist': 'geovanebruny',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/03/30/audio_f848315f4a.mp3?filename=geovane-bruno-dancing-in-the-future-3580.mp3',
    'Album':
        'https://images.unsplash.com/photo-1499364615650-ec38552f4f34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyOXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'HEART - Charles Michel',
    'Artist': 'CHARLES MICHEL',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/03/28/audio_5a04feb139.mp3?filename=heart-charles-michel-3553.mp3',
    'Album':
        'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxNnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'FLYING THROUGH THE VALLEY - Charles Michel',
    'Artist': 'CHARLES MICHEL',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/03/21/audio_1b3234d506.mp3?filename=flying-through-the-valley-charles-michel-3414.mp3',
    'Album':
        'https://images.unsplash.com/photo-1602667341967-f43e1a5d26c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3NHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': '1930s Seedy Street Music (Harmon Trumpet)',
    'Artist': 'astrofreq',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/17/audio_18522700c8.mp3?filename=1930s-seedy-street-music-harmon-trumpet-2920.mp3',
    'Album':
        'https://images.unsplash.com/photo-1546707012-c46675f12716?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Seedy Night Club 1930s',
    'Artist': 'astrofreq',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/17/audio_bc64603eea.mp3?filename=seedy-night-club-1930s-2918.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Carried by the Wind - Calm classical orchestral',
    'Artist': 'Bluemount Score',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/10/audio_fc315cb75c.mp3?filename=carried-by-the-wind-calm-classical-orchestral-2754.mp3',
    'Album':
        'https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Multiplication',
    'Artist': 'Bluemount Score',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/10/audio_4ea8d3af56.mp3?filename=multiplication-2753.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'CAPTAIN COVERCLAM - Orchestral Comedy',
    'Artist': 'Bluemount Score',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/02/10/audio_23b2241082.mp3?filename=captain-coverclam-orchestral-comedy-2752.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic',
    'Artist': 'Twisterium',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/26/audio_512603a28a.mp3?filename=epic-2378.mp3',
    'Album':
        'https://images.unsplash.com/photo-1501612780327-45045538702b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Background Ambient Corporate C by WinkingFox',
    'Artist': 'WinkingFoxMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/15/audio_699647c007.mp3?filename=background-ambient-corporate_c-by-winkingfox-2245.mp3',
    'Album':
        'https://images.unsplash.com/photo-1499364615650-ec38552f4f34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyOXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Background Ambient Corporate B by WinkingFox',
    'Artist': 'WinkingFoxMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/15/audio_619c94f6b2.mp3?filename=background-ambient-corporate_b-by-winkingfox-2244.mp3',
    'Album':
        'https://images.unsplash.com/photo-1488036106564-87ecb155bb15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyMHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Background Ambient Corporate A by WinkingFox',
    'Artist': 'WinkingFoxMusic',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/15/audio_75828e036e.mp3?filename=background-ambient-corporate_a-by-winkingfox-2243.mp3',
    'Album':
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw5fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Magic',
    'Artist': 'Nielizas',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/02/audio_77561de80b.mp3?filename=magic-2072.mp3',
    'Album':
        'https://images.unsplash.com/photo-1422544834386-d121ef7c6ea8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2NXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Breeze',
    'Artist': 'Nielizas',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/01/02/audio_8e7b2559c5.mp3?filename=breeze-2071.mp3',
    'Album':
        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'SONRIE  - Charles Michel',
    'Artist': 'CHARLES MICHEL',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/12/27/audio_44c4d4ab4c.mp3?filename=sonrie-charles-michel-1994.mp3',
    'Album':
        'https://images.unsplash.com/photo-1509824227185-9c5a01ceba0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'What u Thinkin (Instrumental)',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/12/26/audio_5bb1ba8bcd.mp3?filename=what-u-thinkin-instrumental-1971.mp3',
    'Album':
        'https://images.unsplash.com/photo-1521318870395-37018f667b3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3OHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'What u Thinkin',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/12/26/audio_67243c9d00.mp3?filename=what-u-thinkin-1970.mp3',
    'Album':
        'https://images.unsplash.com/photo-1527137342181-19aab11a8ee8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2MXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'The Two Kings "Walter Mazzaccaro"',
    'Artist': 'WalterMazzaccaro',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/12/09/audio_59fee0c321.mp3?filename=the-two-kings-walter-mazzaccaro-1804.mp3',
    'Album':
        'https://images.unsplash.com/photo-1604364505966-e35d40abb1ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0M3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'INMENSO - Charles Michel',
    'Artist': 'CHARLES MICHEL',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/12/06/audio_f7bc7b5e46.mp3?filename=inmenso-charles-michel-1771.mp3',
    'Album':
        'https://images.unsplash.com/photo-1604364505966-e35d40abb1ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0M3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Heavy',
    'Artist': 'tobylane',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/21/audio_86a03fa544.mp3?filename=heavy-1297.mp3',
    'Album':
        'https://images.unsplash.com/photo-1437623889155-075d40e2e59f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2N3x8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': '50',
    'Artist': 'tobylane',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/18/audio_854e05b9c3.mp3?filename=50-1280.mp3',
    'Album':
        'https://images.unsplash.com/photo-1587502536263-5dda37cd33f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Mezhdunami - Uncut gems',
    'Artist': 'taskinjura',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/13/audio_ac83dd9f39.mp3?filename=mezhdunami-uncut-gems-1198.mp3',
    'Album':
        'https://images.unsplash.com/photo-1547495827-fff7a5e8b26c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1Nnx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Wataboi - Jungle Juice',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_0584ab450c.mp3?filename=wataboi-jungle-juice-1163.mp3',
    'Album':
        'https://images.unsplash.com/photo-1502472584811-0a2f2feb8968?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw4MHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Wataboi - Wake Up (Instrumental)',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_fe0a9d9cbb.mp3?filename=wataboi-wake-up-instrumental-1162.mp3',
    'Album':
        'https://images.unsplash.com/photo-1573055418049-c8e0b7e3403b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0NHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Wataboi - Wake Up (ft. Romy Dya)',
    'Artist': 'Wataboi',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/11/audio_736a1c22a0.mp3?filename=wataboi-wake-up-ft-romy-dya-1161.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyNXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Time',
    'Artist': 'ASHUTOSH-MUSIC',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/10/03/audio_0cdf32d01b.mp3?filename=time-1051.mp3',
    'Album':
        'https://images.unsplash.com/photo-1519411862549-fcd226e35d10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OXx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Surface',
    'Artist': 'shannonrothe',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/09/21/audio_aef2cdca44.mp3?filename=surface-967.mp3',
    'Album':
        'https://images.unsplash.com/photo-1553531888-973dce69bd1f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw2NHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Clip 08 Power of PreenFM',
    'Artist': 'Zen Man',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/31/audio_268198356c.mp3?filename=clip_08_power_of_preenfm-798.mp3',
    'Album':
        'https://images.unsplash.com/photo-1494368308039-ed3393a402a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2M3x8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Modular Ambient 03',
    'Artist': 'sscheidl',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/30/audio_48f4588534.mp3?filename=modular-ambient-03-791.mp3',
    'Album':
        'https://images.unsplash.com/photo-1533038590840-1cde6e668a91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3MHx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Modular Ambient 02',
    'Artist': 'sscheidl',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/30/audio_3bea933c19.mp3?filename=modular-ambient-02-790.mp3',
    'Album':
        'https://images.unsplash.com/photo-1587502536263-5dda37cd33f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Cinematic Ambient 01',
    'Artist': 'sscheidl',
    'Url':
        'https://cdn.pixabay.com/download/audio/2020/08/30/audio_723691e308.mp3?filename=cinematic-ambient-01-788.mp3',
    'Album':
        'https://images.unsplash.com/photo-1620504155085-d7b152a58e77?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'AMOON',
    'Artist': 'jayaindra444',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/28/audio_2547fb4014.mp3?filename=amoon-8788.mp3',
    'Album':
        'https://images.unsplash.com/photo-1569840471095-ffa5de0c4c33?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwxOXx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTAzODc&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Minute Countdown to Celebration',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_ab380606d2.mp3?filename=minute-countdown-to-celebration-8784.mp3',
    'Album':
        'https://images.unsplash.com/photo-1550184658-ff6132a71714?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyOHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Flaing Piano (Main )',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_41c2ba075f.mp3?filename=flaing-piano-main-8783.mp3',
    'Album':
        'https://images.unsplash.com/photo-1609102026400-3c0ca378e4c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1OHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA1ODI&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Football Champions (Long)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_942865f1b9.mp3?filename=football-champions-long-8777.mp3',
    'Album':
        'https://images.unsplash.com/photo-1437623889155-075d40e2e59f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2N3x8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Football Champions (Mane)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_b3b1518b5c.mp3?filename=football-champions-mane-8776.mp3',
    'Album':
        'https://images.unsplash.com/photo-1522158637959-30385a09e0da?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyM3x8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Relaxing Atmosphere Background music for video',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_ee4855ddfe.mp3?filename=relaxing-atmosphere-background-music-for-video-8754.mp3',
    'Album':
        'https://images.unsplash.com/photo-1509824227185-9c5a01ceba0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHwyfHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Chilling Ego',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_91dc5d749a.mp3?filename=chilling-ego-8753.mp3',
    'Album':
        'https://images.unsplash.com/photo-1563841930606-67e2bce48b78?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw1fHxjb25jZXJ0fGVufDB8fHx8MTYzMjkxMDM4Nw&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Travel to the City',
    'Artist': 'Lesfm',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/27/audio_59b8f3d306.mp3?filename=travel-to-the-city-8752.mp3',
    'Album':
        'https://images.unsplash.com/photo-1530041539828-114de669390e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw4MHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Motivational Background Uplifting Corporate (LONG)+',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_db53b2851b.mp3?filename=motivational-background-uplifting-corporate-long-8709.mp3',
    'Album':
        'https://images.unsplash.com/photo-1483086431886-3590a88317fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw2OXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Inspiring Cinematic Uplifting Piano (Loop)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_f17b152bd1.mp3?filename=inspiring-cinematic-uplifting-piano-loop-8703.mp3',
    'Album':
        'https://images.unsplash.com/photo-1571615112700-755bd763b63e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw0MHx8Y29uY2VydHxlbnwwfHx8fDE2MzI5MTA0OTM&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Epic Tech (maine)',
    'Artist': 'ZakharValaha',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_74de00c7a9.mp3?filename=epic-tech-maine-8699.mp3',
    'Album':
        'https://images.unsplash.com/photo-1587502536263-5dda37cd33f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MXwxfHNlYXJjaHw3MXx8bmF0dXJlfGVufDB8fHx8MTYzMjkxMDYzOQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
  {
    'Song': 'Deadite - Ash vs Evil dead song -',
    'Artist': 'TommyMutiu',
    'Url':
        'https://cdn.pixabay.com/download/audio/2021/09/25/audio_39318807ea.mp3?filename=deadite-ash-vs-evil-dead-song--8688.mp3',
    'Album':
        'https://images.unsplash.com/photo-1521318870395-37018f667b3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjQwNTF8MHwxfHNlYXJjaHw3OHx8c2FkfGVufDB8fHx8MTYzMjkxMDY5NQ&ixlib=rb-1.2.1&q=80&w=1080'
  },
];

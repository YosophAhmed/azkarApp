import 'package:azkar/components/zekr_item.dart';
import 'package:azkar/constants/colors.dart';
import 'package:azkar/cubit/zekr_cubit.dart';
import 'package:azkar/cubit/zekr_states.dart';
import 'package:azkar/models/zekr.dart';
import 'package:azkar/pages/widgets/custom_buttom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class NightPage extends StatelessWidget {
  static const String routeName = 'NightPage';

  const NightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Zekr> nightAzkar = [
      Zekr(
        content: 'الحمد لله وحده, والصلاة والسلام على من لا نبى بعده',
        zekrNumber: 'الذكر 1 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
        zekrNumber: 'الذكر 2 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.',
        zekrNumber: 'الذكر 3 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.',
        zekrNumber: 'الذكر 4 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.',
        zekrNumber: 'الذكر 5 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'أمسينا وأمسى الملك لله, والحمدلله, لا اله الا الله وحده لا شريك له, له الملك وله الحمد وهو على كل شئ قدير, رب أسألك خير ما فى هذه الليلة وخير ما بعدها, وأعوذ بك من شر هذه الليلة وشر ما بعدها, رب أعوذ بك من الكسل وسوء الكبر, رب أعوذ بك من عذاب فى النار وعذاب فى القبر',
        zekrNumber: 'الذكر 6 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content: 'اللهم بك أمسينا وبك أصبحنا, وبك نحيا, وبك نموت واليك المصير',
        zekrNumber: 'الذكر 7 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم أنت ربى لا اله الا أنت, خلقتنى وأنا عبدك, وأنا على عهدك ووعدك ما استطعت, أعوذ بك من شر ما صنعت, أبوء لك بنعمتك على وأبوء بذنبى فاغفر لى فانه لا يغفر الذنوب الا أنت',
        zekrNumber: 'الذكر 8 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم انى أمسيت أشهدك, وأشهد حملة عرشك, وملائكتك, وجميع خلقك, أنك أنت الله لا اله الا أنت وحدك لا شريك لك, وأن محمد عبدك ورسولك',
        zekrNumber: 'الذكر 9 من 24',
        zekrCounter: 'أربع مرات',
        contentCounter: 4,
      ),
      Zekr(
        content:
        'اللهم ما أمسى بى من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك, فلك الحمد ولك الشكر',
        zekrNumber: 'الذكر 10 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم عافنى فى بدنى, اللهم عافنى فى سمعى, اللهم عافنى فى بصرى, لا اله الا أنت. اللهم انى أعوذ بك من الكفر والفقر, وأعوذ بك من عذاب القبر, لا اله الا أنت',
        zekrNumber: 'الذكر 11 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'حسبى الله لا اله الا هو عليه توكلت وهو رب العرش العظيم',
        zekrNumber: 'الذكر 12 من 24',
        zekrCounter: 'سبع مرات',
        contentCounter: 7,
      ),
      Zekr(
        content:
        'اللهم انى أسألك العفو والعافية فى الدنيا والآخرة, اللهم انى أسألك العفو والعافية فى دينى ودنياى وأهلى ومالى, اللهم استر عوراتى, وآمن روعاتى, اللهم احفظنى من بين يدى, ومن خلفى, وعن يمينى, وعن شمالى, ومن فوقى, وأعوذ بعظمتك أن أغتال من تحتى',
        zekrNumber: 'الذكر 13 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم عالم الغيب والشهادة فاطر السماوات والأرض, رب كل شئ ومليكه, أشهد أن لا اله الا أنت, أعوذ بك من شر نفسى, ومن شر الشيطان وشركه, وأن أقترف على نفسى سوء أو أجره الى مسلم',
        zekrNumber: 'الذكر 14 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'بسم الله الذى لا يضر مع اسمه شئ فى الأرض ولا فى السماء وهو السميع العليم',
        zekrNumber: 'الذكر 15 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'رضيت بالله ربا, وبالاسلام دينا, وبمحمد صلى الله عليه وسلم نبيا',
        zekrNumber: 'الذكر 16 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'يا حى يا قيوم برحمتك أستغيث أصلح لى شأنى كله ولا تكنى الى نفسى طرفة عين',
        zekrNumber: 'الذكر 17 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'أمسينا وأمسى الملك لله رب العالمين, اللهم انى أسألك خير هذه الليلة فتحها, ونصرها, ونورها, وبركتها, وهداها, وأعوذ بك من شر ما فيها وشر ما بعدها',
        zekrNumber: 'الذكر 18 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'أمسينا على فطرة الاسلام, وعلى كلمة الاخلاص, وعلى دين نبينا محمد صلى الله عليه وسلم, وعلى ملة أبينا ابراهيم, حنيفا مسلما وما كان من المشركين',
        zekrNumber: 'الذكر 19 من 24',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content: 'سبحان الله وبحمده',
        zekrNumber: 'الذكر 20 من 24',
        zekrCounter: 'مائة مرة',
        contentCounter: 100,
      ),
      Zekr(
        content:
        'لا اله الا الله وحده لا شريك له, له الملك وله الحمد, وهو على كل شئ قدير',
        zekrNumber: 'الذكر 21 من 24',
        zekrCounter: 'عشر مرات',
        contentCounter: 10,
      ),
      Zekr(
        content: 'أستغفر الله وأتوب اليه',
        zekrNumber: 'الذكر 22 من 24',
        zekrCounter: 'مائة مرة',
        contentCounter: 100,
      ),
      Zekr(
        content: 'أعوذ بكلمات الله التامات من شر ما خلق',
        zekrNumber: 'الذكر 23 من 24',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'اللهم صلى وسلم على نبينا محمد',
        zekrNumber: 'الذكر 24 من 24',
        zekrCounter: 'عشر مرات',
        contentCounter: 10,
      ),
    ];

    return Scaffold(
      backgroundColor: nightColor1,
      appBar: AppBar(
        title: Text(
          'أذكار المساء',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            fontFamily: 'IBMPlexSansArabic',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: nightColor2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 33.sp,
            color: nightColor4,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Icon(
              Icons.mode_night,
              color: const Color(0xff381C59),
              size: 33.sp,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          BlocConsumer<ZekrCubit, ZekrState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => ZekrItem(
                    zekr: nightAzkar[index],
                    containerColor1: nightColor1,
                    containerColor2: nightColor2,
                    containerColor3: nightColor3,
                    containerColor4: nightColor4,
                  ),
                  itemCount: nightAzkar.length,
                  reverse: true,
                  controller: BlocProvider.of<ZekrCubit>(context).controller,
                  onPageChanged: (index) {
                    BlocProvider.of<ZekrCubit>(context).swipe();
                  },
                ),
              );
            },
          ),
          const CustomBottomBar(color: nightColor4),
        ],
      ),
    );
  }
}

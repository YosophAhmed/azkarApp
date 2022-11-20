import 'package:azkar/components/zekr_item.dart';
import 'package:azkar/constants/colors.dart';
import 'package:azkar/models/zekr.dart';
import 'package:azkar/pages/widgets/custom_buttom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MorningPage extends StatelessWidget {
  static const String routeName = 'MorningPage';

  const MorningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Zekr> morningAzkar =  [
      Zekr(
        content: 'الحمد لله وحده, والصلاة والسلام على من لا نبى بعده',
        zekrNumber: 'الذكر 1 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
        zekrNumber: 'الذكر 2 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.',
        zekrNumber: 'الذكر 3 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.',
        zekrNumber: 'الذكر 4 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.',
        zekrNumber: 'الذكر 5 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'أصبحنا وأصبح الملك لله, والحمدلله, لا اله الا الله وحده لا شريك له, له الملك وله الحمد وهو على كل شئ قدير, رب أسالك خير ما فى هذا اليوم وخير ما بعده, وأعوذ بك من شر ما فى هذا اليوم وشر ما بعده, رب أعوذ بك من الكسل وسوء الكبر, رب أعوذ بك من عذاب فى النار وعذاب فى القبر',
        zekrNumber: 'الذكر 6 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content: 'اللهم بك أصبحنا, وبك أمسينا, وبك نحيا, وبك نموت واليك النشور',
        zekrNumber: 'الذكر 7 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم أنت ربى لا اله الا أنت, خلقتنى وأنا عبدك, وأنا على عهدك ووعدك ما استطعت, أعوذ بك من شر ما صنعت, أبوء لك بنعمتك على وأبوء بذنبى فاغفر لى فانه لا يغفر الذنوب الا أنت',
        zekrNumber: 'الذكر 8 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم انى أصبحت أشهدك, وأشهد حملة عرشك, وملائكتك, وجميع خلقك, أنك أنت الله لا اله الا أنت وحدك لا شريك لك, وأن محمد عبدك ورسولك',
        zekrNumber: 'الذكر 9 من 25',
        zekrCounter: 'أربع مرات',
        contentCounter: 4,
      ),
      Zekr(
        content:
        'اللهم ما أصبح بى من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك, فلك الحمد ولك الشكر',
        zekrNumber: 'الذكر 10 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم عافنى فى بدنى, اللهم عافنى فى سمعى, اللهم عافنى فى بصرى, لا اله الا أنت. اللهم انى أعوذ بك من الكفر والفقر, وأعوذ بك من عذاب القبر, لا اله الا أنت',
        zekrNumber: 'الذكر 11 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'حسبى الله لا اله الا هو عليه توكلت وهو رب العرش العظيم',
        zekrNumber: 'الذكر 12 من 25',
        zekrCounter: 'سبع مرات',
        contentCounter: 7,
      ),
      Zekr(
        content:
        'اللهم انى أسألك العفو والعافية فى الدنيا والآخرة, اللهم انى أسألك العفو والعافية فى دينى ودنياى وأهلى ومالى, اللهم استر عوراتى, وآمن روعاتى, اللهم احفظنى من بين يدى, ومن خلفى, وعن يمينى, وعن شمالى, ومن فوقى, وأعوذ بعظمتك أن أغتال من تحتى',
        zekrNumber: 'الذكر 13 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'اللهم عالم الغيب والشهادة فاطر السماوات والأرض, رب كل شئ ومليكه, أشهد أن لا اله الا أنت, أعوذ بك من شر نفسى, ومن شر الشيطان وشركه, وأن أقترف على نفسى سوء أو أجره الى مسلم',
        zekrNumber: 'الذكر 14 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'بسم الله الذى لا يضر مع اسمه شئ فى الأرض ولا فى السماء وهو السميع العليم',
        zekrNumber: 'الذكر 15 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'رضيت بالله ربا, وبالاسلام دينا, وبمحمد صلى الله عليه وسلم نبيا',
        zekrNumber: 'الذكر 16 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content:
        'يا حى يا قيوم برحمتك أستغيث أصلح لى شأنى كله ولا تكنى الى نفسى طرفة عين',
        zekrNumber: 'الذكر 17 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'أصبحنا وأصبح الملك لله رب العالمين, اللهم انى اسألك خير هذا اليوم فتحه, ونصره, ونوره, وبركته, وهداه, وأعوذ بك من شر ما فيه وشر ما بعده',
        zekrNumber: 'الذكر 18 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content:
        'أصبحنا على فطرة الاسلام, وعلى كلمة الاخلاص, وعلى دين نبينا محمد صلى الله عليه وسلم, وعلى ملة أبينا ابراهيم, حنيفا مسلما وما كان من المشركين',
        zekrNumber: 'الذكر 19 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content: 'سبحان الله وبحمده',
        zekrNumber: 'الذكر 20 من 25',
        zekrCounter: 'مائة مرة',
        contentCounter: 100,
      ),
      Zekr(
        content:
        'لا اله الا الله وحده لا شريك له, له الملك وله الحمد, وهو على كل شئ قدير',
        zekrNumber: 'الذكر 21 من 25',
        zekrCounter: 'مائة مرة',
        contentCounter: 100,
      ),
      Zekr(
        content:
        'سبحان الله وبحمده, عدد خلقه, ورضا نفسه, وزنة عرشه, ومداد كلماته',
        zekrNumber: 'الذكر 22 من 25',
        zekrCounter: 'ثلاث مرات',
        contentCounter: 3,
      ),
      Zekr(
        content: 'اللهم انى أسألك علما نافعا, ورزقا طيبا, وعملا متقبلا',
        zekrNumber: 'الذكر 23 من 25',
        zekrCounter: 'مرة واحدة',
        contentCounter: 1,
      ),
      Zekr(
        content: 'أستغفر الله وأتوب اليه',
        zekrNumber: 'الذكر 24 من 25',
        zekrCounter: 'مائة مرة',
        contentCounter: 100,
      ),
      Zekr(
        content: 'اللهم صلى وسلم على نبينا محمد',
        zekrNumber: 'الذكر 25 من 25',
        zekrCounter: 'عشر مرات',
        contentCounter: 10,
      ),
    ];
    return Scaffold(
      backgroundColor: morningColor1,
      appBar: AppBar(
        title: Text(
          'أذكار الصباح',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: morningColor2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 33.sp,
            color: morningColor4,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Icon(
              Icons.sunny,
              color: Colors.amber,
              size: 33.sp,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) => ZekrItem(
                zekr: morningAzkar[index],
                containerColor1: morningColor1,
                containerColor2: morningColor2,
                containerColor3: morningColor3,
                containerColor4: morningColor4,
              ),
              itemCount: morningAzkar.length,
              reverse: true,

            ),
          ),
          const CustomBottomBar(color: morningColor4),
        ],
      ),
    );
  }
}




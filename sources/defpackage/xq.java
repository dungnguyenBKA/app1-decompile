package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import com.camerasideas.collagemaker.appdata.f;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.util.LangUtils;

/* renamed from: xq  reason: default package */
public class xq {
    private static final List<String> a;
    public static final /* synthetic */ int b = 0;

    static {
        ArrayList arrayList = new ArrayList();
        a = arrayList;
        arrayList.add("English");
        arrayList.add("Dansk");
        arrayList.add("Deutsch");
        arrayList.add("Español");
        arrayList.add("فارسی");
        arrayList.add("Français");
        arrayList.add("हिन्दी");
        arrayList.add("Italiano");
        arrayList.add("日本語");
        arrayList.add("한국어");
        arrayList.add("Bahasa Melayu");
        arrayList.add("Nederlands");
        arrayList.add("Polski");
        arrayList.add("Português");
        arrayList.add("Română");
        arrayList.add("Русский");
        arrayList.add("Slovenčina");
        arrayList.add("Svenska");
        arrayList.add("Українська");
        arrayList.add("العربية");
        arrayList.add("简体中文");
        arrayList.add("繁體中文");
        arrayList.add("Bahasa Indonesia");
        arrayList.add("ไทย");
        arrayList.add("Türkçe");
        arrayList.add("Tiếng Việt");
        arrayList.add("Čeština");
    }

    public static Context a(Context context, int i) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            configuration.setLocale(c(context, i));
            if (Build.VERSION.SDK_INT >= 24) {
                context = context.createConfigurationContext(configuration);
            }
            context.getResources().updateConfiguration(configuration, null);
        } catch (Exception e) {
            em.i("LanguageUtils", "changeLanguage", e);
        }
        return context;
    }

    public static String b(int i) {
        List<String> list = a;
        return (i >= list.size() || i < 0) ? "" : list.get(i);
    }

    public static Locale c(Context context, int i) {
        Locale locale;
        String str;
        Locale locale2;
        Locale locale3;
        Locale locale4 = Locale.getDefault();
        if (i < 0) {
            String language = Locale.getDefault().getLanguage();
            Locale locale5 = Locale.ENGLISH;
            if (language.equalsIgnoreCase(locale5.getLanguage())) {
                locale3 = locale5;
            } else {
                if (language.equalsIgnoreCase(new Locale("da").getLanguage())) {
                    locale2 = new Locale("da");
                    str = "Dansk";
                } else if (language.equalsIgnoreCase(Locale.GERMANY.getLanguage())) {
                    locale2 = Locale.GERMANY;
                    str = "Deutsch";
                } else if (language.equalsIgnoreCase(new Locale("es").getLanguage())) {
                    locale2 = new Locale("es");
                    str = "Español";
                } else if (language.equalsIgnoreCase(Locale.FRENCH.getLanguage())) {
                    locale2 = Locale.FRENCH;
                    str = "Français";
                } else if (language.equalsIgnoreCase(new Locale("hi").getLanguage())) {
                    locale2 = new Locale("hi");
                    str = "हिन्दी";
                } else if (language.equalsIgnoreCase(new Locale("it").getLanguage())) {
                    locale2 = new Locale("it");
                    str = "Italiano";
                } else if (language.equalsIgnoreCase(Locale.JAPANESE.getLanguage())) {
                    locale2 = Locale.JAPANESE;
                    str = "日本語";
                } else if (language.equalsIgnoreCase(Locale.KOREAN.getLanguage())) {
                    locale2 = Locale.KOREAN;
                    str = "한국어";
                } else if (language.equalsIgnoreCase(new Locale("ms").getLanguage())) {
                    locale2 = new Locale("ms");
                    str = "Bahasa Melayu";
                } else if (language.equalsIgnoreCase(new Locale("nl").getLanguage())) {
                    locale2 = new Locale("nl");
                    str = "Nederlands";
                } else if (language.equalsIgnoreCase(new Locale("pl").getLanguage())) {
                    locale2 = new Locale("pl");
                    str = "Polski";
                } else if (language.equalsIgnoreCase(new Locale("pt", "PT").getLanguage())) {
                    locale2 = new Locale("pt", "PT");
                    str = "Português";
                } else if (language.equalsIgnoreCase(new Locale("ro").getLanguage())) {
                    locale2 = new Locale("ro");
                    str = "Română";
                } else if (language.equalsIgnoreCase(new Locale("ru").getLanguage())) {
                    locale2 = new Locale("ru");
                    str = "Русский";
                } else if (language.equalsIgnoreCase(new Locale("sk").getLanguage())) {
                    locale2 = new Locale("sk");
                    str = "Slovenčina";
                } else if (language.equalsIgnoreCase(new Locale("sv").getLanguage())) {
                    locale2 = new Locale("sv");
                    str = "Svenska";
                } else if (language.equalsIgnoreCase(new Locale("uk").getLanguage())) {
                    locale2 = new Locale("uk");
                    str = "Українська";
                } else if (language.equalsIgnoreCase(new Locale("ar").getLanguage())) {
                    locale2 = new Locale("ar");
                    str = "العربية";
                } else if (language.equalsIgnoreCase("zh")) {
                    if (locale4.getCountry().equalsIgnoreCase(Locale.SIMPLIFIED_CHINESE.getCountry())) {
                        locale2 = Locale.SIMPLIFIED_CHINESE;
                        str = "简体中文";
                    } else {
                        locale2 = Locale.TRADITIONAL_CHINESE;
                        str = "繁體中文";
                    }
                } else if (language.equalsIgnoreCase(new Locale("in").getLanguage())) {
                    locale2 = new Locale("in");
                    str = "Indonesia";
                } else if (language.equalsIgnoreCase(new Locale("th").getLanguage())) {
                    locale2 = new Locale("th");
                    str = "ไทย";
                } else if (language.equalsIgnoreCase(new Locale("tr").getLanguage())) {
                    locale2 = new Locale("tr");
                    str = "Türkçe";
                } else if (language.equalsIgnoreCase(new Locale("vi").getLanguage())) {
                    locale2 = new Locale("vi");
                    str = "Tiếng Việt";
                } else if (language.equalsIgnoreCase(new Locale("cs").getLanguage())) {
                    locale2 = new Locale("cs");
                    str = "Čeština";
                } else if (language.equalsIgnoreCase(new Locale("fa").getLanguage())) {
                    locale2 = new Locale("fa");
                    str = "فارسی";
                } else {
                    locale3 = locale4;
                }
                f.g(context).edit().putString("language", str).apply();
                return locale2;
            }
            locale2 = locale3;
            str = "English";
            f.g(context).edit().putString("language", str).apply();
            return locale2;
        }
        String str2 = a.get(i);
        str2.hashCode();
        char c = 65535;
        switch (str2.hashCode()) {
            case -2144569262:
                if (str2.equals("العربية")) {
                    c = 0;
                    break;
                }
                break;
            case -1997753257:
                if (str2.equals("Magyar")) {
                    c = 1;
                    break;
                }
                break;
            case -1898793020:
                if (str2.equals("Polski")) {
                    c = 2;
                    break;
                }
                break;
            case -1848502141:
                if (str2.equals("Bahasa Melayu")) {
                    c = 3;
                    break;
                }
                break;
            case -1841398009:
                if (str2.equals("Română")) {
                    c = 4;
                    break;
                }
                break;
            case -1799079190:
                if (str2.equals("Hrvatska")) {
                    c = 5;
                    break;
                }
                break;
            case -1732777639:
                if (str2.equals("שפת עברית")) {
                    c = 6;
                    break;
                }
                break;
            case -1653885057:
                if (str2.equals("Türkçe")) {
                    c = 7;
                    break;
                }
                break;
            case -1575530339:
                if (str2.equals("Français")) {
                    c = '\b';
                    break;
                }
                break;
            case -1485199778:
                if (str2.equals("Български")) {
                    c = '\t';
                    break;
                }
                break;
            case -1185086888:
                if (str2.equals("Русский")) {
                    c = '\n';
                    break;
                }
                break;
            case -1155591125:
                if (str2.equals("Português")) {
                    c = 11;
                    break;
                }
                break;
            case -1111203811:
                if (str2.equals("Έλληνικά")) {
                    c = '\f';
                    break;
                }
                break;
            case -1071093480:
                if (str2.equals("Deutsch")) {
                    c = '\r';
                    break;
                }
                break;
            case -608937522:
                if (str2.equals("Українська")) {
                    c = 14;
                    break;
                }
                break;
            case -531384840:
                if (str2.equals("Slovenčina")) {
                    c = 15;
                    break;
                }
                break;
            case -293657118:
                if (str2.equals("shqiptar")) {
                    c = 16;
                    break;
                }
                break;
            case -171699427:
                if (str2.equals("Svenska")) {
                    c = 17;
                    break;
                }
                break;
            case 2907296:
                if (str2.equals("Việt")) {
                    c = 18;
                    break;
                }
                break;
            case 3625007:
                if (str2.equals("ไทย")) {
                    c = 19;
                    break;
                }
                break;
            case 25921943:
                if (str2.equals("日本語")) {
                    c = 20;
                    break;
                }
                break;
            case 53916739:
                if (str2.equals("한국어")) {
                    c = 21;
                    break;
                }
                break;
            case 60895824:
                if (str2.equals("English")) {
                    c = 22;
                    break;
                }
                break;
            case 65798537:
                if (str2.equals("Dansk")) {
                    c = 23;
                    break;
                }
                break;
            case 212156143:
                if (str2.equals("Español")) {
                    c = 24;
                    break;
                }
                break;
            case 368885610:
                if (str2.equals("Bahasa Indonesia")) {
                    c = 25;
                    break;
                }
                break;
            case 553925264:
                if (str2.equals("Čeština")) {
                    c = 26;
                    break;
                }
                break;
            case 684936526:
                if (str2.equals("Nederlands")) {
                    c = 27;
                    break;
                }
                break;
            case 846369618:
                if (str2.equals("اردو زبان")) {
                    c = 28;
                    break;
                }
                break;
            case 962033677:
                if (str2.equals("简体中文")) {
                    c = 29;
                    break;
                }
                break;
            case 996541844:
                if (str2.equals("ภาษาไทย")) {
                    c = 30;
                    break;
                }
                break;
            case 1001611501:
                if (str2.equals("繁體中文")) {
                    c = 31;
                    break;
                }
                break;
            case 1127340175:
                if (str2.equals("Italiano")) {
                    c = ' ';
                    break;
                }
                break;
            case 1132116197:
                if (str2.equals("हिन्दी")) {
                    c = '!';
                    break;
                }
                break;
            case 1225600157:
                if (str2.equals("Tiếng Việt")) {
                    c = '\"';
                    break;
                }
                break;
            case 1234496343:
                if (str2.equals("Српска")) {
                    c = '#';
                    break;
                }
                break;
            case 1237232091:
                if (str2.equals("македонски")) {
                    c = '$';
                    break;
                }
                break;
            case 1276826289:
                if (str2.equals("Português (Brasil)")) {
                    c = '%';
                    break;
                }
                break;
            case 1527052068:
                if (str2.equals("فارسی")) {
                    c = '&';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                locale = new Locale("ar");
                break;
            case 1:
                locale = new Locale("hu");
                break;
            case 2:
                locale = new Locale("pl");
                break;
            case 3:
                locale = new Locale("ms");
                break;
            case 4:
                locale = new Locale("ro");
                break;
            case 5:
                locale = new Locale("hr");
                break;
            case 6:
                locale = new Locale("iw");
                break;
            case 7:
                locale = new Locale("tr");
                break;
            case '\b':
                locale = Locale.FRENCH;
                break;
            case '\t':
                locale = new Locale("bg");
                break;
            case '\n':
                locale = new Locale("ru");
                break;
            case 11:
                locale = new Locale("pt", "PT");
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT:
                locale = new Locale("el");
                break;
            case '\r':
                locale = Locale.GERMANY;
                break;
            case VungleException.SERVER_RETRY_ERROR:
                locale = new Locale("uk");
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD:
                locale = new Locale("sk");
                break;
            case VungleException.NO_SPACE_TO_INIT:
                locale = new Locale("sq");
                break;
            case 17:
                locale = new Locale("sv");
                break;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED:
                locale = new Locale("vi");
                break;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS:
                locale = new Locale("th");
                break;
            case 20:
                locale = Locale.JAPANESE;
                break;
            case VungleException.SERVER_ERROR:
                locale = Locale.KOREAN;
                break;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE:
                locale = Locale.ENGLISH;
                break;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE:
                locale = new Locale("da");
                break;
            case VungleException.ASSET_DOWNLOAD_ERROR:
                locale = new Locale("es");
                break;
            case VungleException.OPERATION_CANCELED:
                locale = new Locale("in");
                break;
            case VungleException.DB_ERROR:
                locale = new Locale("cs");
                break;
            case VungleException.RENDER_ERROR:
                locale = new Locale("nl");
                break;
            case VungleException.INVALID_SIZE:
                locale = new Locale("ur");
                break;
            case VungleException.INCORRECT_DEFAULT_API_USAGE:
                locale = Locale.SIMPLIFIED_CHINESE;
                break;
            case VungleException.INCORRECT_BANNER_API_USAGE:
                locale = new Locale("th", "TH");
                break;
            case VungleException.WEB_CRASH:
                locale = Locale.TRADITIONAL_CHINESE;
                break;
            case ' ':
                locale = new Locale("it");
                break;
            case VungleException.NETWORK_UNREACHABLE:
                locale = new Locale("hi");
                break;
            case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED:
                locale = new Locale("vi");
                break;
            case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM:
                locale = new Locale("sr");
                break;
            case '$':
                locale = new Locale("mk");
                break;
            case LangUtils.HASH_OFFSET:
                locale = new Locale("pt", "BR");
                break;
            case '&':
                locale = new Locale("fa");
                break;
            default:
                locale = context.getResources().getConfiguration().locale;
                break;
        }
        f.g(context).edit().putString("language", b(i)).apply();
        return locale;
    }

    public static int d(Context context) {
        return a.indexOf(f.g(context).getString("language", ""));
    }

    public static Context e(Context context) {
        return a(context, d(context));
    }

    public static String[] f() {
        List<String> list = a;
        return (String[]) list.toArray(new String[list.size()]);
    }
}

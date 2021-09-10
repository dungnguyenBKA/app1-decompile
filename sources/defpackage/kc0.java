package defpackage;

import java.util.ArrayList;
import java.util.Random;

/* renamed from: kc0  reason: default package */
public class kc0 {
    public static String a(String str) {
        return e().get(new Random().nextInt(e().size())) + "#" + str + "";
    }

    public static String b(String str) {
        return f().get(new Random().nextInt(f().size())) + "#" + str + "";
    }

    public static String c(String str) {
        return e().get(new Random().nextInt(e().size())) + "#" + str + "";
    }

    public static String d(String str) {
        return g().get(new Random().nextInt(g().size())) + "#" + str + "";
    }

    private static ArrayList<String> e() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("IMG_16_9_APP_INSTALL");
        arrayList.add("IMG_16_9_LINK");
        return arrayList;
    }

    private static ArrayList<String> f() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("CAROUSEL_IMG_SQUARE_APP_INSTALL");
        arrayList.add("CAROUSEL_IMG_SQUARE_LINK");
        arrayList.add("IMG_16_9_APP_INSTALL");
        arrayList.add("IMG_16_9_LINK");
        arrayList.add("PLAYABLE");
        arrayList.add("VID_HD_9_16_39S_APP_INSTALL");
        arrayList.add("VID_HD_9_16_39S_LINK");
        arrayList.add("VID_HD_16_9_15S_APP_INSTALL");
        arrayList.add("VID_HD_16_9_15S_LINK");
        arrayList.add("VID_HD_16_9_46S_APP_INSTALL");
        arrayList.add("VID_HD_16_9_46S_LINK");
        return arrayList;
    }

    private static ArrayList<String> g() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("CAROUSEL_IMG_SQUARE_APP_INSTALL");
        arrayList.add("CAROUSEL_IMG_SQUARE_LINK");
        arrayList.add("IMG_16_9_APP_INSTALL");
        arrayList.add("IMG_16_9_LINK");
        arrayList.add("VID_HD_9_16_39S_APP_INSTALL");
        arrayList.add("VID_HD_9_16_39S_LINK");
        arrayList.add("VID_HD_16_9_15S_APP_INSTALL");
        arrayList.add("VID_HD_16_9_15S_LINK");
        arrayList.add("VID_HD_16_9_46S_APP_INSTALL");
        arrayList.add("VID_HD_16_9_46S_LINK");
        return arrayList;
    }
}

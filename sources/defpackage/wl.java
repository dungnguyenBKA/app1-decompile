package defpackage;

import android.os.Environment;
import java.util.HashSet;

/* renamed from: wl  reason: default package */
public class wl {
    public static final HashSet<String> a;

    static {
        Environment.getExternalStorageDirectory().getPath();
        HashSet<String> hashSet = new HashSet<>();
        a = hashSet;
        hashSet.add("HTC One V");
        hashSet.add("HTC One S");
        hashSet.add("HTC One X");
        hashSet.add("HTC One XL");
    }
}

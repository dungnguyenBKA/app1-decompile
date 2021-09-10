package defpackage;

import android.util.Log;
import com.airbnb.lottie.j;
import java.util.HashSet;
import java.util.Set;

/* renamed from: yb  reason: default package */
public class yb implements j {
    private static final Set<String> a = new HashSet();

    public void a(String str) {
        Set<String> set = a;
        if (!set.contains(str)) {
            Log.w("LOTTIE", str, null);
            set.add(str);
        }
    }

    public void b(String str, Throwable th) {
        Set<String> set = a;
        if (!set.contains(str)) {
            Log.w("LOTTIE", str, th);
            set.add(str);
        }
    }
}

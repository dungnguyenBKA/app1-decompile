package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import java.util.Hashtable;

/* renamed from: mm  reason: default package */
public class mm {
    private static final Hashtable<String, Typeface> a = new Hashtable<>();

    public static Typeface a(Context context, String str) {
        Typeface typeface;
        Typeface typeface2;
        Hashtable<String, Typeface> hashtable = a;
        if (hashtable.containsKey(str)) {
            return hashtable.get(str);
        }
        synchronized (hashtable) {
            if (!hashtable.containsKey(str)) {
                try {
                    if (!cm.n(str)) {
                        if (!str.startsWith("/")) {
                            typeface2 = Typeface.createFromAsset(context.getAssets(), str);
                            hashtable.put(str, typeface2);
                        }
                    }
                    typeface2 = Typeface.createFromFile(str);
                    hashtable.put(str, typeface2);
                } catch (Exception e) {
                    em.h("Typefaces", "Could not get typeface '" + str + "' because " + e.getMessage());
                    return null;
                }
            }
            typeface = hashtable.get(str);
        }
        return typeface;
    }
}

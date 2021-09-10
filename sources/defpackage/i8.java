package defpackage;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* renamed from: i8  reason: default package */
public class i8 {
    private final s8<String> a = new s8<>();
    private final Map<s8<String>, Typeface> b = new HashMap();
    private final Map<String, Typeface> c = new HashMap();
    private final AssetManager d;
    private String e = ".ttf";

    public i8(Drawable.Callback callback) {
        if (!(callback instanceof View)) {
            zb.b("LottieDrawable must be inside of a view for images to work.");
            this.d = null;
            return;
        }
        this.d = ((View) callback).getContext().getAssets();
    }

    public Typeface a(String str, String str2) {
        this.a.a(str, str2);
        Typeface typeface = this.b.get(this.a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typeface2 = this.c.get(str);
        if (typeface2 == null) {
            StringBuilder r = ic.r("fonts/", str);
            r.append(this.e);
            typeface2 = Typeface.createFromAsset(this.d, r.toString());
            this.c.put(str, typeface2);
        }
        boolean contains = str2.contains("Italic");
        boolean contains2 = str2.contains("Bold");
        int i = (!contains || !contains2) ? contains ? 2 : contains2 ? 1 : 0 : 3;
        if (typeface2.getStyle() != i) {
            typeface2 = Typeface.create(typeface2, i);
        }
        this.b.put(this.a, typeface2);
        return typeface2;
    }
}

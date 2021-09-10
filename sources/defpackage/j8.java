package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.airbnb.lottie.a;
import com.airbnb.lottie.h;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* renamed from: j8  reason: default package */
public class j8 {
    private static final Object e = new Object();
    private final Context a;
    private String b;
    private a c;
    private final Map<String, h> d;

    public j8(Drawable.Callback callback, String str, a aVar, Map<String, h> map) {
        this.b = str;
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.b;
            if (str2.charAt(str2.length() - 1) != '/') {
                this.b += '/';
            }
        }
        if (!(callback instanceof View)) {
            zb.b("LottieDrawable must be inside of a view for images to work.");
            this.d = new HashMap();
            this.a = null;
            return;
        }
        this.a = ((View) callback).getContext();
        this.d = map;
        this.c = null;
    }

    private Bitmap c(String str, Bitmap bitmap) {
        synchronized (e) {
            this.d.get(str).f(bitmap);
        }
        return bitmap;
    }

    public Bitmap a(String str) {
        h hVar = this.d.get(str);
        if (hVar == null) {
            return null;
        }
        Bitmap a2 = hVar.a();
        if (a2 != null) {
            return a2;
        }
        a aVar = this.c;
        if (aVar != null) {
            Bitmap a3 = aVar.a(hVar);
            if (a3 != null) {
                c(str, a3);
            }
            return a3;
        }
        String b2 = hVar.b();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (!b2.startsWith("data:") || b2.indexOf("base64,") <= 0) {
            try {
                if (!TextUtils.isEmpty(this.b)) {
                    AssetManager assets = this.a.getAssets();
                    Bitmap f = dc.f(BitmapFactory.decodeStream(assets.open(this.b + b2), null, options), hVar.e(), hVar.c());
                    c(str, f);
                    return f;
                }
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            } catch (IOException e2) {
                zb.c("Unable to open asset.", e2);
                return null;
            }
        } else {
            try {
                byte[] decode = Base64.decode(b2.substring(b2.indexOf(44) + 1), 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                c(str, decodeByteArray);
                return decodeByteArray;
            } catch (IllegalArgumentException e3) {
                zb.c("data URL did not have correct base64 format.", e3);
                return null;
            }
        }
    }

    public boolean b(Context context) {
        return (context == null && this.a == null) || this.a.equals(context);
    }
}

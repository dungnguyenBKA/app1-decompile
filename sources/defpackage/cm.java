package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewTreeObserver;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import com.vungle.warren.error.VungleException;
import java.io.File;

/* renamed from: cm  reason: default package */
public class cm {

    /* renamed from: cm$a */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ View b;
        final /* synthetic */ int c;
        final /* synthetic */ int d;
        final /* synthetic */ long e;

        a(View view, int i, int i2, long j) {
            this.b = view;
            this.c = i;
            this.d = i2;
            this.e = j;
        }

        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT >= 21 && this.b.getWidth() > 0 && this.b.getHeight() > 0 && this.b.isAttachedToWindow()) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(this.b, this.c, this.d, 0.0f, (float) Math.max(this.b.getWidth(), this.b.getHeight()));
                createCircularReveal.setDuration(this.e);
                createCircularReveal.start();
                this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    /* renamed from: cm$b */
    class b extends AnimatorListenerAdapter {
        final /* synthetic */ View a;
        final /* synthetic */ AppCompatActivity b;
        final /* synthetic */ Class c;

        b(View view, AppCompatActivity appCompatActivity, Class cls) {
            this.a = view;
            this.b = appCompatActivity;
            this.c = cls;
        }

        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.a.setVisibility(4);
            cm.t(this.b, this.c);
        }
    }

    public static String a(String str) {
        int i;
        if (!str.startsWith("content://com.google.android.apps.photos.contentprovider")) {
            return str;
        }
        String decode = Uri.decode(str);
        int lastIndexOf = decode.lastIndexOf("content://media");
        if (lastIndexOf < 0 || lastIndexOf > decode.length()) {
            lastIndexOf = decode.lastIndexOf("file:///");
        }
        if (lastIndexOf < 0 || lastIndexOf >= decode.length()) {
            return str;
        }
        String substring = decode.substring(lastIndexOf);
        String[] strArr = {"/ACTUAL", "/NO_TRANSFORM", "/ORIGINAL", "/REQUIRE_ORIGINAL"};
        int i2 = 0;
        while (true) {
            if (i2 >= 4) {
                i = -1;
                break;
            }
            i = substring.lastIndexOf(strArr[i2]);
            if (i > 0 && i < substring.length()) {
                break;
            }
            i2++;
        }
        return i != -1 ? substring.substring(0, i) : str;
    }

    public static int b(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i <= 0 || i2 <= 0) {
            return 1;
        }
        if (i4 > i2 || i3 > i) {
            while (true) {
                if (i4 / i5 <= i2 && i3 / i5 <= i) {
                    break;
                }
                i5 *= 2;
            }
        }
        return i5;
    }

    public static Uri c(Uri uri) {
        if (!uri.toString().startsWith("content://com.google.android.apps.photos.contentprovider")) {
            return uri;
        }
        if (!o(uri)) {
            return Uri.parse(a(uri.toString()));
        }
        return null;
    }

    public static Bitmap d(int i, int i2, Bitmap.Config config) {
        boolean z;
        Bitmap bitmap;
        boolean z2 = true;
        try {
            bitmap = Bitmap.createBitmap(i, i2, config);
            z = false;
        } catch (Throwable th) {
            th.printStackTrace();
            bitmap = null;
            z = true;
        }
        if (bitmap == null || z) {
            System.gc();
            System.gc();
            try {
                bitmap = Bitmap.createBitmap(i, i2, config);
                z2 = false;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        } else {
            z2 = z;
        }
        if (bitmap != null && !z2) {
            return bitmap;
        }
        System.gc();
        System.gc();
        try {
            return Bitmap.createBitmap(i, i2, config);
        } catch (Throwable th3) {
            th3.printStackTrace();
            return bitmap;
        }
    }

    public static Uri e(String str) {
        if (str.startsWith("android.resource") || m(str) || n(str)) {
            return Uri.parse(str);
        }
        return Uri.fromFile(new File(str));
    }

    public static String f(Uri uri) {
        if (uri == null) {
            return "";
        }
        if (uri.toString().startsWith("/") || uri.toString().startsWith("content://")) {
            return uri.toString();
        }
        return Uri.decode(uri.getEncodedPath());
    }

    public static int g(Context context, Uri uri) {
        try {
            if (uri.toString().startsWith("file:///")) {
                try {
                    int attributeInt = new ExifInterface(Uri.decode(uri.getEncodedPath())).getAttributeInt("Orientation", 1);
                    if (attributeInt == 3) {
                        return 180;
                    }
                    if (attributeInt == 6) {
                        return 90;
                    }
                    if (attributeInt != 8) {
                        return 0;
                    }
                    return 270;
                } catch (Throwable th) {
                    th.printStackTrace();
                    em.i("ImageUtils", "get image exit degree occur exception", th);
                    return 0;
                }
            } else {
                Cursor query = context.getContentResolver().query(uri, new String[]{"orientation"}, null, null, null);
                if (query.getCount() != 1) {
                    return -1;
                }
                query.moveToFirst();
                return query.getInt(0);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002a A[SYNTHETIC, Splitter:B:11:0x002a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String h(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            r1 = 0
            android.content.ContentResolver r2 = r8.getContentResolver()     // Catch:{ Exception -> 0x0023 }
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch:{ Exception -> 0x0023 }
            r7 = 0
            r3 = r9
            r5 = r10
            r6 = r11
            android.database.Cursor r8 = r2.query(r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x0023 }
            if (r8 == 0) goto L_0x0028
            r8.moveToFirst()     // Catch:{ Exception -> 0x0021 }
            int r9 = r8.getColumnIndex(r0)     // Catch:{ Exception -> 0x0021 }
            java.lang.String r1 = r8.getString(r9)     // Catch:{ Exception -> 0x0021 }
            goto L_0x0028
        L_0x0021:
            r9 = move-exception
            goto L_0x0025
        L_0x0023:
            r9 = move-exception
            r8 = r1
        L_0x0025:
            r9.printStackTrace()
        L_0x0028:
            if (r8 == 0) goto L_0x0032
            r8.close()     // Catch:{ Exception -> 0x002e }
            goto L_0x0032
        L_0x002e:
            r8 = move-exception
            r8.printStackTrace()
        L_0x0032:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cm.h(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.contains("/") ? str.substring(str.lastIndexOf("/") + 1) : str;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public static void j(AppCompatActivity appCompatActivity, Class cls, int i, int i2, long j) {
        if (appCompatActivity != null) {
            if (Build.VERSION.SDK_INT < 21) {
                t(appCompatActivity, cls);
                return;
            }
            Fragment c = appCompatActivity.getSupportFragmentManager().c(cls.getName());
            if (c == null) {
                c = null;
            }
            if (c == null) {
                t(appCompatActivity, cls);
                return;
            }
            View V = c.V();
            if (V == null || !V.isAttachedToWindow()) {
                em.h("AnimationUtils", "failed, view is null or not AttachedToWindow");
                t(appCompatActivity, c.getClass());
                return;
            }
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(V, i, i2, (float) Math.max(V.getWidth(), V.getHeight()), 0.0f);
            createCircularReveal.setDuration(j);
            createCircularReveal.addListener(new b(V, appCompatActivity, cls));
            createCircularReveal.start();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String k(android.content.Context r8, android.net.Uri r9) {
        /*
        // Method dump skipped, instructions count: 308
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cm.k(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static boolean l(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static boolean m(String str) {
        return str != null && str.startsWith("content://");
    }

    public static boolean n(String str) {
        if (str == null || str.isEmpty() || m(str)) {
            return false;
        }
        return str.startsWith("file://");
    }

    public static boolean o(Uri uri) {
        String uri2 = uri.toString();
        return uri2.startsWith("content://com.google.android.apps.photos.contentprovider") && Uri.decode(uri2).lastIndexOf("/content://media") < 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x003f A[SYNTHETIC, Splitter:B:22:0x003f] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005d A[SYNTHETIC, Splitter:B:31:0x005d] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x007b A[SYNTHETIC, Splitter:B:40:0x007b] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0099 A[SYNTHETIC, Splitter:B:49:0x0099] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00ab A[SYNTHETIC, Splitter:B:55:0x00ab] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap p(android.content.Context r2, android.net.Uri r3, android.graphics.BitmapFactory.Options r4) {
        /*
        // Method dump skipped, instructions count: 187
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cm.p(android.content.Context, android.net.Uri, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0064 A[LOOP:1: B:21:0x003d->B:34:0x0064, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x006a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x006b A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0052 A[EDGE_INSN: B:48:0x0052->B:30:0x0052 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0066 A[EDGE_INSN: B:49:0x0066->B:35:0x0066 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap q(android.content.Context r7, int r8, int r9, android.net.Uri r10) {
        /*
        // Method dump skipped, instructions count: 120
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cm.q(android.content.Context, int, int, android.net.Uri):android.graphics.Bitmap");
    }

    public static void r(Context context, String str) {
        try {
            MediaScannerConnection.scanFile(context, new String[]{str}, null, new gm(context, str));
        } catch (Exception e) {
            e.printStackTrace();
            em.h("MediaLibraryUtils", "scannerFile occur exception: use send broadcast scan file");
            s(context, str);
        }
    }

    public static void s(Context context, String str) {
        try {
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + str)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void t(AppCompatActivity appCompatActivity, Class cls) {
        if (appCompatActivity != null && cls != null) {
            g supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            if (supportFragmentManager.c(cls.getName()) != null) {
                try {
                    supportFragmentManager.g();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void u(View view, int i, int i2, long j) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setVisibility(0);
            view.getViewTreeObserver().addOnGlobalLayoutListener(new a(view, i, i2, j));
        }
    }
}

package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class f {
    private static final Map<String, o<e>> a = new HashMap();
    public static final /* synthetic */ int b = 0;

    /* access modifiers changed from: package-private */
    public class a implements i<e> {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.airbnb.lottie.i
        public void a(e eVar) {
            f.a.remove(this.a);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements i<Throwable> {
        final /* synthetic */ String a;

        b(String str) {
            this.a = str;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.airbnb.lottie.i
        public void a(Throwable th) {
            f.a.remove(this.a);
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements Callable<m<e>> {
        final /* synthetic */ Context b;
        final /* synthetic */ String c;
        final /* synthetic */ String d;

        c(Context context, String str, String str2) {
            this.b = context;
            this.c = str;
            this.d = str2;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public m<e> call() {
            return ja.b(this.b, this.c, this.d);
        }
    }

    /* access modifiers changed from: package-private */
    public class d implements Callable<m<e>> {
        final /* synthetic */ Context b;
        final /* synthetic */ String c;
        final /* synthetic */ String d;

        d(Context context, String str, String str2) {
            this.b = context;
            this.c = str;
            this.d = str2;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public m<e> call() {
            return f.e(this.b, this.c, this.d);
        }
    }

    /* access modifiers changed from: package-private */
    public class e implements Callable<m<e>> {
        final /* synthetic */ WeakReference b;
        final /* synthetic */ Context c;
        final /* synthetic */ int d;
        final /* synthetic */ String e;

        e(WeakReference weakReference, Context context, int i, String str) {
            this.b = weakReference;
            this.c = context;
            this.d = i;
            this.e = str;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public m<e> call() {
            Context context = (Context) this.b.get();
            if (context == null) {
                context = this.c;
            }
            return f.k(context, this.d, this.e);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.f$f  reason: collision with other inner class name */
    public class CallableC0028f implements Callable<m<e>> {
        final /* synthetic */ e b;

        CallableC0028f(e eVar) {
            this.b = eVar;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public m<e> call() {
            return new m(this.b);
        }
    }

    private static o<e> b(String str, Callable<m<e>> callable) {
        e a2 = str == null ? null : q8.b().a(str);
        if (a2 != null) {
            return new o<>(new CallableC0028f(a2), false);
        }
        if (str != null) {
            Map<String, o<e>> map = a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        o<e> oVar = new o<>(callable, false);
        if (str != null) {
            oVar.f(new a(str));
            oVar.e(new b(str));
            a.put(str, oVar);
        }
        return oVar;
    }

    public static o<e> c(Context context, String str) {
        String i = ic.i("asset_", str);
        return b(i, new d(context.getApplicationContext(), str, i));
    }

    public static o<e> d(Context context, String str, String str2) {
        return b(null, new d(context.getApplicationContext(), str, null));
    }

    public static m<e> e(Context context, String str, String str2) {
        try {
            if (str.endsWith(".zip")) {
                return n(new ZipInputStream(context.getAssets().open(str)), str2);
            }
            return f(context.getAssets().open(str), str2);
        } catch (IOException e2) {
            return new m<>(e2);
        }
    }

    public static m<e> f(InputStream inputStream, String str) {
        try {
            return g(ub.n0(ik0.c(ik0.h(inputStream))), str, true);
        } finally {
            dc.b(inputStream);
        }
    }

    private static m<e> g(ub ubVar, String str, boolean z) {
        try {
            e a2 = db.a(ubVar);
            if (str != null) {
                q8.b().c(str, a2);
            }
            m<e> mVar = new m<>(a2);
            if (z) {
                dc.b(ubVar);
            }
            return mVar;
        } catch (Exception e2) {
            m<e> mVar2 = new m<>(e2);
            if (z) {
                dc.b(ubVar);
            }
            return mVar2;
        } catch (Throwable th) {
            if (z) {
                dc.b(ubVar);
            }
            throw th;
        }
    }

    public static o<e> h(Context context, int i) {
        String p = p(context, i);
        return b(p, new e(new WeakReference(context), context.getApplicationContext(), i, p));
    }

    public static o<e> i(Context context, int i, String str) {
        return b(null, new e(new WeakReference(context), context.getApplicationContext(), i, null));
    }

    public static m<e> j(Context context, int i) {
        return k(context, i, p(context, i));
    }

    public static m<e> k(Context context, int i, String str) {
        try {
            return f(context.getResources().openRawResource(i), str);
        } catch (Resources.NotFoundException e2) {
            return new m<>(e2);
        }
    }

    public static o<e> l(Context context, String str) {
        String i = ic.i("url_", str);
        return b(i, new c(context, str, i));
    }

    public static o<e> m(Context context, String str, String str2) {
        return b(null, new c(context, str, null));
    }

    public static m<e> n(ZipInputStream zipInputStream, String str) {
        try {
            return o(zipInputStream, str);
        } finally {
            dc.b(zipInputStream);
        }
    }

    private static m<e> o(ZipInputStream zipInputStream, String str) {
        h hVar;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            e eVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    eVar = g(ub.n0(ik0.c(ik0.h(zipInputStream))), null, false).b();
                } else {
                    if (!name.contains(".png")) {
                        if (!name.contains(".webp")) {
                            zipInputStream.closeEntry();
                        }
                    }
                    String[] split = name.split("/");
                    hashMap.put(split[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (eVar == null) {
                return new m<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<h> it = eVar.i().values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        hVar = null;
                        break;
                    }
                    hVar = it.next();
                    if (hVar.b().equals(str2)) {
                        break;
                    }
                }
                if (hVar != null) {
                    hVar.f(dc.f((Bitmap) entry.getValue(), hVar.e(), hVar.c()));
                }
            }
            for (Map.Entry<String, h> entry2 : eVar.i().entrySet()) {
                if (entry2.getValue().a() == null) {
                    StringBuilder q = ic.q("There is no image for ");
                    q.append(entry2.getValue().b());
                    return new m<>(new IllegalStateException(q.toString()));
                }
            }
            if (str != null) {
                q8.b().c(str, eVar);
            }
            return new m<>(eVar);
        } catch (IOException e2) {
            return new m<>(e2);
        }
    }

    private static String p(Context context, int i) {
        StringBuilder q = ic.q("rawRes");
        q.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        q.append(i);
        return q.toString();
    }
}

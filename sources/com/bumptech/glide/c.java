package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.k;
import defpackage.bd;
import defpackage.dd;
import defpackage.eg;
import defpackage.gg;
import defpackage.hg;
import defpackage.ig;
import defpackage.jg;
import defpackage.kg;
import defpackage.lg;
import defpackage.mf;
import defpackage.mg;
import defpackage.nf;
import defpackage.ng;
import defpackage.og;
import defpackage.pf;
import defpackage.pg;
import defpackage.qf;
import defpackage.rf;
import defpackage.wf;
import defpackage.xh;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public class c implements ComponentCallbacks2 {
    private static volatile c j;
    private static volatile boolean k;
    private final qe b;
    private final Cif c;
    private final e d;
    private final g e;
    private final oe f;
    private final jj g;
    private final bj h;
    private final List<i> i = new ArrayList();

    public interface a {
    }

    c(Context context, wd wdVar, Cif ifVar, qe qeVar, oe oeVar, jj jjVar, bj bjVar, int i2, a aVar, Map<Class<?>, j<?, ?>> map, List<bk<Object>> list, boolean z, boolean z2) {
        k kVar;
        k kVar2;
        di diVar;
        this.b = qeVar;
        this.f = oeVar;
        this.c = ifVar;
        this.g = jjVar;
        this.h = bjVar;
        Resources resources = context.getResources();
        g gVar = new g();
        this.e = gVar;
        gVar.n(new dh());
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 27) {
            gVar.n(new ih());
        }
        List<ImageHeaderParser> f2 = gVar.f();
        hi hiVar = new hi(context, f2, qeVar, oeVar);
        k<ParcelFileDescriptor, Bitmap> f3 = vh.f(qeVar);
        fh fhVar = new fh(gVar.f(), resources.getDisplayMetrics(), qeVar, oeVar);
        if (!z2 || i3 < 28) {
            kVar = new zg(fhVar);
            kVar2 = new sh(fhVar, oeVar);
        } else {
            kVar2 = new mh();
            kVar = new ah();
        }
        di diVar2 = new di(context);
        eg.c cVar = new eg.c(resources);
        eg.d dVar = new eg.d(resources);
        eg.b bVar = new eg.b(resources);
        eg.a aVar2 = new eg.a(resources);
        vg vgVar = new vg(oeVar);
        ri riVar = new ri();
        ui uiVar = new ui();
        ContentResolver contentResolver = context.getContentResolver();
        gVar.a(ByteBuffer.class, new of());
        gVar.a(InputStream.class, new fg(oeVar));
        gVar.e("Bitmap", ByteBuffer.class, Bitmap.class, kVar);
        gVar.e("Bitmap", InputStream.class, Bitmap.class, kVar2);
        if (dd.c()) {
            diVar = diVar2;
            gVar.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new oh(fhVar));
        } else {
            diVar = diVar2;
        }
        gVar.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, f3);
        gVar.e("Bitmap", AssetFileDescriptor.class, Bitmap.class, vh.c(qeVar));
        gVar.d(Bitmap.class, Bitmap.class, hg.a.b());
        gVar.e("Bitmap", Bitmap.class, Bitmap.class, new uh());
        gVar.b(Bitmap.class, vgVar);
        gVar.e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new tg(resources, kVar));
        gVar.e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new tg(resources, kVar2));
        gVar.e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new tg(resources, f3));
        gVar.b(BitmapDrawable.class, new ug(qeVar, vgVar));
        gVar.e("Gif", InputStream.class, ji.class, new qi(f2, hiVar, oeVar));
        gVar.e("Gif", ByteBuffer.class, ji.class, hiVar);
        gVar.b(ji.class, new ki());
        gVar.d(mc.class, mc.class, hg.a.b());
        gVar.e("Bitmap", mc.class, Bitmap.class, new oi(qeVar));
        gVar.c(Uri.class, Drawable.class, diVar);
        gVar.c(Uri.class, Bitmap.class, new qh(diVar, qeVar));
        gVar.o(new xh.a());
        gVar.d(File.class, ByteBuffer.class, new pf.b());
        gVar.d(File.class, InputStream.class, new rf.e());
        gVar.c(File.class, File.class, new fi());
        gVar.d(File.class, ParcelFileDescriptor.class, new rf.b());
        gVar.d(File.class, File.class, hg.a.b());
        gVar.o(new bd.a(oeVar));
        if (dd.c()) {
            gVar.o(new dd.a());
        }
        Class cls = Integer.TYPE;
        gVar.d(cls, InputStream.class, cVar);
        gVar.d(cls, ParcelFileDescriptor.class, bVar);
        gVar.d(Integer.class, InputStream.class, cVar);
        gVar.d(Integer.class, ParcelFileDescriptor.class, bVar);
        gVar.d(Integer.class, Uri.class, dVar);
        gVar.d(cls, AssetFileDescriptor.class, aVar2);
        gVar.d(Integer.class, AssetFileDescriptor.class, aVar2);
        gVar.d(cls, Uri.class, dVar);
        gVar.d(String.class, InputStream.class, new qf.c());
        gVar.d(Uri.class, InputStream.class, new qf.c());
        gVar.d(String.class, InputStream.class, new gg.c());
        gVar.d(String.class, ParcelFileDescriptor.class, new gg.b());
        gVar.d(String.class, AssetFileDescriptor.class, new gg.a());
        gVar.d(Uri.class, InputStream.class, new lg.a());
        gVar.d(Uri.class, InputStream.class, new mf.c(context.getAssets()));
        gVar.d(Uri.class, ParcelFileDescriptor.class, new mf.b(context.getAssets()));
        gVar.d(Uri.class, InputStream.class, new mg.a(context));
        gVar.d(Uri.class, InputStream.class, new ng.a(context));
        if (i3 >= 29) {
            gVar.d(Uri.class, InputStream.class, new og.c(context));
            gVar.d(Uri.class, ParcelFileDescriptor.class, new og.b(context));
        }
        gVar.d(Uri.class, InputStream.class, new ig.d(contentResolver));
        gVar.d(Uri.class, ParcelFileDescriptor.class, new ig.b(contentResolver));
        gVar.d(Uri.class, AssetFileDescriptor.class, new ig.a(contentResolver));
        gVar.d(Uri.class, InputStream.class, new jg.a());
        gVar.d(URL.class, InputStream.class, new pg.a());
        gVar.d(Uri.class, File.class, new wf.a(context));
        gVar.d(sf.class, InputStream.class, new kg.a());
        gVar.d(byte[].class, ByteBuffer.class, new nf.a());
        gVar.d(byte[].class, InputStream.class, new nf.d());
        gVar.d(Uri.class, Uri.class, hg.a.b());
        gVar.d(Drawable.class, Drawable.class, hg.a.b());
        gVar.c(Drawable.class, Drawable.class, new ei());
        gVar.p(Bitmap.class, BitmapDrawable.class, new si(resources));
        gVar.p(Bitmap.class, byte[].class, riVar);
        gVar.p(Drawable.class, byte[].class, new ti(qeVar, riVar, uiVar));
        gVar.p(ji.class, byte[].class, uiVar);
        if (i3 >= 23) {
            k<ByteBuffer, Bitmap> d2 = vh.d(qeVar);
            gVar.c(ByteBuffer.class, Bitmap.class, d2);
            gVar.c(ByteBuffer.class, BitmapDrawable.class, new tg(resources, d2));
        }
        this.d = new e(context, oeVar, gVar, new lk(), aVar, map, list, wdVar, z, i2);
    }

    private static void a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        if (!k) {
            k = true;
            d dVar = new d();
            Context applicationContext = context.getApplicationContext();
            List<pj> emptyList = Collections.emptyList();
            if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
                emptyList = new rj(applicationContext).a();
            }
            if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
                Set<Class<?>> d2 = generatedAppGlideModule.d();
                Iterator<pj> it = emptyList.iterator();
                while (it.hasNext()) {
                    pj next = it.next();
                    if (d2.contains(next.getClass())) {
                        if (Log.isLoggable("Glide", 3)) {
                            String str = "AppGlideModule excludes manifest GlideModule: " + next;
                        }
                        it.remove();
                    }
                }
            }
            if (Log.isLoggable("Glide", 3)) {
                for (pj pjVar : emptyList) {
                    StringBuilder q = ic.q("Discovered GlideModule from manifest: ");
                    q.append(pjVar.getClass());
                    q.toString();
                }
            }
            dVar.b(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
            for (pj pjVar2 : emptyList) {
                pjVar2.a(applicationContext, dVar);
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.b(applicationContext, dVar);
            }
            c a2 = dVar.a(applicationContext);
            for (pj pjVar3 : emptyList) {
                try {
                    pjVar3.b(applicationContext, a2, a2.e);
                } catch (AbstractMethodError e2) {
                    StringBuilder q2 = ic.q("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
                    q2.append(pjVar3.getClass().getName());
                    throw new IllegalStateException(q2.toString(), e2);
                }
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.a(applicationContext, a2, a2.e);
            }
            applicationContext.registerComponentCallbacks(a2);
            j = a2;
            k = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    public static c c(Context context) {
        if (j == null) {
            Context applicationContext = context.getApplicationContext();
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(applicationContext.getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
            } catch (InstantiationException e2) {
                n(e2);
                throw null;
            } catch (IllegalAccessException e3) {
                n(e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                n(e4);
                throw null;
            } catch (InvocationTargetException e5) {
                n(e5);
                throw null;
            }
            synchronized (c.class) {
                if (j == null) {
                    a(context, generatedAppGlideModule);
                }
            }
        }
        return j;
    }

    private static jj k(Context context) {
        Objects.requireNonNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(context).g;
    }

    private static void n(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public static i p(Context context) {
        Objects.requireNonNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(context).g.f(context);
    }

    public static i q(View view) {
        return k(view.getContext()).g(view);
    }

    public static i r(Fragment fragment) {
        return k(fragment.C()).h(fragment);
    }

    public static i s(FragmentActivity fragmentActivity) {
        Objects.requireNonNull(fragmentActivity, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(fragmentActivity).g.i(fragmentActivity);
    }

    public void b() {
        hl.a();
        ((el) this.c).a();
        this.b.b();
        this.f.b();
    }

    public oe d() {
        return this.f;
    }

    public qe e() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public bj f() {
        return this.h;
    }

    public Context g() {
        return this.d.getBaseContext();
    }

    /* access modifiers changed from: package-private */
    public e h() {
        return this.d;
    }

    public g i() {
        return this.e;
    }

    public jj j() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public void l(i iVar) {
        synchronized (this.i) {
            if (!this.i.contains(iVar)) {
                this.i.add(iVar);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean m(nk<?> nkVar) {
        synchronized (this.i) {
            for (i iVar : this.i) {
                if (iVar.r(nkVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public void o(i iVar) {
        synchronized (this.i) {
            if (this.i.contains(iVar)) {
                this.i.remove(iVar);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onLowMemory() {
        b();
    }

    public void onTrimMemory(int i2) {
        hl.a();
        for (i iVar : this.i) {
            Objects.requireNonNull(iVar);
        }
        ((hf) this.c).j(i2);
        this.b.a(i2);
        this.f.a(i2);
    }
}

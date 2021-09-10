package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* renamed from: og  reason: default package */
public final class og<DataT> implements zf<Uri, DataT> {
    private final Context a;
    private final zf<File, DataT> b;
    private final zf<Uri, DataT> c;
    private final Class<DataT> d;

    /* renamed from: og$a */
    private static abstract class a<DataT> implements ag<Uri, DataT> {
        private final Context a;
        private final Class<DataT> b;

        a(Context context, Class<DataT> cls) {
            this.a = context;
            this.b = cls;
        }

        @Override // defpackage.ag
        public final void a() {
        }

        @Override // defpackage.ag
        public final zf<Uri, DataT> c(dg dgVar) {
            return new og(this.a, dgVar.c(File.class, this.b), dgVar.c(Uri.class, this.b), this.b);
        }
    }

    /* renamed from: og$b */
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* renamed from: og$c */
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* renamed from: og$d */
    private static final class d<DataT> implements uc<DataT> {
        private static final String[] l = {"_data"};
        private final Context b;
        private final zf<File, DataT> c;
        private final zf<Uri, DataT> d;
        private final Uri e;
        private final int f;
        private final int g;
        private final i h;
        private final Class<DataT> i;
        private volatile boolean j;
        private volatile uc<DataT> k;

        d(Context context, zf<File, DataT> zfVar, zf<Uri, DataT> zfVar2, Uri uri, int i2, int i3, i iVar, Class<DataT> cls) {
            this.b = context.getApplicationContext();
            this.c = zfVar;
            this.d = zfVar2;
            this.e = uri;
            this.f = i2;
            this.g = i3;
            this.h = iVar;
            this.i = cls;
        }

        /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: uc<Data>, uc<DataT> */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x007a  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private defpackage.uc<DataT> c() {
            /*
            // Method dump skipped, instructions count: 167
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.og.d.c():uc");
        }

        @Override // defpackage.uc
        public Class<DataT> a() {
            return this.i;
        }

        @Override // defpackage.uc
        public void b() {
            uc<DataT> ucVar = this.k;
            if (ucVar != null) {
                ucVar.b();
            }
        }

        @Override // defpackage.uc
        public void cancel() {
            this.j = true;
            uc<DataT> ucVar = this.k;
            if (ucVar != null) {
                ucVar.cancel();
            }
        }

        @Override // defpackage.uc
        public com.bumptech.glide.load.a d() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // defpackage.uc
        public void e(f fVar, uc.a<? super DataT> aVar) {
            try {
                uc<DataT> c2 = c();
                if (c2 == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.e));
                    return;
                }
                this.k = c2;
                if (this.j) {
                    cancel();
                } else {
                    c2.e(fVar, aVar);
                }
            } catch (FileNotFoundException e2) {
                aVar.c(e2);
            }
        }
    }

    og(Context context, zf<File, DataT> zfVar, zf<Uri, DataT> zfVar2, Class<DataT> cls) {
        this.a = context.getApplicationContext();
        this.b = zfVar;
        this.c = zfVar2;
        this.d = cls;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && hd.a(uri);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(Uri uri, int i, int i2, i iVar) {
        Uri uri2 = uri;
        return new zf.a(new xk(uri2), new d(this.a, this.b, this.c, uri2, i, i2, iVar, this.d));
    }
}

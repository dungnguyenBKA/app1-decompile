package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: ig  reason: default package */
public class ig<Data> implements zf<Uri, Data> {
    private static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));
    private final c<Data> a;

    /* renamed from: ig$a */
    public static final class a implements ag<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {
        private final ContentResolver a;

        public a(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ig.c
        public uc<AssetFileDescriptor> b(Uri uri) {
            return new rc(this.a, uri);
        }

        @Override // defpackage.ag
        public zf<Uri, AssetFileDescriptor> c(dg dgVar) {
            return new ig(this);
        }
    }

    /* renamed from: ig$b */
    public static class b implements ag<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {
        private final ContentResolver a;

        public b(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ig.c
        public uc<ParcelFileDescriptor> b(Uri uri) {
            return new zc(this.a, uri);
        }

        @Override // defpackage.ag
        public zf<Uri, ParcelFileDescriptor> c(dg dgVar) {
            return new ig(this);
        }
    }

    /* renamed from: ig$c */
    public interface c<Data> {
        uc<Data> b(Uri uri);
    }

    /* renamed from: ig$d */
    public static class d implements ag<Uri, InputStream>, c<InputStream> {
        private final ContentResolver a;

        public d(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ig.c
        public uc<InputStream> b(Uri uri) {
            return new fd(this.a, uri);
        }

        @Override // defpackage.ag
        public zf<Uri, InputStream> c(dg dgVar) {
            return new ig(this);
        }
    }

    public ig(c<Data> cVar) {
        this.a = cVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        return b.contains(uri.getScheme());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(Uri uri, int i, int i2, i iVar) {
        Uri uri2 = uri;
        return new zf.a(new xk(uri2), this.a.b(uri2));
    }
}

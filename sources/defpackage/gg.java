package defpackage;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.File;
import java.io.InputStream;

/* renamed from: gg  reason: default package */
public class gg<Data> implements zf<String, Data> {
    private final zf<Uri, Data> a;

    /* renamed from: gg$a */
    public static final class a implements ag<String, AssetFileDescriptor> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<String, AssetFileDescriptor> c(dg dgVar) {
            return new gg(dgVar.c(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: gg$b */
    public static class b implements ag<String, ParcelFileDescriptor> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<String, ParcelFileDescriptor> c(dg dgVar) {
            return new gg(dgVar.c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: gg$c */
    public static class c implements ag<String, InputStream> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<String, InputStream> c(dg dgVar) {
            return new gg(dgVar.c(Uri.class, InputStream.class));
        }
    }

    public gg(zf<Uri, Data> zfVar) {
        this.a = zfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(String str) {
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(String str, int i, int i2, i iVar) {
        Uri uri;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uri = null;
        } else if (str2.charAt(0) == '/') {
            uri = Uri.fromFile(new File(str2));
        } else {
            Uri parse = Uri.parse(str2);
            uri = parse.getScheme() == null ? Uri.fromFile(new File(str2)) : parse;
        }
        if (uri == null || !this.a.a(uri)) {
            return null;
        }
        return this.a.b(uri, i, i2, iVar);
    }
}

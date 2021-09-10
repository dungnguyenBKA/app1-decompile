package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.io.FileNotFoundException;

/* renamed from: wf  reason: default package */
public final class wf implements zf<Uri, File> {
    private final Context a;

    /* renamed from: wf$a */
    public static final class a implements ag<Uri, File> {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Uri, File> c(dg dgVar) {
            return new wf(this.a);
        }
    }

    /* renamed from: wf$b */
    private static class b implements uc<File> {
        private static final String[] d = {"_data"};
        private final Context b;
        private final Uri c;

        b(Context context, Uri uri) {
            this.b = context;
            this.c = uri;
        }

        @Override // defpackage.uc
        public Class<File> a() {
            return File.class;
        }

        @Override // defpackage.uc
        public void b() {
        }

        @Override // defpackage.uc
        public void cancel() {
        }

        @Override // defpackage.uc
        public com.bumptech.glide.load.a d() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // defpackage.uc
        public void e(f fVar, uc.a<? super File> aVar) {
            Cursor query = this.b.getContentResolver().query(this.c, d, null, null, null);
            String str = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(str)) {
                StringBuilder q = ic.q("Failed to find file path for: ");
                q.append(this.c);
                aVar.c(new FileNotFoundException(q.toString()));
                return;
            }
            aVar.f(new File(str));
        }
    }

    public wf(Context context) {
        this.a = context;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        return hd.a(uri);
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<File> b(Uri uri, int i, int i2, i iVar) {
        Uri uri2 = uri;
        return new zf.a(new xk(uri2), new b(this.a, uri2));
    }
}

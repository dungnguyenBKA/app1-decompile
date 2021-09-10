package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.bumptech.glide.c;
import com.bumptech.glide.f;
import defpackage.uc;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: id  reason: default package */
public class id implements uc<InputStream> {
    private final Uri b;
    private final kd c;
    private InputStream d;

    /* access modifiers changed from: package-private */
    /* renamed from: id$a */
    public static class a implements jd {
        private static final String[] b = {"_data"};
        private final ContentResolver a;

        a(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // defpackage.jd
        public Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: id$b */
    public static class b implements jd {
        private static final String[] b = {"_data"};
        private final ContentResolver a;

        b(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // defpackage.jd
        public Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    id(Uri uri, kd kdVar) {
        this.b = uri;
        this.c = kdVar;
    }

    private static id c(Context context, Uri uri, jd jdVar) {
        return new id(uri, new kd(c.c(context).i().f(), jdVar, c.c(context).d(), context.getContentResolver()));
    }

    public static id f(Context context, Uri uri) {
        return c(context, uri, new a(context.getContentResolver()));
    }

    public static id g(Context context, Uri uri) {
        return c(context, uri, new b(context.getContentResolver()));
    }

    @Override // defpackage.uc
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // defpackage.uc
    public void b() {
        InputStream inputStream = this.d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // defpackage.uc
    public void cancel() {
    }

    @Override // defpackage.uc
    public com.bumptech.glide.load.a d() {
        return com.bumptech.glide.load.a.LOCAL;
    }

    @Override // defpackage.uc
    public void e(f fVar, uc.a<? super InputStream> aVar) {
        try {
            InputStream b2 = this.c.b(this.b);
            int a2 = b2 != null ? this.c.a(this.b) : -1;
            if (a2 != -1) {
                b2 = new xc(b2, a2);
            }
            this.d = b2;
            aVar.f(b2);
        } catch (FileNotFoundException e) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            aVar.c(e);
        }
    }
}

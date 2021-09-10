package defpackage;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.a;
import defpackage.uc;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: cd  reason: default package */
public abstract class cd<T> implements uc<T> {
    private final Uri b;
    private final ContentResolver c;
    private T d;

    public cd(ContentResolver contentResolver, Uri uri) {
        this.c = contentResolver;
        this.b = uri;
    }

    @Override // defpackage.uc
    public void b() {
        T t = this.d;
        if (t != null) {
            try {
                c(t);
            } catch (IOException unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void c(T t);

    @Override // defpackage.uc
    public void cancel() {
    }

    @Override // defpackage.uc
    public a d() {
        return a.LOCAL;
    }

    @Override // defpackage.uc
    public final void e(f fVar, uc.a<? super T> aVar) {
        try {
            T f = f(this.b, this.c);
            this.d = f;
            aVar.f(f);
        } catch (FileNotFoundException e) {
            Log.isLoggable("LocalUriFetcher", 3);
            aVar.c(e);
        }
    }

    /* access modifiers changed from: protected */
    public abstract T f(Uri uri, ContentResolver contentResolver);
}

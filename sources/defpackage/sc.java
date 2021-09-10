package defpackage;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.a;
import defpackage.uc;
import java.io.IOException;

/* renamed from: sc  reason: default package */
public abstract class sc<T> implements uc<T> {
    private final String b;
    private final AssetManager c;
    private T d;

    public sc(AssetManager assetManager, String str) {
        this.c = assetManager;
        this.b = str;
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
    public void e(f fVar, uc.a<? super T> aVar) {
        try {
            T f = f(this.c, this.b);
            this.d = f;
            aVar.f(f);
        } catch (IOException e) {
            Log.isLoggable("AssetPathFetcher", 3);
            aVar.c(e);
        }
    }

    /* access modifiers changed from: protected */
    public abstract T f(AssetManager assetManager, String str);
}

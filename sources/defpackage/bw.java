package defpackage;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.g;
import java.util.Objects;

/* renamed from: bw  reason: default package */
public abstract class bw<T> {
    private final String zza;
    private T zzb;

    /* renamed from: bw$a */
    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    protected bw(String str) {
        this.zza = str;
    }

    /* access modifiers changed from: protected */
    public abstract T getRemoteCreator(IBinder iBinder);

    /* access modifiers changed from: protected */
    public final T getRemoteCreatorInstance(Context context) {
        if (this.zzb == null) {
            Objects.requireNonNull(context, "null reference");
            Context remoteContext = g.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.zzb = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zza).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new a("Could not load creator class.", e);
                } catch (InstantiationException e2) {
                    throw new a("Could not instantiate creator.", e2);
                } catch (IllegalAccessException e3) {
                    throw new a("Could not access creator.", e3);
                }
            } else {
                throw new a("Could not get remote context.");
            }
        }
        return this.zzb;
    }
}

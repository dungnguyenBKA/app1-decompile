package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zzejb extends WeakReference<Throwable> {
    private final int zzilf;

    public zzejb(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zzilf = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzejb.class) {
            if (this == obj) {
                return true;
            }
            zzejb zzejb = (zzejb) obj;
            return this.zzilf == zzejb.zzilf && get() == zzejb.get();
        }
    }

    public final int hashCode() {
        return this.zzilf;
    }
}

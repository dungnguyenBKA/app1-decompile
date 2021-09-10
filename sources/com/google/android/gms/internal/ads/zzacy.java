package com.google.android.gms.internal.ads;

public final class zzacy<T> extends zzacx<T> {
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    protected zzacy(String str, Object obj, int i) {
        super(str, obj, i);
    }

    public static zzacx<Boolean> zzg(String str, boolean z) {
        return new zzacy(str, Boolean.TRUE, zzacz.zzdci);
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final T get() {
        if (zzadw.zzdfe.get()) {
            return (T) super.get();
        }
        throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
    }
}

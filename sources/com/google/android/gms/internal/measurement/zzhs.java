package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzho;
import com.google.android.gms.internal.measurement.zzhs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class zzhs<MessageType extends zzhs<MessageType, BuilderType>, BuilderType extends zzho<MessageType, BuilderType>> extends zzgb<MessageType, BuilderType> {
    private static final Map<Object, zzhs<?, ?>> zza = new ConcurrentHashMap();
    protected zzjx zzc = zzjx.zza();
    protected int zzd = -1;

    static Object zzbA(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    protected static zzhx zzbB() {
        return zzht.zzd();
    }

    protected static zzhy zzbC() {
        return zzim.zzf();
    }

    protected static zzhy zzbD(zzhy zzhy) {
        int size = zzhy.size();
        return zzhy.zzd(size == 0 ? 10 : size + size);
    }

    protected static <E> zzhz<E> zzbE() {
        return zzjg.zzd();
    }

    protected static <E> zzhz<E> zzbF(zzhz<E> zzhz) {
        int size = zzhz.size();
        return zzhz.zze(size == 0 ? 10 : size + size);
    }

    static <T extends zzhs> T zzbx(Class<T> cls) {
        Map<Object, zzhs<?, ?>> map = zza;
        zzhs<?, ?> zzhs = map.get(cls);
        if (zzhs == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhs = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzhs == null) {
            zzhs = (zzhs) ((zzhs) zzkh.zzc(cls)).zzl(6, null, null);
            if (zzhs != null) {
                map.put(cls, zzhs);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzhs;
    }

    protected static <T extends zzhs> void zzby(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    protected static Object zzbz(zzix zzix, String str, Object[] objArr) {
        return new zzjh(zzix, str, objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzjf.zza().zzb(getClass()).zzb(this, (zzhs) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzc2 = zzjf.zza().zzb(getClass()).zzc(this);
        this.zzb = zzc2;
        return zzc2;
    }

    public final String toString() {
        return zziz.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final /* bridge */ /* synthetic */ zziw zzbG() {
        zzho zzho = (zzho) zzl(5, null, null);
        zzho.zzaB(this);
        return zzho;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final /* bridge */ /* synthetic */ zziw zzbH() {
        return (zzho) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final /* bridge */ /* synthetic */ zzix zzbK() {
        return (zzhs) zzl(6, null, null);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgb
    public final int zzbq() {
        return this.zzd;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgb
    public final void zzbr(int i) {
        this.zzd = i;
    }

    /* access modifiers changed from: protected */
    public final <MessageType extends zzhs<MessageType, BuilderType>, BuilderType extends zzho<MessageType, BuilderType>> BuilderType zzbt() {
        return (BuilderType) ((zzho) zzl(5, null, null));
    }

    public final BuilderType zzbu() {
        BuilderType buildertype = (BuilderType) ((zzho) zzl(5, null, null));
        buildertype.zzaB(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final void zzbv(zzgz zzgz) {
        zzjf.zza().zzb(getClass()).zzm(this, zzha.zza(zzgz));
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final int zzbw() {
        int i = this.zzd;
        if (i != -1) {
            return i;
        }
        int zze = zzjf.zza().zzb(getClass()).zze(this);
        this.zzd = zze;
        return zze;
    }

    /* access modifiers changed from: protected */
    public abstract Object zzl(int i, Object obj, Object obj2);
}

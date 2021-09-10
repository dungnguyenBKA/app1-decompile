package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzut;
import com.google.android.gms.internal.gtm.zzuz;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class zzuz<MessageType extends zzuz<MessageType, BuilderType>, BuilderType extends zzut<MessageType, BuilderType>> extends zzsh<MessageType, BuilderType> {
    private static final Map<Object, zzuz<?, ?>> zza = new ConcurrentHashMap();
    protected zzxp zzc = zzxp.zzc();
    protected int zzd = -1;

    public static <ContainingType extends zzwk, Type> zzux<ContainingType, Type> zzaa(ContainingType containingtype, Type type, zzwk zzwk, zzvc zzvc, int i, zzye zzye, Class cls) {
        return new zzux<>(containingtype, type, zzwk, new zzuw(zzvc, i, zzye, false, false), cls);
    }

    static <T extends zzuz> T zzab(Class<T> cls) {
        Map<Object, zzuz<?, ?>> map = zza;
        zzuz<?, ?> zzuz = map.get(cls);
        if (zzuz == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzuz = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzuz == null) {
            zzuz = (zzuz) ((zzuz) zzxy.zze(cls)).zzb(6, null, null);
            if (zzuz != null) {
                map.put(cls, zzuz);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzuz;
    }

    protected static <T extends zzuz<T, ?>> T zzac(T t, InputStream inputStream, zzuj zzuj) {
        zzth zzth = new zzth(inputStream, 4096, null);
        T t2 = (T) ((zzuz) t.zzb(4, null, null));
        try {
            zzwx zzb = zzwt.zza().zzb(t2.getClass());
            zzb.zzh(t2, zztk.zzp(zzth), zzuj);
            zzb.zzf(t2);
            zzc(t2);
            return t2;
        } catch (zzvk e) {
            e = e;
            if (e.zzl()) {
                e = new zzvk(e);
            }
            e.zzh(t2);
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzvk) {
                throw ((zzvk) e2.getCause());
            }
            zzvk zzvk = new zzvk(e2);
            zzvk.zzh(t2);
            throw zzvk;
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof zzvk) {
                throw ((zzvk) e3.getCause());
            }
            throw e3;
        }
    }

    protected static <T extends zzuz<T, ?>> T zzad(T t, byte[] bArr, zzuj zzuj) {
        T t2 = (T) zzae(t, bArr, 0, bArr.length, zzuj);
        zzc(t2);
        return t2;
    }

    static <T extends zzuz<T, ?>> T zzae(T t, byte[] bArr, int i, int i2, zzuj zzuj) {
        T t2 = (T) ((zzuz) t.zzb(4, null, null));
        try {
            zzwx zzb = zzwt.zza().zzb(t2.getClass());
            zzb.zzi(t2, bArr, 0, i2, new zzsl(zzuj));
            zzb.zzf(t2);
            if (t2.zzb == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (zzvk e) {
            e = e;
            if (e.zzl()) {
                e = new zzvk(e);
            }
            e.zzh(t2);
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzvk) {
                throw ((zzvk) e2.getCause());
            }
            zzvk zzvk = new zzvk(e2);
            zzvk.zzh(t2);
            throw zzvk;
        } catch (IndexOutOfBoundsException unused) {
            zzvk zzj = zzvk.zzj();
            zzj.zzh(t2);
            throw zzj;
        }
    }

    protected static zzve zzaf() {
        return zzva.zzf();
    }

    protected static <E> zzvh<E> zzag() {
        return zzwu.zze();
    }

    protected static <E> zzvh<E> zzah(zzvh<E> zzvh) {
        int size = zzvh.size();
        return zzvh.zzd(size == 0 ? 10 : size + size);
    }

    static Object zzai(Method method, Object obj, Object... objArr) {
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

    protected static Object zzaj(zzwk zzwk, String str, Object[] objArr) {
        return new zzwv(zzwk, str, objArr);
    }

    protected static <T extends zzuz> void zzak(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    private static <T extends zzuz<T, ?>> T zzc(T t) {
        if (t == null || t.zzas()) {
            return t;
        }
        zzvk zzvk = new zzvk(new zzxn(t).getMessage());
        zzvk.zzh(t);
        throw zzvk;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzwt.zza().zzb(getClass()).zzj(this, (zzuz) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzb = zzwt.zza().zzb(getClass()).zzb(this);
        this.zzb = zzb;
        return zzb;
    }

    public final String toString() {
        return zzwm.zza(this, super.toString());
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzsh
    public final int zzQ() {
        return this.zzd;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzsh
    public final void zzT(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.gtm.zzwk
    public final int zzX() {
        int i = this.zzd;
        if (i != -1) {
            return i;
        }
        int zza2 = zzwt.zza().zzb(getClass()).zza(this);
        this.zzd = zza2;
        return zza2;
    }

    /* access modifiers changed from: protected */
    public final <MessageType extends zzuz<MessageType, BuilderType>, BuilderType extends zzut<MessageType, BuilderType>> BuilderType zzY() {
        return (BuilderType) ((zzut) zzb(5, null, null));
    }

    public final BuilderType zzZ() {
        BuilderType buildertype = (BuilderType) ((zzut) zzb(5, null, null));
        buildertype.zzz(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.gtm.zzwk
    public final /* bridge */ /* synthetic */ zzwj zzao() {
        return (zzut) zzb(5, null, null);
    }

    @Override // com.google.android.gms.internal.gtm.zzwk
    public final /* bridge */ /* synthetic */ zzwj zzap() {
        zzut zzut = (zzut) zzb(5, null, null);
        zzut.zzz(this);
        return zzut;
    }

    @Override // com.google.android.gms.internal.gtm.zzwk
    public final void zzaq(zzto zzto) {
        zzwt.zza().zzb(getClass()).zzn(this, zztp.zza(zzto));
    }

    @Override // com.google.android.gms.internal.gtm.zzwl
    public final /* bridge */ /* synthetic */ zzwk zzar() {
        return (zzuz) zzb(6, null, null);
    }

    @Override // com.google.android.gms.internal.gtm.zzwl
    public final boolean zzas() {
        byte byteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzwt.zza().zzb(getClass()).zzk(this);
        zzb(2, true != zzk ? null : this, null);
        return zzk;
    }

    /* access modifiers changed from: protected */
    public abstract Object zzb(int i, Object obj, Object obj2);
}

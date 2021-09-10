package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzelb.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class zzelb<MessageType extends zzelb<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzejh<MessageType, BuilderType> {
    private static Map<Object, zzelb<?, ?>> zziqm = new ConcurrentHashMap();
    protected zzeoe zziqk = zzeoe.zzbkz();
    private int zziql = -1;

    protected static class zza<T extends zzelb<T, ?>> extends zzeji<T> {
        private final T zziqo;

        public zza(T t) {
            this.zziqo = t;
        }
    }

    static final class zzc implements zzekw<zzc> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final zzemn zza(zzemn zzemn, zzemo zzemo) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final zzeos zzbid() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final zzeov zzbie() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final boolean zzbif() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final boolean zzbig() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final int zzv() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzekw
        public final zzemt zza(zzemt zzemt, zzemt zzemt2) {
            throw new NoSuchMethodError();
        }
    }

    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzelb<MessageType, BuilderType> implements zzemq {
        protected zzeku<zzc> zziqr = zzeku.zzbib();

        /* access modifiers changed from: package-private */
        public final zzeku<zzc> zzbix() {
            if (this.zziqr.isImmutable()) {
                this.zziqr = (zzeku) this.zziqr.clone();
            }
            return this.zziqr;
        }
    }

    /* JADX INFO: Failed to restore enum class, 'enum' modifier removed */
    public static final class zze {
        public static final int zziqs = 1;
        public static final int zziqt = 2;
        public static final int zziqu = 3;
        public static final int zziqv = 4;
        public static final int zziqw = 5;
        public static final int zziqx = 6;
        public static final int zziqy = 7;
        private static final /* synthetic */ int[] zziqz = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zzbiy() {
            return (int[]) zziqz.clone();
        }
    }

    public static class zzf<ContainingType extends zzemo, Type> extends zzekp<ContainingType, Type> {
    }

    protected static <T extends zzelb<?, ?>> void zza(Class<T> cls, T t) {
        zziqm.put(cls, t);
    }

    protected static zzelh zzbil() {
        return zzele.zzbiz();
    }

    protected static zzelm zzbim() {
        return zzemc.zzbjr();
    }

    protected static <E> zzell<E> zzbin() {
        return zzenb.zzbke();
    }

    static <T extends zzelb<?, ?>> T zzd(Class<T> cls) {
        zzelb<?, ?> zzelb = zziqm.get(cls);
        if (zzelb == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzelb = (T) zziqm.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzelb == null) {
            zzelb = (T) ((zzelb) ((zzelb) zzeoh.zzj(cls)).zza(zze.zziqx, (Object) null, (Object) null));
            if (zzelb != null) {
                zziqm.put(cls, zzelb);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) zzelb;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzenc.zzbkf().zzax(this).equals(this, (zzelb) obj);
        }
        return false;
    }

    public int hashCode() {
        int i = this.zzilm;
        if (i != 0) {
            return i;
        }
        int hashCode = zzenc.zzbkf().zzax(this).hashCode(this);
        this.zzilm = hashCode;
        return hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzemq
    public final boolean isInitialized() {
        return zza((zzelb) this, true);
    }

    public String toString() {
        return zzemp.zza(this, super.toString());
    }

    /* access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzemo
    public final void zzb(zzekl zzekl) {
        zzenc.zzbkf().zzax(this).zza(this, zzekn.zza(zzekl));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejh
    public final int zzbga() {
        return this.zziql;
    }

    /* access modifiers changed from: protected */
    public final <MessageType extends zzelb<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzbii() {
        return (BuilderType) ((zzb) zza(zze.zziqw, (Object) null, (Object) null));
    }

    public final BuilderType zzbij() {
        BuilderType buildertype = (BuilderType) ((zzb) zza(zze.zziqw, (Object) null, (Object) null));
        buildertype.zza(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzemo
    public final int zzbik() {
        if (this.zziql == -1) {
            this.zziql = zzenc.zzbkf().zzax(this).zzau(this);
        }
        return this.zziql;
    }

    @Override // com.google.android.gms.internal.ads.zzemo
    public final /* synthetic */ zzemn zzbio() {
        zzb zzb2 = (zzb) zza(zze.zziqw, (Object) null, (Object) null);
        zzb2.zza(this);
        return zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzemo
    public final /* synthetic */ zzemn zzbip() {
        return (zzb) zza(zze.zziqw, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzemq
    public final /* synthetic */ zzemo zzbiq() {
        return (zzelb) zza(zze.zziqx, (Object) null, (Object) null);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejh
    public final void zzfv(int i) {
        this.zziql = i;
    }

    protected static Object zza(zzemo zzemo, String str, Object[] objArr) {
        return new zzene(zzemo, str, objArr);
    }

    public static abstract class zzb<MessageType extends zzelb<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzejg<MessageType, BuilderType> {
        private final MessageType zziqo;
        protected MessageType zziqp;
        protected boolean zziqq = false;

        protected zzb(MessageType messagetype) {
            this.zziqo = messagetype;
            this.zziqp = (MessageType) ((zzelb) messagetype.zza(zze.zziqv, null, null));
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzenc.zzbkf().zzax(messagetype).zzg(messagetype, messagetype2);
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: com.google.android.gms.internal.ads.zzelb$zzb */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzejg, java.lang.Object
        public /* synthetic */ Object clone() {
            zzb zzb = (zzb) this.zziqo.zza(zze.zziqw, null, null);
            zzb.zza((zzelb) zzbiv());
            return zzb;
        }

        @Override // com.google.android.gms.internal.ads.zzemq
        public final boolean isInitialized() {
            return zzelb.zza((zzelb) this.zziqp, false);
        }

        /* renamed from: zzb */
        public final BuilderType zza(MessageType messagetype) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            zza(this.zziqp, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.zzejg
        public final /* synthetic */ zzejg zzbfy() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.ads.zzemq
        public final /* synthetic */ zzemo zzbiq() {
            return this.zziqo;
        }

        /* access modifiers changed from: protected */
        public void zzbis() {
            MessageType messagetype = (MessageType) ((zzelb) this.zziqp.zza(zze.zziqv, null, null));
            zza(messagetype, this.zziqp);
            this.zziqp = messagetype;
        }

        /* renamed from: zzbit */
        public MessageType zzbiv() {
            if (this.zziqq) {
                return this.zziqp;
            }
            MessageType messagetype = this.zziqp;
            zzenc.zzbkf().zzax(messagetype).zzak(messagetype);
            this.zziqq = true;
            return this.zziqp;
        }

        /* renamed from: zzbiu */
        public final MessageType zzbiw() {
            MessageType messagetype = (MessageType) ((zzelb) zzbiv());
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzeoc(messagetype);
        }

        @Override // com.google.android.gms.internal.ads.zzejg
        public final /* synthetic */ zzejg zza(byte[] bArr, int i, int i2, zzeko zzeko) {
            return zzb(bArr, 0, i2, zzeko);
        }

        private final BuilderType zzb(byte[] bArr, int i, int i2, zzeko zzeko) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            try {
                zzenc.zzbkf().zzax(this.zziqp).zza(this.zziqp, bArr, 0, i2, new zzejm(zzeko));
                return this;
            } catch (zzelo e) {
                throw e;
            } catch (IndexOutOfBoundsException unused) {
                throw zzelo.zzbja();
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            }
        }

        /* access modifiers changed from: private */
        /* renamed from: zzb */
        public final BuilderType zza(zzekc zzekc, zzeko zzeko) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            try {
                zzenc.zzbkf().zzax(this.zziqp).zza(this.zziqp, zzekj.zza(zzekc), zzeko);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }
    }

    static Object zza(Method method, Object obj, Object... objArr) {
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

    private static <T extends zzelb<T, ?>> T zzb(T t, zzejr zzejr, zzeko zzeko) {
        try {
            zzekc zzbgk = zzejr.zzbgk();
            T t2 = (T) zza(t, zzbgk, zzeko);
            try {
                zzbgk.zzgd(0);
                return t2;
            } catch (zzelo e) {
                throw e.zzl(t2);
            }
        } catch (zzelo e2) {
            throw e2;
        }
    }

    protected static final <T extends zzelb<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zziqs, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzaw = zzenc.zzbkf().zzax(t).zzaw(t);
        if (z) {
            t.zza(zze.zziqt, zzaw ? t : null, null);
        }
        return zzaw;
    }

    protected static zzelh zza(zzelh zzelh) {
        int size = zzelh.size();
        return zzelh.zzhg(size == 0 ? 10 : size << 1);
    }

    protected static <E> zzell<E> zza(zzell<E> zzell) {
        int size = zzell.size();
        return zzell.zzfy(size == 0 ? 10 : size << 1);
    }

    private static <T extends zzelb<T, ?>> T zza(T t, zzekc zzekc, zzeko zzeko) {
        T t2 = (T) ((zzelb) t.zza(zze.zziqv, null, null));
        try {
            zzenj zzax = zzenc.zzbkf().zzax(t2);
            zzax.zza(t2, zzekj.zza(zzekc), zzeko);
            zzax.zzak(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzelo) {
                throw ((zzelo) e.getCause());
            }
            throw new zzelo(e.getMessage()).zzl(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzelo) {
                throw ((zzelo) e2.getCause());
            }
            throw e2;
        }
    }

    private static <T extends zzelb<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzeko zzeko) {
        T t2 = (T) ((zzelb) t.zza(zze.zziqv, null, null));
        try {
            zzenj zzax = zzenc.zzbkf().zzax(t2);
            zzax.zza(t2, bArr, 0, i2, new zzejm(zzeko));
            zzax.zzak(t2);
            if (t2.zzilm == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzelo) {
                throw ((zzelo) e.getCause());
            }
            throw new zzelo(e.getMessage()).zzl(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzelo.zzbja().zzl(t2);
        }
    }

    private static <T extends zzelb<T, ?>> T zza(T t) {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new zzelo(new zzeoc(t).getMessage()).zzl(t);
    }

    protected static <T extends zzelb<T, ?>> T zza(T t, zzejr zzejr) {
        return (T) zza(zza(zzb(t, zzejr, zzeko.zzbhw())));
    }

    protected static <T extends zzelb<T, ?>> T zza(T t, zzejr zzejr, zzeko zzeko) {
        return (T) zza(zzb(t, zzejr, zzeko));
    }

    protected static <T extends zzelb<T, ?>> T zza(T t, byte[] bArr) {
        return (T) zza(zza(t, bArr, 0, bArr.length, zzeko.zzbhw()));
    }

    protected static <T extends zzelb<T, ?>> T zza(T t, byte[] bArr, zzeko zzeko) {
        return (T) zza(zza(t, bArr, 0, bArr.length, zzeko));
    }
}

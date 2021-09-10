package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegl;
import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class zzebm {
    private static final Logger logger = Logger.getLogger(zzebm.class.getName());
    private static final ConcurrentMap<String, zzb> zzica = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zza> zzicb = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzicc = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzeap<?>> zzicd = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, zzebh<?, ?>> zzice = new ConcurrentHashMap();

    /* access modifiers changed from: private */
    public interface zza {
    }

    /* access modifiers changed from: private */
    public interface zzb {
        <P> zzeaw<P> zzb(Class<P> cls);

        Set<Class<?>> zzbam();

        zzeaw<?> zzbax();

        Class<?> zzbay();

        Class<?> zzbaz();
    }

    private zzebm() {
    }

    private static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private static <KeyProtoT extends zzemo> zzb zza(zzeax<KeyProtoT> zzeax) {
        return new zzebo(zzeax);
    }

    private static <KeyProtoT extends zzemo> zza zzb(zzeax<KeyProtoT> zzeax) {
        return new zzebp(zzeax);
    }

    private static synchronized zzb zzhq(String str) {
        zzb zzb2;
        synchronized (zzebm.class) {
            ConcurrentMap<String, zzb> concurrentMap = zzica;
            if (!concurrentMap.containsKey(str)) {
                String valueOf = String.valueOf(str);
                throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
            }
            zzb2 = concurrentMap.get(str);
        }
        return zzb2;
    }

    @Deprecated
    public static zzeap<?> zzhr(String str) {
        if (str != null) {
            ConcurrentMap<String, zzeap<?>> concurrentMap = zzicd;
            Locale locale = Locale.US;
            zzeap<?> zzeap = concurrentMap.get(str.toLowerCase(locale));
            if (zzeap != null) {
                return zzeap;
            }
            String format = String.format("no catalogue found for %s. ", str);
            if (str.toLowerCase(locale).startsWith("tinkaead")) {
                format = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
                format = String.valueOf(format).concat("Maybe call DeterministicAeadConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
                format = String.valueOf(format).concat("Maybe call StreamingAeadConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
                format = String.valueOf(format).concat("Maybe call HybridConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
                format = String.valueOf(format).concat("Maybe call MacConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
                format = String.valueOf(format).concat("Maybe call SignatureConfig.register().");
            } else if (str.toLowerCase(locale).startsWith("tink")) {
                format = String.valueOf(format).concat("Maybe call TinkConfig.register().");
            }
            throw new GeneralSecurityException(format);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    private static zzeaw<?> zzhs(String str) {
        return zzhq(str).zzbax();
    }

    private static synchronized void zza(String str, Class<?> cls, boolean z) {
        synchronized (zzebm.class) {
            ConcurrentMap<String, zzb> concurrentMap = zzica;
            if (concurrentMap.containsKey(str)) {
                zzb zzb2 = concurrentMap.get(str);
                if (!zzb2.zzbay().equals(cls)) {
                    Logger logger2 = logger;
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(str);
                    logger2.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzb2.zzbay().getName(), cls.getName()));
                } else if (z && !zzicc.get(str).booleanValue()) {
                    String valueOf2 = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                }
            }
        }
    }

    public static synchronized zzemo zzb(zzegg zzegg) {
        zzemo zzn;
        synchronized (zzebm.class) {
            zzeaw<?> zzhs = zzhs(zzegg.zzbdx());
            if (zzicc.get(zzegg.zzbdx()).booleanValue()) {
                zzn = zzhs.zzn(zzegg.zzbdy());
            } else {
                String valueOf = String.valueOf(zzegg.zzbdx());
                throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
            }
        }
        return zzn;
    }

    public static synchronized <P> void zza(zzeaw<P> zzeaw, boolean z) {
        synchronized (zzebm.class) {
            if (zzeaw != null) {
                String keyType = zzeaw.getKeyType();
                zza(keyType, zzeaw.getClass(), z);
                zzica.putIfAbsent(keyType, new zzebl(zzeaw));
                zzicc.put(keyType, Boolean.valueOf(z));
            } else {
                throw new IllegalArgumentException("key manager must be non-null.");
            }
        }
    }

    public static synchronized <KeyProtoT extends zzemo> void zza(zzeax<KeyProtoT> zzeax, boolean z) {
        synchronized (zzebm.class) {
            String keyType = zzeax.getKeyType();
            zza(keyType, zzeax.getClass(), true);
            ConcurrentMap<String, zzb> concurrentMap = zzica;
            if (!concurrentMap.containsKey(keyType)) {
                concurrentMap.put(keyType, zza(zzeax));
                zzicb.put(keyType, zzb(zzeax));
            }
            zzicc.put(keyType, Boolean.TRUE);
        }
    }

    public static synchronized <KeyProtoT extends zzemo, PublicKeyProtoT extends zzemo> void zza(zzebj<KeyProtoT, PublicKeyProtoT> zzebj, zzeax<PublicKeyProtoT> zzeax, boolean z) {
        Class<?> zzbaz;
        synchronized (zzebm.class) {
            String keyType = zzebj.getKeyType();
            String keyType2 = zzeax.getKeyType();
            zza(keyType, zzebj.getClass(), true);
            zza(keyType2, zzeax.getClass(), false);
            if (!keyType.equals(keyType2)) {
                ConcurrentMap<String, zzb> concurrentMap = zzica;
                if (concurrentMap.containsKey(keyType) && (zzbaz = concurrentMap.get(keyType).zzbaz()) != null) {
                    if (!zzbaz.equals(zzeax.getClass())) {
                        Logger logger2 = logger;
                        Level level = Level.WARNING;
                        StringBuilder sb = new StringBuilder(keyType.length() + 96 + String.valueOf(keyType2).length());
                        sb.append("Attempted overwrite of a registered key manager for key type ");
                        sb.append(keyType);
                        sb.append(" with inconsistent public key type ");
                        sb.append(keyType2);
                        logger2.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzebj.getClass().getName(), zzbaz.getName(), zzeax.getClass().getName()));
                    }
                }
                if (!concurrentMap.containsKey(keyType) || concurrentMap.get(keyType).zzbaz() == null) {
                    concurrentMap.put(keyType, new zzebn(zzebj, zzeax));
                    zzicb.put(keyType, zzb(zzebj));
                }
                ConcurrentMap<String, Boolean> concurrentMap2 = zzicc;
                concurrentMap2.put(keyType, Boolean.TRUE);
                if (!concurrentMap.containsKey(keyType2)) {
                    concurrentMap.put(keyType2, zza(zzeax));
                }
                concurrentMap2.put(keyType2, Boolean.FALSE);
            } else {
                throw new GeneralSecurityException("Private and public key type must be different.");
            }
        }
    }

    public static synchronized <B, P> void zza(zzebh<B, P> zzebh) {
        synchronized (zzebm.class) {
            if (zzebh != null) {
                Class<P> zzbai = zzebh.zzbai();
                ConcurrentMap<Class<?>, zzebh<?, ?>> concurrentMap = zzice;
                if (concurrentMap.containsKey(zzbai)) {
                    zzebh<?, ?> zzebh2 = concurrentMap.get(zzbai);
                    if (!zzebh.getClass().equals(zzebh2.getClass())) {
                        Logger logger2 = logger;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(zzbai);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 56);
                        sb.append("Attempted overwrite of a registered SetWrapper for type ");
                        sb.append(valueOf);
                        logger2.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", zzbai.getName(), zzebh2.getClass().getName(), zzebh.getClass().getName()));
                    }
                }
                concurrentMap.put(zzbai, zzebh);
            } else {
                throw new IllegalArgumentException("wrapper must be non-null");
            }
        }
    }

    private static <P> zzeaw<P> zza(String str, Class<P> cls) {
        zzb zzhq = zzhq(str);
        if (cls == null) {
            return (zzeaw<P>) zzhq.zzbax();
        }
        if (zzhq.zzbam().contains(cls)) {
            return zzhq.zzb(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzhq.zzbay());
        Set<Class<?>> zzbam = zzhq.zzbam();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : zzbam) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        throw new GeneralSecurityException(ic.l(ic.p(ic.m(sb2, valueOf.length() + name.length() + 77), "Primitive type ", name, " not supported by key manager of type ", valueOf), ", supported primitives: ", sb2));
    }

    public static synchronized zzegd zza(zzegg zzegg) {
        zzegd zzo;
        synchronized (zzebm.class) {
            zzeaw<?> zzhs = zzhs(zzegg.zzbdx());
            if (zzicc.get(zzegg.zzbdx()).booleanValue()) {
                zzo = zzhs.zzo(zzegg.zzbdy());
            } else {
                String valueOf = String.valueOf(zzegg.zzbdx());
                throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
            }
        }
        return zzo;
    }

    public static <P> P zza(String str, zzemo zzemo, Class<P> cls) {
        return (P) zza(str, (Class) checkNotNull(cls)).zza(zzemo);
    }

    private static <P> P zza(String str, zzejr zzejr, Class<P> cls) {
        return (P) zza(str, cls).zzm(zzejr);
    }

    public static <P> P zza(String str, byte[] bArr, Class<P> cls) {
        return (P) zza(str, zzejr.zzt(bArr), (Class) checkNotNull(cls));
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v2, resolved type: com.google.android.gms.internal.ads.zzebf<P> */
    /* JADX WARN: Multi-variable type inference failed */
    public static <P> zzebf<P> zza(zzebc zzebc, zzeaw<P> zzeaw, Class<P> cls) {
        Class cls2 = (Class) checkNotNull(cls);
        zzebq.zzc(zzebc.zzbaq());
        zzebf<P> zzebf = (zzebf<P>) zzebf.zza(cls2);
        for (zzegl.zzb zzb2 : zzebc.zzbaq().zzbel()) {
            if (zzb2.zzbau() == zzege.ENABLED) {
                zzebi zza2 = zzebf.zza(zza(zzb2.zzbep().zzbdx(), zzb2.zzbep().zzbdy(), cls2), zzb2);
                if (zzb2.zzbeq() == zzebc.zzbaq().zzbek()) {
                    zzebf.zza(zza2);
                }
            }
        }
        return zzebf;
    }

    public static <P> P zza(zzebf<P> zzebf) {
        zzebh<?, ?> zzebh = zzice.get(zzebf.zzbai());
        if (zzebh == null) {
            String name = zzebf.zzbai().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        } else if (zzebh.zzbas().equals(zzebf.zzbai())) {
            return (P) zzebh.zza(zzebf);
        } else {
            String valueOf = String.valueOf(zzebh.zzbas());
            String valueOf2 = String.valueOf(zzebf.zzbai());
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 44);
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf);
            sb.append(", got ");
            sb.append(valueOf2);
            throw new GeneralSecurityException(sb.toString());
        }
    }
}

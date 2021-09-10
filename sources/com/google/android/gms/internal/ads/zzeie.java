package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeid;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

public final class zzeie<T_WRAPPER extends zzeid<T_ENGINE>, T_ENGINE> {
    private static final Logger logger = Logger.getLogger(zzeie.class.getName());
    private static final List<Provider> zzikf;
    public static final zzeie<zzeig, Cipher> zzikg = new zzeie<>(new zzeig());
    public static final zzeie<zzeik, Mac> zzikh = new zzeie<>(new zzeik());
    private static final zzeie<zzeim, Signature> zziki = new zzeie<>(new zzeim());
    private static final zzeie<zzeij, MessageDigest> zzikj = new zzeie<>(new zzeij());
    public static final zzeie<zzeif, KeyAgreement> zzikk = new zzeie<>(new zzeif());
    public static final zzeie<zzeih, KeyPairGenerator> zzikl = new zzeie<>(new zzeih());
    public static final zzeie<zzeii, KeyFactory> zzikm = new zzeie<>(new zzeii());
    private T_WRAPPER zzikn;
    private List<Provider> zziko = zzikf;
    private boolean zzikp = true;

    static {
        if (zzeiw.zzbfw()) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = strArr[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    logger.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            zzikf = arrayList;
        } else {
            zzikf = new ArrayList();
        }
    }

    private zzeie(T_WRAPPER t_wrapper) {
        this.zzikn = t_wrapper;
    }

    public final T_ENGINE zzhw(String str) {
        Exception exc = null;
        for (Provider provider : this.zziko) {
            try {
                return (T_ENGINE) this.zzikn.zza(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (this.zzikp) {
            return (T_ENGINE) this.zzikn.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}

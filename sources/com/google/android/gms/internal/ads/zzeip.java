package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;

public final class zzeip implements zzedv {
    private final ThreadLocal<Mac> zzikq;
    private final String zzikr;
    private final Key zziks;
    private final int zzikt;

    public zzeip(String str, Key key) {
        zzeis zzeis = new zzeis(this);
        this.zzikq = zzeis;
        this.zzikr = str;
        this.zziks = key;
        if (key.getEncoded().length >= 16) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1823053428:
                    if (str.equals("HMACSHA1")) {
                        c = 0;
                        break;
                    }
                    break;
                case 392315118:
                    if (str.equals("HMACSHA256")) {
                        c = 1;
                        break;
                    }
                    break;
                case 392316170:
                    if (str.equals("HMACSHA384")) {
                        c = 2;
                        break;
                    }
                    break;
                case 392317873:
                    if (str.equals("HMACSHA512")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.zzikt = 20;
                    break;
                case 1:
                    this.zzikt = 32;
                    break;
                case 2:
                    this.zzikt = 48;
                    break;
                case 3:
                    this.zzikt = 64;
                    break;
                default:
                    throw new NoSuchAlgorithmException(str.length() != 0 ? "unknown Hmac algorithm: ".concat(str) : new String("unknown Hmac algorithm: "));
            }
            zzeis.get();
            return;
        }
        throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzedv
    public final byte[] zzd(byte[] bArr, int i) {
        if (i <= this.zzikt) {
            this.zzikq.get().update(bArr);
            return Arrays.copyOf(this.zzikq.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}

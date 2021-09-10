package com.google.android.gms.tagmanager;

import android.net.Uri;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
public final class zzea {
    private static zzea zza;
    private volatile String zzb = null;
    private volatile String zzc = null;
    private volatile String zzd = null;
    private volatile int zze = 1;

    zzea() {
    }

    static zzea zza() {
        zzea zzea;
        synchronized (zzea.class) {
            if (zza == null) {
                zza = new zzea();
            }
            zzea = zza;
        }
        return zzea;
    }

    private static final String zzf(String str) {
        return str.split("&")[0].split("=")[1];
    }

    /* access modifiers changed from: package-private */
    public final String zzb() {
        return this.zzc;
    }

    /* access modifiers changed from: package-private */
    public final String zzc() {
        return this.zzb;
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzd(Uri uri) {
        String str;
        try {
            String decode = URLDecoder.decode(uri.toString(), HTTP.UTF_8);
            if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                if (decode.length() != 0) {
                    "Container preview url: ".concat(decode);
                } else {
                    new String("Container preview url: ");
                }
                if (decode.matches(".*?&gtm_debug=x$")) {
                    this.zze = 3;
                } else {
                    this.zze = 2;
                }
                this.zzd = uri.getQuery().replace("&gtm_debug=x", "");
                if (this.zze == 2 || this.zze == 3) {
                    String valueOf = String.valueOf(this.zzd);
                    if (valueOf.length() != 0) {
                        str = "/r?".concat(valueOf);
                    } else {
                        str = new String("/r?");
                    }
                    this.zzc = str;
                }
                this.zzb = zzf(this.zzd);
                return true;
            } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                Log.w("GoogleTagManager", decode.length() != 0 ? "Invalid preview uri: ".concat(decode) : new String("Invalid preview uri: "));
                return false;
            } else if (!zzf(uri.getQuery()).equals(this.zzb)) {
                return false;
            } else {
                String valueOf2 = String.valueOf(this.zzb);
                if (valueOf2.length() != 0) {
                    "Exit preview mode for container: ".concat(valueOf2);
                } else {
                    new String("Exit preview mode for container: ");
                }
                this.zze = 1;
                this.zzc = null;
                return true;
            }
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final int zze() {
        return this.zze;
    }
}

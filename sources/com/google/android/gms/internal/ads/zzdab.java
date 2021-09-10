package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public class zzdab {
    private String zzgzy;

    public static class zza {
        private String zzgzy;

        public final zza zzgr(String str) {
            this.zzgzy = str;
            return this;
        }
    }

    private zzdab(zza zza2) {
        this.zzgzy = zza2.zzgzy;
    }

    public final Set<String> zzasv() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zzgzy.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzasw() {
        return this.zzgzy.toLowerCase(Locale.ROOT);
    }

    public final zzug.zza.EnumC0069zza zzasx() {
        String str = this.zzgzy;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 0;
                    break;
                }
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 2;
                    break;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return zzug.zza.EnumC0069zza.AD_LOADER;
            case 1:
                return zzug.zza.EnumC0069zza.INTERSTITIAL;
            case 2:
                return zzug.zza.EnumC0069zza.REWARD_BASED_VIDEO_AD;
            case 3:
                return zzug.zza.EnumC0069zza.BANNER;
            default:
                return zzug.zza.EnumC0069zza.AD_INITIATER_UNSPECIFIED;
        }
    }
}

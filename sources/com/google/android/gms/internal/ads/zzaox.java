package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;

public final class zzaox {
    public static int zza(AdRequest.ErrorCode errorCode) {
        int i = zzaow.zzdok[errorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    public static MediationAdRequest zza(zzvl zzvl, boolean z) {
        AdRequest.Gender gender;
        HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
        Date date = new Date(zzvl.zzchn);
        int i = zzvl.zzcho;
        if (i == 1) {
            gender = AdRequest.Gender.MALE;
        } else if (i != 2) {
            gender = AdRequest.Gender.UNKNOWN;
        } else {
            gender = AdRequest.Gender.FEMALE;
        }
        return new MediationAdRequest(date, gender, hashSet, z, zzvl.zznb);
    }
}

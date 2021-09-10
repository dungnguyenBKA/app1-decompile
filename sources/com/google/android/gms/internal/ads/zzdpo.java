package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public final class zzdpo implements zzdpl {
    private final Object[] zzhok;

    public zzdpo(zzvl zzvl, String str, int i, String str2, zzvx zzvx) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzvl.zzchn));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(zzp(zzvl.extras));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzvl.extras.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzvl.zzcho));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzvl.zzchp;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzvl.zzchq));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzvl.zzado));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzvl.zzbni));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzvl.zzchr);
        }
        if (hashSet.contains("location")) {
            Location location = zzvl.zznb;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzvl.zzcht);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zzp(zzvl.zzchu));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zzp(zzvl.zzchv));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzvl.zzchw;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzvl.zzchx);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzvl.zzchy);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzvl.zzchz));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzvl.zzadp));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzvl.zzadq);
        }
        if (hashSet.contains("orientation")) {
            if (zzvx != null) {
                arrayList.add(Integer.valueOf(zzvx.orientation));
            } else {
                arrayList.add(null);
            }
        }
        this.zzhok = arrayList.toArray();
    }

    private static String zzp(Bundle bundle) {
        String str;
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            if (obj == null) {
                str = "null";
            } else if (obj instanceof Bundle) {
                str = zzp((Bundle) obj);
            } else {
                str = obj.toString();
            }
            sb.append(str);
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdpo)) {
            return false;
        }
        return Arrays.equals(this.zzhok, ((zzdpo) obj).zzhok);
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final int hashCode() {
        return Arrays.hashCode(this.zzhok);
    }

    public final String toString() {
        int hashCode = hashCode();
        String arrays = Arrays.toString(this.zzhok);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}

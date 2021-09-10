package com.google.android.gms.tagmanager;

import android.util.Log;
import com.google.android.gms.internal.gtm.zzak;
import com.google.android.gms.internal.gtm.zzal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class zzfv {
    private static final String zzd;
    private static final zzak zzh;

    static {
        new Long(0);
        new Double(0.0d);
        zzfu.zzd(0);
        String str = new String("");
        zzd = str;
        new Boolean(false);
        new ArrayList(0);
        new HashMap();
        zzh = zzc(str);
    }

    public static zzak zzc(Object obj) {
        String str;
        String str2;
        long j;
        zzal zzg = zzak.zzg();
        boolean z = true;
        zzg.zzt(1);
        if (obj instanceof zzak) {
            return (zzak) obj;
        }
        boolean z2 = false;
        if (obj instanceof String) {
            zzg.zzt(1);
            zzg.zzs((String) obj);
        } else if (obj instanceof List) {
            zzg.zzt(2);
            List<Object> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            boolean z3 = false;
            for (Object obj2 : list) {
                zzak zzc = zzc(obj2);
                zzak zzak = zzh;
                if (zzc == zzak) {
                    return zzak;
                }
                z3 = z3 || zzc.zzN();
                arrayList.add(zzc);
            }
            zzg.zzj();
            zzg.zzb(arrayList);
            z2 = z3;
        } else if (obj instanceof Map) {
            zzg.zzt(3);
            Set<Map.Entry> entrySet = ((Map) obj).entrySet();
            ArrayList arrayList2 = new ArrayList(entrySet.size());
            ArrayList arrayList3 = new ArrayList(entrySet.size());
            boolean z4 = false;
            for (Map.Entry entry : entrySet) {
                zzak zzc2 = zzc(entry.getKey());
                zzak zzc3 = zzc(entry.getValue());
                zzak zzak2 = zzh;
                if (zzc2 == zzak2 || zzc3 == zzak2) {
                    return zzak2;
                }
                z4 = z4 || zzc2.zzN() || zzc3.zzN();
                arrayList2.add(zzc2);
                arrayList3.add(zzc3);
            }
            zzg.zzk();
            zzg.zzc(arrayList2);
            zzg.zzl();
            zzg.zzd(arrayList3);
            z2 = z4;
        } else if ((obj instanceof Double) || (obj instanceof Float) || ((obj instanceof zzfu) && ((zzfu) obj).zzf())) {
            zzg.zzt(1);
            zzg.zzs(obj.toString());
        } else {
            if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && (!(obj instanceof zzfu) || !((zzfu) obj).zzg())) {
                z = false;
            }
            if (z) {
                zzg.zzt(6);
                if (obj instanceof Number) {
                    j = ((Number) obj).longValue();
                } else {
                    Log.e("GoogleTagManager", "getInt64 received non-Number");
                    j = 0;
                }
                zzg.zzq(j);
            } else if (obj instanceof Boolean) {
                zzg.zzt(8);
                zzg.zzn(((Boolean) obj).booleanValue());
            } else {
                if (obj == null) {
                    str = "null";
                } else {
                    str = obj.getClass().toString();
                }
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    str2 = "Converting to Value from unknown object type: ".concat(valueOf);
                } else {
                    str2 = new String("Converting to Value from unknown object type: ");
                }
                Log.e("GoogleTagManager", str2);
                return zzh;
            }
        }
        zzg.zzo(z2);
        return (zzak) zzg.zzC();
    }

    public static Object zzl(zzak zzak) {
        if (zzak == null) {
            return null;
        }
        switch (zzak.zzO()) {
            case 1:
                return zzak.zzp();
            case 2:
                ArrayList arrayList = new ArrayList(zzak.zza());
                for (zzak zzak2 : zzak.zzr()) {
                    Object zzl = zzl(zzak2);
                    if (zzl == null) {
                        return null;
                    }
                    arrayList.add(zzl);
                }
                return arrayList;
            case 3:
                if (zzak.zzc() != zzak.zzd()) {
                    String valueOf = String.valueOf(zzak.toString());
                    Log.e("GoogleTagManager", valueOf.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf) : new String("Converting an invalid value to object: "));
                    return null;
                }
                HashMap hashMap = new HashMap(zzak.zzd());
                for (int i = 0; i < zzak.zzc(); i++) {
                    Object zzl2 = zzl(zzak.zzk(i));
                    Object zzl3 = zzl(zzak.zzl(i));
                    if (zzl2 == null || zzl3 == null) {
                        return null;
                    }
                    hashMap.put(zzl2, zzl3);
                }
                return hashMap;
            case 4:
                Log.e("GoogleTagManager", "Trying to convert a macro reference to object");
                return null;
            case 5:
                Log.e("GoogleTagManager", "Trying to convert a function id to object");
                return null;
            case 6:
                return Long.valueOf(zzak.zzf());
            case 7:
                StringBuilder sb = new StringBuilder();
                for (zzak zzak3 : zzak.zzs()) {
                    String zzn = zzn(zzl(zzak3));
                    if (zzn == zzd) {
                        return null;
                    }
                    sb.append(zzn);
                }
                return sb.toString();
            default:
                return Boolean.valueOf(zzak.zzM());
        }
    }

    public static String zzn(Object obj) {
        return obj == null ? zzd : obj.toString();
    }
}

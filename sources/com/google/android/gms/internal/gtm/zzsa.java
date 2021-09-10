package com.google.android.gms.internal.gtm;

import android.util.Log;
import com.google.android.gms.tagmanager.zzfv;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class zzsa {
    public static zzak zza(zzak zzak) {
        zzal zzg = zzak.zzg();
        zzg.zzt(1);
        zzg.zzt(zzak.zzO());
        zzg.zzi();
        zzg.zza(zzak.zzq());
        zzg.zzo(zzak.zzN());
        return (zzak) zzg.zzC();
    }

    public static zzrs zzb(zzaa zzaa) {
        zzak[] zzakArr = new zzak[zzaa.zzf()];
        for (int i = 0; i < zzaa.zzf(); i++) {
            zze(i, zzaa, zzakArr, new HashSet(0));
        }
        zzru zzru = new zzru(null);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < zzaa.zze(); i2++) {
            arrayList.add(zzf(zzaa.zzi(i2), zzaa, zzakArr, i2));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < zzaa.zzc(); i3++) {
            arrayList2.add(zzf(zzaa.zzh(i3), zzaa, zzakArr, i3));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < zzaa.zza(); i4++) {
            zzro zzf = zzf(zzaa.zzg(i4), zzaa, zzakArr, i4);
            zzru.zzb(zzf);
            arrayList3.add(zzf);
        }
        for (zzac zzac : zzaa.zzr()) {
            zzry zzry = new zzry(null);
            for (Integer num : zzac.zzh()) {
                zzry.zzg((zzro) arrayList2.get(num.intValue()));
            }
            for (Integer num2 : zzac.zzg()) {
                zzry.zzf((zzro) arrayList2.get(num2.intValue()));
            }
            for (Integer num3 : zzac.zze()) {
                zzry.zzd((zzro) arrayList.get(num3.intValue()));
            }
            for (Integer num4 : zzac.zzf()) {
                zzry.zze(zzaa.zzn(num4.intValue()).zzp());
            }
            for (Integer num5 : zzac.zzk()) {
                zzry.zzj((zzro) arrayList.get(num5.intValue()));
            }
            for (Integer num6 : zzac.zzl()) {
                zzry.zzk(zzaa.zzn(num6.intValue()).zzp());
            }
            for (Integer num7 : zzac.zzc()) {
                zzry.zzb((zzro) arrayList3.get(num7.intValue()));
            }
            for (Integer num8 : zzac.zzd()) {
                zzry.zzc(zzaa.zzn(num8.intValue()).zzp());
            }
            for (Integer num9 : zzac.zzi()) {
                zzry.zzh((zzro) arrayList3.get(num9.intValue()));
            }
            for (Integer num10 : zzac.zzj()) {
                zzry.zzi(zzaa.zzn(num10.intValue()).zzp());
            }
            zzru.zzc(zzry.zza());
        }
        zzru.zze(zzaa.zzo());
        zzru.zzd(zzaa.zzd());
        return zzru.zza();
    }

    public static void zzc(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static zzae zzd(zzak zzak) {
        zzux<zzak, zzae> zzux = zzae.zza;
        if (!zzak.zzW(zzux)) {
            String valueOf = String.valueOf(zzak);
            zzh(ic.l(new StringBuilder(valueOf.length() + 54), "Expected a ServingValue and didn't get one. Value is: ", valueOf));
        }
        return (zzae) zzak.zzV(zzux);
    }

    private static zzak zze(int i, zzaa zzaa, zzak[] zzakArr, Set<Integer> set) {
        zzal zzal;
        Integer valueOf = Integer.valueOf(i);
        if (set.contains(valueOf)) {
            String valueOf2 = String.valueOf(set);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 90);
            sb.append("Value cycle detected.  Current value reference: ");
            sb.append(i);
            sb.append(".  Previous value references: ");
            sb.append(valueOf2);
            sb.append(".");
            zzh(sb.toString());
        }
        zzal zzal2 = (zzal) ((zzak) zzg(zzaa.zzs(), i, "values")).zzZ();
        zzak zzak = zzakArr[i];
        if (zzak != null) {
            return zzak;
        }
        set.add(valueOf);
        int zzu = zzal2.zzu();
        if (zzu != 2) {
            if (zzu == 3) {
                zzal = (zzal) zza((zzak) zzal2.zzC()).zzZ();
                zzae zzd = zzd((zzak) zzal2.zzC());
                if (zzd.zzc() != zzd.zzd()) {
                    int zzc = zzd.zzc();
                    int zzd2 = zzd.zzd();
                    StringBuilder sb2 = new StringBuilder(58);
                    sb2.append("Uneven map keys (");
                    sb2.append(zzc);
                    sb2.append(") and map values (");
                    sb2.append(zzd2);
                    sb2.append(")");
                    zzh(sb2.toString());
                }
                zzal.zzk();
                zzal.zzl();
                for (Integer num : zzd.zzg()) {
                    zzal.zzf(zze(num.intValue(), zzaa, zzakArr, set));
                }
                for (Integer num2 : zzd.zzh()) {
                    zzal.zzg(zze(num2.intValue(), zzaa, zzakArr, set));
                }
            } else if (zzu == 4) {
                zzal = (zzal) zza((zzak) zzal2.zzC()).zzZ();
                zzal.zzr(zzfv.zzn(zzfv.zzl(zze(zzd((zzak) zzal2.zzC()).zza(), zzaa, zzakArr, set))));
            } else if (zzu == 7) {
                zzal = (zzal) zza((zzak) zzal2.zzC()).zzZ();
                zzae zzd3 = zzd((zzak) zzal2.zzC());
                zzal.zzm();
                for (Integer num3 : zzd3.zzi()) {
                    zzal.zzh(zze(num3.intValue(), zzaa, zzakArr, set));
                }
            }
            zzal2 = zzal;
        } else {
            zzae zzd4 = zzd((zzak) zzal2.zzC());
            zzal2 = (zzal) zza((zzak) zzal2.zzC()).zzZ();
            zzal2.zzj();
            for (Integer num4 : zzd4.zzf()) {
                zzal2.zze(zze(num4.intValue(), zzaa, zzakArr, set));
            }
        }
        zzakArr[i] = (zzak) zzal2.zzC();
        set.remove(Integer.valueOf(i));
        return (zzak) zzal2.zzC();
    }

    private static zzro zzf(zzs zzs, zzaa zzaa, zzak[] zzakArr, int i) {
        zzrq zzrq = new zzrq(null);
        for (Integer num : zzs.zzc()) {
            zzy zzy = (zzy) zzg(zzaa.zzq(), num.intValue(), "properties");
            String str = (String) zzg(zzaa.zzp(), zzy.zza(), "keys");
            int zzc = zzy.zzc();
            if (zzc < 0 || zzc >= zzakArr.length) {
                StringBuilder sb = new StringBuilder(51);
                sb.append("Index out of bounds detected: ");
                sb.append(zzc);
                sb.append(" in values");
                zzh(sb.toString());
            }
            zzak zzak = zzakArr[zzc];
            if (zzb.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzrq.zzc(zzak);
            } else {
                zzrq.zzb(str, zzak);
            }
        }
        return zzrq.zza();
    }

    private static <T> T zzg(List<T> list, int i, String str) {
        if (i < 0 || i >= list.size()) {
            StringBuilder sb = new StringBuilder(str.length() + 45);
            sb.append("Index out of bounds detected: ");
            sb.append(i);
            sb.append(" in ");
            sb.append(str);
            zzh(sb.toString());
        }
        return list.get(i);
    }

    private static void zzh(String str) {
        Log.e("GoogleTagManager", str);
        throw new zzrz(str);
    }
}

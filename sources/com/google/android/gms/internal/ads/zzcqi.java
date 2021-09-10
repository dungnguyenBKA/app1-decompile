package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzug;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

public final class zzcqi {
    private static final SparseArray<zzug.zzo.zzc> zzgri;
    private final Context context;
    private final zzbqu zzfxf;
    private final zzcqb zzgoh;
    private final TelephonyManager zzgrf;
    private final zzcpv zzgrg;
    private zzuq zzgrh;

    static {
        SparseArray<zzug.zzo.zzc> sparseArray = new SparseArray<>();
        zzgri = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzug.zzo.zzc.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzug.zzo.zzc zzc = zzug.zzo.zzc.CONNECTING;
        sparseArray.put(ordinal, zzc);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzc);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzc);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzug.zzo.zzc.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzug.zzo.zzc zzc2 = zzug.zzo.zzc.DISCONNECTED;
        sparseArray.put(ordinal2, zzc2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzc2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzc2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzc2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzc2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzug.zzo.zzc.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzc);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzc);
    }

    zzcqi(Context context2, zzbqu zzbqu, zzcqb zzcqb, zzcpv zzcpv) {
        this.context = context2;
        this.zzfxf = zzbqu;
        this.zzgoh = zzcqb;
        this.zzgrg = zzcpv;
        this.zzgrf = (TelephonyManager) context2.getSystemService("phone");
    }

    /* access modifiers changed from: private */
    public final byte[] zza(boolean z, ArrayList<zzug.zzc.zza> arrayList, zzug.zzm zzm, zzug.zzo.zzc zzc) {
        boolean z2 = true;
        zzug.zzo.zza.C0072zza zzeu = zzug.zzo.zza.zzpg().zzf(arrayList).zzh(zzbk(zzr.zzkt().zzb(this.context.getContentResolver()) != 0)).zzi(zzr.zzkt().zza(this.context, this.zzgrf)).zzev(this.zzgoh.zzow()).zzew(this.zzgoh.zzox()).zzcl(this.zzgoh.getResponseCode()).zzb(zzc).zzb(zzm).zzj(this.zzgrh).zzf(zzbk(z)).zzeu(zzr.zzky().a());
        if (zzr.zzkt().zza(this.context.getContentResolver()) == 0) {
            z2 = false;
        }
        return ((zzug.zzo.zza) ((zzelb) zzeu.zzg(zzbk(z2)).zzbiw())).toByteArray();
    }

    private static zzuq zzbk(boolean z) {
        return z ? zzuq.ENUM_TRUE : zzuq.ENUM_FALSE;
    }

    /* access modifiers changed from: private */
    public final zzug.zzm zzj(Bundle bundle) {
        zzug.zzm.zza zza;
        zzug.zzm.zzb zzop = zzug.zzm.zzop();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            this.zzgrh = zzuq.ENUM_TRUE;
        } else {
            this.zzgrh = zzuq.ENUM_FALSE;
            if (i == 0) {
                zzop.zzb(zzug.zzm.zzc.CELL);
            } else if (i != 1) {
                zzop.zzb(zzug.zzm.zzc.NETWORKTYPE_UNSPECIFIED);
            } else {
                zzop.zzb(zzug.zzm.zzc.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    zza = zzug.zzm.zza.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                case 17:
                    zza = zzug.zzm.zza.THREE_G;
                    break;
                case 13:
                    zza = zzug.zzm.zza.LTE;
                    break;
                default:
                    zza = zzug.zzm.zza.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zzop.zzb(zza);
        }
        return (zzug.zzm) ((zzelb) zzop.zzbiw());
    }

    /* access modifiers changed from: private */
    public static zzug.zzo.zzc zzk(Bundle bundle) {
        return zzgri.get(zzdnz.zza(zzdnz.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzug.zzo.zzc.UNSPECIFIED);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.zzug.zzc.zza> zzl(android.os.Bundle r4) {
        /*
        // Method dump skipped, instructions count: 194
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqi.zzl(android.os.Bundle):java.util.ArrayList");
    }

    public final void zzbj(boolean z) {
        zzdzk.zza(this.zzfxf.zzali(), new zzcqh(this, z), zzazp.zzeih);
    }
}

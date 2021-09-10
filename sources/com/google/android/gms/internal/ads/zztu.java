package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

public final class zztu {
    private final zztz zzbwf;
    @GuardedBy("this")
    private final zzug.zzi.zza zzbwg;
    private final boolean zzbwh;

    public zztu(zztz zztz) {
        this.zzbwg = zzug.zzi.zzof();
        this.zzbwf = zztz;
        this.zzbwh = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue();
    }

    private final synchronized void zzb(zztw.zza.EnumC0068zza zza) {
        this.zzbwg.zzoi().zzb(zzng());
        this.zzbwf.zzf(((zzug.zzi) ((zzelb) this.zzbwg.zzbiw())).toByteArray()).zzbv(zza.zzv()).log();
        String valueOf = String.valueOf(Integer.toString(zza.zzv(), 10));
        zzd.zzeb(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void zzc(zztw.zza.EnumC0068zza zza) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    fileOutputStream.write(zzd(zza).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        zzd.zzeb("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    zzd.zzeb("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        zzd.zzeb("Could not close Clearcut output stream.");
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused4) {
                        zzd.zzeb("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused5) {
                zzd.zzeb("Could not find file for Clearcut");
            }
        }
    }

    private final synchronized String zzd(zztw.zza.EnumC0068zza zza) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzbwg.zzob(), Long.valueOf(zzr.zzky().b()), Integer.valueOf(zza.zzv()), Base64.encodeToString(((zzug.zzi) ((zzelb) this.zzbwg.zzbiw())).toByteArray(), 3));
    }

    public static zztu zznf() {
        return new zztu();
    }

    private static List<Long> zzng() {
        List<String> zzsd = zzabp.zzsd();
        ArrayList arrayList = new ArrayList();
        for (String str : zzsd) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str2));
                } catch (NumberFormatException unused) {
                    zzd.zzeb("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public final synchronized void zza(zztw.zza.EnumC0068zza zza) {
        if (this.zzbwh) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvh)).booleanValue()) {
                zzc(zza);
            } else {
                zzb(zza);
            }
        }
    }

    private zztu() {
        this.zzbwg = zzug.zzi.zzof();
        this.zzbwh = false;
        this.zzbwf = new zztz();
    }

    public final synchronized void zza(zztx zztx) {
        if (this.zzbwh) {
            try {
                zztx.zza(this.zzbwg);
            } catch (NullPointerException e) {
                zzr.zzkv().zza(e, "AdMobClearcutLogger.modify");
            }
        }
    }
}

package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzey implements zzfo {
    private final Context zza;

    zzey(Context context) {
        this.zza = context;
    }

    /* JADX INFO: finally extract failed */
    @Override // com.google.android.gms.internal.measurement.zzfo
    public final Object zza() {
        zzfm zzfm;
        Context context = this.zza;
        int i = zzfg.zzc;
        String str = Build.TYPE;
        String str2 = Build.TAGS;
        if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
            return zzfm.zzc();
        }
        if (zzej.zza() && !context.isDeviceProtectedStorage()) {
            context = context.createDeviceProtectedStorageContext();
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            try {
                File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
                if (file.exists()) {
                    zzfm = zzfm.zzd(file);
                } else {
                    zzfm = zzfm.zzc();
                }
            } catch (RuntimeException e) {
                Log.e("HermeticFileOverrides", "no data dir", e);
                zzfm = zzfm.zzc();
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            if (!zzfm.zza()) {
                return zzfm.zzc();
            }
            File file2 = (File) zzfm.zzb();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            String[] split = readLine.split(" ", 3);
                            if (split.length != 3) {
                                Log.e("HermeticFileOverrides", readLine.length() != 0 ? "Invalid: ".concat(readLine) : new String("Invalid: "));
                            } else {
                                String str3 = new String(split[0]);
                                String decode = Uri.decode(new String(split[1]));
                                String str4 = (String) hashMap2.get(split[2]);
                                if (str4 == null) {
                                    String str5 = new String(split[2]);
                                    str4 = Uri.decode(str5);
                                    if (str4.length() < 1024 || str4 == str5) {
                                        hashMap2.put(str5, str4);
                                    }
                                }
                                if (!hashMap.containsKey(str3)) {
                                    hashMap.put(str3, new HashMap());
                                }
                                ((Map) hashMap.get(str3)).put(decode, str4);
                            }
                        } else {
                            String valueOf = String.valueOf(file2);
                            StringBuilder sb = new StringBuilder(valueOf.length() + 7);
                            sb.append("Parsed ");
                            sb.append(valueOf);
                            Log.i("HermeticFileOverrides", sb.toString());
                            zzev zzev = new zzev(hashMap);
                            bufferedReader.close();
                            return zzfm.zzd(zzev);
                        }
                    }
                } catch (Throwable th) {
                    zzfz.zza(th, th);
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th2;
        }
        throw th;
    }
}

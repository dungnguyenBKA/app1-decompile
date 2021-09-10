package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

public final class zzdue {
    private final Context context;
    private final zzdsy zzvs;

    public zzdue(Context context2, zzdsy zzdsy) {
        this.context = context2;
        this.zzvs = zzdsy;
    }

    public static boolean zza(zzgp zzgp) {
        int i = zzdud.zzhtw[zzgp.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    private final String zzaye() {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String value = zzdwq.OS_ARCH.value();
        if (!TextUtils.isEmpty(value) && hashSet.contains(value)) {
            return value;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (NoSuchFieldException e) {
            zzdsy zzdsy = this.zzvs;
            if (zzdsy != null) {
                zzdsy.zza(2024, 0, e);
            }
        } catch (IllegalAccessException e2) {
            zzdsy zzdsy2 = this.zzvs;
            if (zzdsy2 != null) {
                zzdsy2.zza(2024, 0, e2);
            }
        }
        String str = Build.CPU_ABI;
        if (str != null) {
            return str;
        }
        return Build.CPU_ABI2;
    }

    private final zzgp zzayf() {
        File file = new File(new File(this.context.getApplicationInfo().dataDir), "lib");
        if (!file.exists()) {
            zzdsy zzdsy = this.zzvs;
            if (zzdsy != null) {
                zzdsy.zzg(5017, "No lib/");
            }
            return zzgp.UNKNOWN;
        }
        File[] listFiles = file.listFiles(new zzdye(Pattern.compile(".*\\.so$", 2)));
        if (listFiles == null || listFiles.length == 0) {
            zzdsy zzdsy2 = this.zzvs;
            if (zzdsy2 != null) {
                zzdsy2.zzg(5017, "No .so");
            }
            return zzgp.UNKNOWN;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(listFiles[0]);
            try {
                byte[] bArr = new byte[20];
                if (fileInputStream.read(bArr) == 20) {
                    byte[] bArr2 = {0, 0};
                    if (bArr[5] == 2) {
                        zzc(bArr, null);
                        zzgp zzgp = zzgp.UNSUPPORTED;
                        fileInputStream.close();
                        return zzgp;
                    }
                    bArr2[0] = bArr[19];
                    bArr2[1] = bArr[18];
                    short s = ByteBuffer.wrap(bArr2).getShort();
                    if (s == 3) {
                        zzgp zzgp2 = zzgp.X86;
                        fileInputStream.close();
                        return zzgp2;
                    } else if (s == 40) {
                        zzgp zzgp3 = zzgp.ARM7;
                        fileInputStream.close();
                        return zzgp3;
                    } else if (s == 62) {
                        zzgp zzgp4 = zzgp.X86_64;
                        fileInputStream.close();
                        return zzgp4;
                    } else if (s != 183) {
                        zzc(bArr, null);
                        zzgp zzgp5 = zzgp.UNSUPPORTED;
                        fileInputStream.close();
                        return zzgp5;
                    } else {
                        zzgp zzgp6 = zzgp.ARM64;
                        fileInputStream.close();
                        return zzgp6;
                    }
                } else {
                    fileInputStream.close();
                    return zzgp.UNSUPPORTED;
                }
            } catch (Throwable th) {
                zzeja.zza(th, th);
            }
        } catch (IOException e) {
            zzc(null, e.toString());
        }
        throw th;
    }

    private final void zzc(byte[] bArr, String str) {
        if (this.zzvs != null) {
            StringBuilder q = ic.q("os.arch:");
            q.append(zzdwq.OS_ARCH.value());
            q.append(";");
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    q.append("supported_abis:");
                    q.append(Arrays.toString(strArr));
                    q.append(";");
                }
            } catch (IllegalAccessException | NoSuchFieldException unused) {
            }
            q.append("CPU_ABI:");
            q.append(Build.CPU_ABI);
            q.append(";");
            q.append("CPU_ABI2:");
            q.append(Build.CPU_ABI2);
            q.append(";");
            if (bArr != null) {
                q.append("ELF:");
                q.append(Arrays.toString(bArr));
                q.append(";");
            }
            if (str != null) {
                q.append("dbg:");
                q.append(str);
                q.append(";");
            }
            this.zzvs.zzg(4007, q.toString());
        }
    }

    public final zzgp zzayg() {
        zzgp zzayf = zzayf();
        if (zzayf == zzgp.UNKNOWN) {
            String zzaye = zzaye();
            if (TextUtils.isEmpty(zzaye)) {
                zzc(null, "Empty dev arch");
                zzayf = zzgp.UNSUPPORTED;
            } else if (zzaye.equalsIgnoreCase("i686") || zzaye.equalsIgnoreCase("x86")) {
                zzayf = zzgp.X86;
            } else if (zzaye.equalsIgnoreCase("x86_64")) {
                zzayf = zzgp.X86_64;
            } else if (zzaye.equalsIgnoreCase("arm64-v8a")) {
                zzayf = zzgp.ARM64;
            } else if (zzaye.equalsIgnoreCase("armeabi-v7a") || zzaye.equalsIgnoreCase("armv71")) {
                zzayf = zzgp.ARM7;
            } else {
                zzc(null, zzaye);
                zzayf = zzgp.UNSUPPORTED;
            }
        }
        zzdsy zzdsy = this.zzvs;
        if (zzdsy != null) {
            zzdsy.zzg(5018, zzayf.name());
        }
        return zzayf;
    }
}

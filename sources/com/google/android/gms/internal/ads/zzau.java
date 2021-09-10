package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;

public class zzau implements zzu {
    @Deprecated
    private final zzbe zzce;
    private final zzar zzcf;
    private final zzat zzcg;

    public zzau(zzar zzar) {
        this(zzar, new zzat(4096));
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public zzz zza(zzab<?> zzab) {
        byte[] bArr;
        zzbb zzbb;
        IOException iOException;
        Map<String, String> map;
        zzbb zza;
        int statusCode;
        List<zzv> zzq;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                zzn zzf = zzab.zzf();
                if (zzf == null) {
                    map = Collections.emptyMap();
                } else {
                    HashMap hashMap = new HashMap();
                    String str = zzf.zzr;
                    if (str != null) {
                        hashMap.put(HttpHeaders.IF_NONE_MATCH, str);
                    }
                    long j = zzf.zzt;
                    if (j > 0) {
                        hashMap.put(HttpHeaders.IF_MODIFIED_SINCE, zzbc.zzb(j));
                    }
                    map = hashMap;
                }
                zza = this.zzcf.zza(zzab, map);
                try {
                    statusCode = zza.getStatusCode();
                    zzq = zza.zzq();
                    break;
                } catch (IOException e) {
                    bArr = null;
                    zzbb = zza;
                    iOException = e;
                }
            } catch (IOException e2) {
                iOException = e2;
                zzbb = null;
                bArr = null;
            }
            zzbi.zza(zzab, iOException, elapsedRealtime, zzbb, bArr);
        }
        if (statusCode == 304) {
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            zzn zzf2 = zzab.zzf();
            if (zzf2 == null) {
                return new zzz((int) HttpStatus.SC_NOT_MODIFIED, (byte[]) null, true, elapsedRealtime2, zzq);
            }
            TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
            if (!zzq.isEmpty()) {
                for (zzv zzv : zzq) {
                    treeSet.add(zzv.getName());
                }
            }
            ArrayList arrayList = new ArrayList(zzq);
            List<zzv> list = zzf2.zzx;
            if (list != null) {
                if (!list.isEmpty()) {
                    for (zzv zzv2 : zzf2.zzx) {
                        if (!treeSet.contains(zzv2.getName())) {
                            arrayList.add(zzv2);
                        }
                    }
                }
            } else if (!zzf2.zzw.isEmpty()) {
                for (Map.Entry<String, String> entry : zzf2.zzw.entrySet()) {
                    if (!treeSet.contains(entry.getKey())) {
                        arrayList.add(new zzv(entry.getKey(), entry.getValue()));
                    }
                }
            }
            return new zzz((int) HttpStatus.SC_NOT_MODIFIED, zzf2.data, true, elapsedRealtime2, (List<zzv>) arrayList);
        }
        InputStream content = zza.getContent();
        byte[] zza2 = content != null ? zzbi.zza(content, zza.getContentLength(), this.zzcg) : new byte[0];
        long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
        if (zzao.DEBUG || elapsedRealtime3 > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = zzab;
            objArr[1] = Long.valueOf(elapsedRealtime3);
            objArr[2] = zza2 != null ? Integer.valueOf(zza2.length) : "null";
            objArr[3] = Integer.valueOf(statusCode);
            objArr[4] = Integer.valueOf(zzab.zzj().zzc());
            zzao.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
        if (statusCode >= 200 && statusCode <= 299) {
            return new zzz(statusCode, zza2, false, SystemClock.elapsedRealtime() - elapsedRealtime, zzq);
        }
        throw new IOException();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzar */
    /* JADX WARN: Multi-variable type inference failed */
    private zzau(zzar zzar, zzat zzat) {
        this.zzcf = zzar;
        this.zzce = zzar;
        this.zzcg = zzat;
    }
}

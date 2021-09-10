package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

public final class zzru {
    private final int zzbuc;
    private final int zzbud;
    private final int zzbue;
    private final zzrv zzbuf = new zzry();

    public zzru(int i) {
        this.zzbud = i;
        this.zzbuc = 6;
        this.zzbue = 0;
    }

    private final String zzbp(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zzrw zzrw = new zzrw();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbud, new zzrx(this));
        for (String str2 : split) {
            String[] zze = zzrz.zze(str2, false);
            if (zze.length != 0) {
                zzsa.zza(zze, this.zzbud, this.zzbuc, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzrw.write(this.zzbuf.zzbq(((zzsd) it.next()).zzbum));
            } catch (IOException e) {
                zzazk.zzc("Error while writing hash to byteStream", e);
            }
        }
        return zzrw.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str = arrayList.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return zzbp(sb.toString());
    }
}

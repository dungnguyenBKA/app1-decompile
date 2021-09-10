package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzri {
    private final Object lock = new Object();
    private int zzbsg;
    private List<zzrj> zzbsh = new LinkedList();

    public final boolean zza(zzrj zzrj) {
        synchronized (this.lock) {
            if (this.zzbsh.contains(zzrj)) {
                return true;
            }
            return false;
        }
    }

    public final boolean zzb(zzrj zzrj) {
        synchronized (this.lock) {
            Iterator<zzrj> it = this.zzbsh.iterator();
            while (it.hasNext()) {
                zzrj next = it.next();
                if (!zzr.zzkv().zzxs().zzyi()) {
                    if (zzrj != next && next.zzlz().equals(zzrj.zzlz())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzr.zzkv().zzxs().zzyk() && zzrj != next && next.zzmb().equals(zzrj.zzmb())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzrj zzrj) {
        synchronized (this.lock) {
            if (this.zzbsh.size() >= 10) {
                int size = this.zzbsh.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzazk.zzdy(sb.toString());
                this.zzbsh.remove(0);
            }
            int i = this.zzbsg;
            this.zzbsg = i + 1;
            zzrj.zzbt(i);
            zzrj.zzmf();
            this.zzbsh.add(zzrj);
        }
    }

    public final zzrj zzo(boolean z) {
        synchronized (this.lock) {
            zzrj zzrj = null;
            if (this.zzbsh.size() == 0) {
                zzazk.zzdy("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzbsh.size() >= 2) {
                int i2 = RecyclerView.UNDEFINED_DURATION;
                int i3 = 0;
                for (zzrj zzrj2 : this.zzbsh) {
                    int score = zzrj2.getScore();
                    if (score > i2) {
                        i = i3;
                        zzrj = zzrj2;
                        i2 = score;
                    }
                    i3++;
                }
                this.zzbsh.remove(i);
                return zzrj;
            }
            zzrj zzrj3 = this.zzbsh.get(0);
            if (z) {
                this.zzbsh.remove(0);
            } else {
                zzrj3.zzmc();
            }
            return zzrj3;
        }
    }
}

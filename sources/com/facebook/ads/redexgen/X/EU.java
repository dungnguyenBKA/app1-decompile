package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.offline.DownloadAction;
import java.util.ArrayList;
import java.util.Iterator;

public class EU implements Runnable {
    public final /* synthetic */ EV A00;
    public final /* synthetic */ DownloadAction[] A01;

    public EU(EV ev, DownloadAction[] downloadActionArr) {
        this.A00 = ev;
        this.A01 = downloadActionArr;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                if (!(this.A00.A00.A03)) {
                    ArrayList arrayList = new ArrayList(this.A00.A00.A0C);
                    this.A00.A00.A0C.clear();
                    for (DownloadAction downloadAction : this.A01) {
                        RunnableC0456Eb unused = this.A00.A00.A02(downloadAction);
                    }
                    this.A00.A00.A02 = true;
                    Iterator it = this.A00.A00.A0D.iterator();
                    while (it.hasNext()) {
                        ((EX) it.next()).AAM(this.A00.A00);
                    }
                    if (!arrayList.isEmpty()) {
                        this.A00.A00.A0C.addAll(arrayList);
                        this.A00.A00.A0B();
                    }
                    this.A00.A00.A0A();
                    for (int i = 0; i < this.A00.A00.A0C.size(); i++) {
                        RunnableC0456Eb eb = (RunnableC0456Eb) this.A00.A00.A0C.get(i);
                        if (RunnableC0456Eb.A03(eb) == 0) {
                            this.A00.A00.A0E(eb);
                        }
                    }
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}

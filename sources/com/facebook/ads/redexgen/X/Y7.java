package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Y7 implements AnonymousClass9U {
    public final List<AnonymousClass9Z> A00 = new ArrayList();
    public final boolean A01;
    public final /* synthetic */ Y8 A02;

    public Y7(Y8 y8, List<AnonymousClass9Q> list, boolean z) throws IOException {
        this.A02 = y8;
        this.A01 = z;
        Iterator<AnonymousClass9Q> it = list.iterator();
        while (it.hasNext()) {
            RecordFileBasedRecordDatabase<T>.RecordFileBasedFetch recordFileBasedFetch = (AnonymousClass9Q) it.next();
            AnonymousClass9P A012 = recordFileBasedFetch.A01();
            this.A00.add(new AnonymousClass9Z(new AnonymousClass9N(recordFileBasedFetch.A00(), A012.A01()), A012.A00() - A012.A01(), A012.A00()));
        }
    }

    public final AnonymousClass9Z A00() {
        return (AnonymousClass9Z) this.A00.get(0);
    }

    public final AnonymousClass9Z A01() {
        List<AnonymousClass9Z> list = this.A00;
        return (AnonymousClass9Z) list.get(list.size() - 1);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9U
    public final void A4h() throws C03479e {
        this.A02.A04(this);
    }

    /* JADX INFO: Multiple debug info for r0v4 com.facebook.ads.redexgen.X.9Z: [D('this' com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch), D('location' com.facebook.ads.redexgen.X.9Z)] */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass9U
    public final synchronized int A5J() {
        int i;
        i = 0;
        Iterator<AnonymousClass9Z> it = this.A00.iterator();
        while (it.hasNext()) {
            i += it.next().A01;
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9U
    public final boolean A8y() {
        return this.A01;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        boolean unused = this.A02.A07(this);
    }
}

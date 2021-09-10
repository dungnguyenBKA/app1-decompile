package defpackage;

import android.os.Bundle;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: yz  reason: default package */
public class yz implements Callable<Void> {
    final /* synthetic */ long b;
    final /* synthetic */ zz c;

    yz(zz zzVar, long j) {
        this.c = zzVar;
        this.b = j;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, this.b);
        this.c.m.a("_ae", bundle);
        return null;
    }
}

package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class f extends AsyncTask<Void, Void, String> {
    private final /* synthetic */ zzl a;

    f(zzl zzl, e eVar) {
        this.a = zzl;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
    /* access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public final String doInBackground(Void[] voidArr) {
        try {
            zzl zzl = this.a;
            zzl.i = (zzei) zzl.d.get(1000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzazk.zzd("", e);
        }
        return this.a.Z();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (this.a.g != null && str2 != null) {
            this.a.g.loadUrl(str2);
        }
    }
}

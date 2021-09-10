package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzaau;
import com.google.android.gms.internal.ads.zzacl;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzary;
import com.google.android.gms.internal.ads.zzase;
import com.google.android.gms.internal.ads.zzauu;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzeh;
import com.google.android.gms.internal.ads.zzei;
import com.google.android.gms.internal.ads.zzsp;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzww;
import com.google.android.gms.internal.ads.zzwx;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxo;
import com.google.android.gms.internal.ads.zzxs;
import com.google.android.gms.internal.ads.zzxt;
import com.google.android.gms.internal.ads.zzxz;
import com.google.android.gms.internal.ads.zzyb;
import com.google.android.gms.internal.ads.zzyw;
import com.google.android.gms.internal.ads.zzyx;
import com.google.android.gms.internal.ads.zzzc;
import com.google.android.gms.internal.ads.zzzi;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzl extends zzxo {
    private final zzazn b;
    private final zzvs c;
    private final Future<zzei> d = zzazp.zzeic.zze(new g(this));
    private final Context e;
    private final h f;
    private WebView g;
    private zzwx h;
    private zzei i;
    private AsyncTask<Void, Void, String> j;

    public zzl(Context context, zzvs zzvs, String str, zzazn zzazn) {
        this.e = context;
        this.b = zzazn;
        this.c = zzvs;
        this.g = new WebView(context);
        this.f = new h(context, str);
        U(0);
        this.g.setVerticalScrollBarEnabled(false);
        this.g.getSettings().setJavaScriptEnabled(true);
        this.g.setWebViewClient(new e(this));
        this.g.setOnTouchListener(new d(this));
    }

    static String Q(zzl zzl, String str) {
        if (zzl.i == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = zzl.i.zza(parse, zzl.e, null, null);
        } catch (zzeh e2) {
            zzazk.zzd("Unable to process ad data", e2);
        }
        return parse.toString();
    }

    static void S(zzl zzl, String str) {
        Objects.requireNonNull(zzl);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzl.e.startActivity(intent);
    }

    /* access modifiers changed from: package-private */
    public final int T(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzwr.zzqn();
            return zzaza.zze(this.e, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public final void U(int i2) {
        if (this.g != null) {
            this.g.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
        }
    }

    /* access modifiers changed from: package-private */
    public final String Z() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzadb.zzdcr.get());
        builder.appendQueryParameter("query", this.f.a());
        builder.appendQueryParameter("pubId", this.f.d());
        Map<String, String> e2 = this.f.e();
        for (String str : e2.keySet()) {
            builder.appendQueryParameter(str, e2.get(str));
        }
        Uri build = builder.build();
        zzei zzei = this.i;
        if (zzei != null) {
            try {
                build = zzei.zza(build, this.e);
            } catch (zzeh e3) {
                zzazk.zzd("Unable to process ad data", e3);
            }
        }
        String a0 = a0();
        String encodedQuery = build.getEncodedQuery();
        return ic.e(ic.m(encodedQuery, ic.m(a0, 1)), a0, "#", encodedQuery);
    }

    /* access modifiers changed from: package-private */
    public final String a0() {
        String c2 = this.f.c();
        if (TextUtils.isEmpty(c2)) {
            c2 = "www.google.com";
        }
        String str = zzadb.zzdcr.get();
        return ic.e(ic.m(str, ic.m(c2, 8)), "https://", c2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        n.d("destroy must be called on the main UI thread.");
        this.j.cancel(true);
        this.d.cancel(true);
        this.g.destroy();
        this.g = null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() {
        n.d("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        n.d("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvl, zzxc zzxc) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzyw) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvl) {
        n.i(this.g, "This Search Ad has already been torn down");
        this.f.b(zzvl, this.b);
        this.j = new f(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        n.d("getAdFrame must be called on the main UI thread.");
        return aw.Q(this.g);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwx) {
        this.h = zzwx;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxt) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxs) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvs) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzary) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzase, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzacl) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxz) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauu) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaau) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
        throw new IllegalStateException("Unused method");
    }
}

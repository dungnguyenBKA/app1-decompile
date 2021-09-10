package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.billingclient.api.f0;
import com.android.billingclient.api.g;
import com.android.billingclient.api.j;
import com.android.billingclient.api.n;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzc;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public class d extends c {
    private int a;
    private final String b;
    private final Handler c;
    private h0 d;
    private Context e;
    private Context f;
    private zzc g;
    private a h;
    private boolean i;
    private boolean j;
    private int k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private ExecutorService t;

    /* access modifiers changed from: private */
    public final class a implements ServiceConnection {
        private final Object a = new Object();
        private e b;

        a(e eVar, l0 l0Var) {
            this.b = eVar;
        }

        static void b(a aVar, g gVar) {
            d.this.u(new v(aVar, gVar));
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zza.zza("BillingClient", "Billing service connected.");
            d.this.g = zzb.zza(iBinder);
            if (d.this.r(new x(this), 30000, new w(this)) == null) {
                d.this.u(new v(this, d.this.E()));
            }
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            zza.zzb("BillingClient", "Billing service disconnected.");
            d.this.g = null;
            d.this.a = 0;
            synchronized (this.a) {
                e eVar = this.b;
                if (eVar != null) {
                    eVar.e();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public static class b {
        private final List<k> a;
        private final g b;

        b(g gVar, List<k> list) {
            this.a = list;
            this.b = gVar;
        }

        /* access modifiers changed from: package-private */
        public final g a() {
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public final List<k> b() {
            return this.a;
        }
    }

    d(boolean z, Context context, m mVar) {
        String str;
        try {
            str = (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            str = "3.0.1";
        }
        this.a = 0;
        this.c = new Handler(Looper.getMainLooper());
        this.k = 0;
        this.b = str;
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        this.d = new h0(applicationContext, mVar);
        this.e = context;
        this.s = z;
    }

    private final g A(String str) {
        try {
            if (((Integer) r(new y0(this, str), 5000, null).get(5000, TimeUnit.MILLISECONDS)).intValue() == 0) {
                return a0.m;
            }
            return a0.i;
        } catch (Exception unused) {
            zza.zzb("BillingClient", "Exception while checking if billing is supported; try to reconnect");
            return a0.n;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final g E() {
        int i2 = this.a;
        if (i2 == 0 || i2 == 3) {
            return a0.n;
        }
        return a0.l;
    }

    private final g m(g gVar) {
        this.d.c().c(gVar, null);
        return gVar;
    }

    static j.a n(d dVar, String str) {
        Bundle bundle;
        Objects.requireNonNull(dVar);
        String valueOf = String.valueOf(str);
        zza.zza("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle zza = zza.zza(dVar.n, dVar.s, dVar.b);
        String str2 = null;
        do {
            try {
                if (dVar.n) {
                    bundle = dVar.g.zzc(9, dVar.f.getPackageName(), str, str2, zza);
                } else {
                    bundle = dVar.g.zza(3, dVar.f.getPackageName(), str, str2);
                }
                g a2 = c0.a(bundle, "BillingClient", "getPurchase()");
                if (a2 != a0.m) {
                    return new j.a(a2, null);
                }
                ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    String valueOf2 = String.valueOf(stringArrayList.get(i2));
                    zza.zza("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        j jVar = new j(str3, str4);
                        if (TextUtils.isEmpty(jVar.b())) {
                            zza.zzb("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(jVar);
                    } catch (JSONException e2) {
                        String valueOf3 = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        zza.zzb("BillingClient", sb.toString());
                        return new j.a(a0.l, null);
                    }
                }
                str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(str2);
                zza.zza("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
            } catch (Exception e3) {
                String valueOf5 = String.valueOf(e3);
                StringBuilder sb2 = new StringBuilder(valueOf5.length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                zza.zzb("BillingClient", sb2.toString());
                return new j.a(a0.n, null);
            }
        } while (!TextUtils.isEmpty(str2));
        return new j.a(a0.m, arrayList);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final <T> Future<T> r(Callable<T> callable, long j2, Runnable runnable) {
        double d2 = (double) j2;
        Double.isNaN(d2);
        long j3 = (long) (d2 * 0.95d);
        if (this.t == null) {
            this.t = Executors.newFixedThreadPool(zza.zza, new u0());
        }
        try {
            Future<T> submit = this.t.submit(callable);
            this.c.postDelayed(new w0(submit, runnable), j3);
            return submit;
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            zza.zzb("BillingClient", sb.toString());
            return null;
        }
    }

    static void s(d dVar, h hVar, i iVar) {
        String str;
        int i2;
        Objects.requireNonNull(dVar);
        String a2 = hVar.a();
        try {
            String valueOf = String.valueOf(a2);
            zza.zza("BillingClient", valueOf.length() != 0 ? "Consuming purchase with token: ".concat(valueOf) : new String("Consuming purchase with token: "));
            if (dVar.n) {
                Bundle zzc = dVar.g.zzc(9, dVar.f.getPackageName(), a2, zza.zza(hVar, dVar.n, dVar.b));
                i2 = zzc.getInt("RESPONSE_CODE");
                str = zza.zzb(zzc, "BillingClient");
            } else {
                i2 = dVar.g.zzb(3, dVar.f.getPackageName(), a2);
                str = "";
            }
            g.a c2 = g.c();
            c2.c(i2);
            c2.b(str);
            g a3 = c2.a();
            if (i2 == 0) {
                dVar.u(new x0(iVar, a3, a2));
            } else {
                dVar.u(new a1(i2, iVar, a3, a2));
            }
        } catch (Exception e2) {
            dVar.u(new z0(e2, iVar, a2));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void u(Runnable runnable) {
        if (!Thread.interrupted()) {
            this.c.post(runnable);
        }
    }

    static b x(d dVar, String str) {
        Objects.requireNonNull(dVar);
        String valueOf = String.valueOf(str);
        zza.zza("BillingClient", valueOf.length() != 0 ? "Querying purchase history, item type: ".concat(valueOf) : new String("Querying purchase history, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle zza = zza.zza(dVar.n, dVar.s, dVar.b);
        String str2 = null;
        while (dVar.l) {
            try {
                Bundle zza2 = dVar.g.zza(6, dVar.f.getPackageName(), str, str2, zza);
                g a2 = c0.a(zza2, "BillingClient", "getPurchaseHistory()");
                if (a2 != a0.m) {
                    return new b(a2, null);
                }
                ArrayList<String> stringArrayList = zza2.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = zza2.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = zza2.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    String valueOf2 = String.valueOf(stringArrayList.get(i2));
                    zza.zza("BillingClient", valueOf2.length() != 0 ? "Purchase record found for sku : ".concat(valueOf2) : new String("Purchase record found for sku : "));
                    try {
                        k kVar = new k(str3, str4);
                        if (TextUtils.isEmpty(kVar.a())) {
                            zza.zzb("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(kVar);
                    } catch (JSONException e2) {
                        String valueOf3 = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        zza.zzb("BillingClient", sb.toString());
                        return new b(a0.l, null);
                    }
                }
                str2 = zza2.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(str2);
                zza.zza("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                if (TextUtils.isEmpty(str2)) {
                    return new b(a0.m, arrayList);
                }
            } catch (RemoteException e3) {
                String valueOf5 = String.valueOf(e3);
                StringBuilder sb2 = new StringBuilder(valueOf5.length() + 64);
                sb2.append("Got exception trying to get purchase history: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                zza.zzb("BillingClient", sb2.toString());
                return new b(a0.n, null);
            }
        }
        zza.zzb("BillingClient", "getPurchaseHistory is not supported on current device");
        return new b(a0.j, null);
    }

    @Override // com.android.billingclient.api.c
    public void a(a aVar, b bVar) {
        if (!d()) {
            bVar.b(a0.n);
        } else if (TextUtils.isEmpty(aVar.a())) {
            zza.zzb("BillingClient", "Please provide a valid purchase token.");
            bVar.b(a0.k);
        } else if (!this.n) {
            bVar.b(a0.b);
        } else if (r(new q0(this, aVar, bVar), 30000, new v0(bVar)) == null) {
            bVar.b(E());
        }
    }

    @Override // com.android.billingclient.api.c
    public void b(h hVar, i iVar) {
        if (!d()) {
            iVar.f(a0.n, hVar.a());
        } else if (r(new n0(this, hVar, iVar), 30000, new m0(iVar, hVar)) == null) {
            iVar.f(E(), hVar.a());
        }
    }

    @Override // com.android.billingclient.api.c
    public g c(String str) {
        if (!d()) {
            return a0.n;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals("subscriptionsUpdate")) {
                    c2 = 0;
                    break;
                }
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c2 = 1;
                    break;
                }
                break;
            case 97314:
                if (str.equals("bbb")) {
                    c2 = 2;
                    break;
                }
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c2 = 3;
                    break;
                }
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c2 = 4;
                    break;
                }
                break;
            case 207616302:
                if (str.equals("priceChangeConfirmation")) {
                    c2 = 5;
                    break;
                }
                break;
            case 292218239:
                if (str.equals("inAppItemsOnVr")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1219490065:
                if (str.equals("subscriptionsOnVr")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1987365622:
                if (str.equals("subscriptions")) {
                    c2 = '\b';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                if (this.j) {
                    return a0.m;
                }
                return a0.i;
            case 1:
                return this.q ? a0.m : a0.i;
            case 2:
                return this.p ? a0.m : a0.i;
            case 3:
            case 4:
                return this.r ? a0.m : a0.i;
            case 5:
                return this.m ? a0.m : a0.i;
            case 6:
                return A("inapp");
            case 7:
                return A("subs");
            case '\b':
                return this.i ? a0.m : a0.i;
            default:
                zza.zzb("BillingClient", str.length() != 0 ? "Unsupported feature: ".concat(str) : new String("Unsupported feature: "));
                return a0.s;
        }
    }

    @Override // com.android.billingclient.api.c
    public boolean d() {
        return (this.a != 2 || this.g == null || this.h == null) ? false : true;
    }

    @Override // com.android.billingclient.api.c
    public g e(Activity activity, f fVar) {
        Future future;
        long j2;
        int i2;
        int i3;
        String str;
        if (!d()) {
            g gVar = a0.n;
            m(gVar);
            return gVar;
        }
        ArrayList<n> h2 = fVar.h();
        n nVar = h2.get(0);
        String d2 = nVar.d();
        if (!d2.equals("subs") || this.i) {
            boolean z = fVar.a() != null;
            if (z && !this.j) {
                zza.zzb("BillingClient", "Current client doesn't support subscriptions update.");
                g gVar2 = a0.q;
                m(gVar2);
                return gVar2;
            } else if (fVar.o() && !this.l) {
                zza.zzb("BillingClient", "Current client doesn't support extra params for buy intent.");
                g gVar3 = a0.h;
                m(gVar3);
                return gVar3;
            } else if (h2.size() <= 1 || this.r) {
                String str2 = "";
                for (int i4 = 0; i4 < h2.size(); i4++) {
                    String valueOf = String.valueOf(str2);
                    String valueOf2 = String.valueOf(h2.get(i4));
                    str2 = ic.d(valueOf2.length() + valueOf.length(), valueOf, valueOf2);
                    if (i4 < h2.size() - 1) {
                        str2 = String.valueOf(str2).concat(", ");
                    }
                }
                StringBuilder sb = new StringBuilder(d2.length() + ic.m(str2, 41));
                sb.append("Constructing buy intent for ");
                sb.append(str2);
                sb.append(", item type: ");
                sb.append(d2);
                zza.zza("BillingClient", sb.toString());
                if (this.l) {
                    Bundle zza = zza.zza(fVar, this.n, this.s, this.b);
                    if (!nVar.f().isEmpty()) {
                        zza.putString("skuDetailsToken", nVar.f());
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    int size = h2.size();
                    boolean z2 = false;
                    for (int i5 = 0; i5 < size; i5 = i3) {
                        n nVar2 = h2.get(i5);
                        int i6 = i5 + 1;
                        n nVar3 = nVar2;
                        if (!nVar3.f().isEmpty()) {
                            i3 = i6;
                            arrayList.add(nVar3.f());
                        } else {
                            i3 = i6;
                        }
                        try {
                            str = new JSONObject(nVar3.a()).optString("offer_id_token");
                        } catch (JSONException unused) {
                            str = "";
                        }
                        arrayList2.add(str);
                        z2 |= !TextUtils.isEmpty(str);
                        size = size;
                    }
                    if (!arrayList.isEmpty()) {
                        zza.putStringArrayList("skuDetailsTokens", arrayList);
                    }
                    if (z2) {
                        if (!this.r) {
                            g gVar4 = a0.i;
                            m(gVar4);
                            return gVar4;
                        }
                        zza.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                    }
                    if (!TextUtils.isEmpty(nVar.e())) {
                        zza.putString("skuPackageName", nVar.e());
                    }
                    if (!TextUtils.isEmpty(null)) {
                        zza.putString("accountName", null);
                    }
                    if (h2.size() > 1) {
                        ArrayList<String> arrayList3 = new ArrayList<>(h2.size() - 1);
                        for (int i7 = 1; i7 < h2.size(); i7++) {
                            arrayList3.add(h2.get(i7).c());
                        }
                        zza.putStringArrayList("additionalSkus", arrayList3);
                    }
                    if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                        String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                        zza.putString("proxyPackage", stringExtra);
                        try {
                            zza.putString("proxyPackageVersion", this.e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException unused2) {
                            zza.putString("proxyPackageVersion", "package not found");
                        }
                    }
                    if (this.n) {
                        i2 = 9;
                    } else {
                        i2 = fVar.e() ? 7 : 6;
                    }
                    j2 = 5000;
                    future = r(new c1(this, i2, nVar, d2, fVar, zza), 5000, null);
                } else {
                    j2 = 5000;
                    if (z) {
                        future = r(new b1(this, fVar, nVar), 5000, null);
                    } else {
                        future = r(new s(this, nVar, d2), 5000, null);
                    }
                }
                try {
                    Bundle bundle = (Bundle) future.get(j2, TimeUnit.MILLISECONDS);
                    int zza2 = zza.zza(bundle, "BillingClient");
                    String zzb = zza.zzb(bundle, "BillingClient");
                    if (zza2 != 0) {
                        StringBuilder sb2 = new StringBuilder(52);
                        sb2.append("Unable to buy item, Error response code: ");
                        sb2.append(zza2);
                        zza.zzb("BillingClient", sb2.toString());
                        g.a c2 = g.c();
                        c2.c(zza2);
                        c2.b(zzb);
                        g a2 = c2.a();
                        this.d.c().c(a2, null);
                        return a2;
                    }
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                    activity.startActivity(intent);
                    return a0.m;
                } catch (CancellationException | TimeoutException unused3) {
                    StringBuilder sb3 = new StringBuilder(ic.m(str2, 68));
                    sb3.append("Time out while launching billing flow: ; for sku: ");
                    sb3.append(str2);
                    sb3.append("; try to reconnect");
                    zza.zzb("BillingClient", sb3.toString());
                    g gVar5 = a0.o;
                    m(gVar5);
                    return gVar5;
                } catch (Exception unused4) {
                    StringBuilder sb4 = new StringBuilder(ic.m(str2, 69));
                    sb4.append("Exception while launching billing flow: ; for sku: ");
                    sb4.append(str2);
                    sb4.append("; try to reconnect");
                    zza.zzb("BillingClient", sb4.toString());
                    g gVar6 = a0.n;
                    m(gVar6);
                    return gVar6;
                }
            } else {
                zza.zzb("BillingClient", "Current client doesn't support multi-item purchases.");
                g gVar7 = a0.r;
                m(gVar7);
                return gVar7;
            }
        } else {
            zza.zzb("BillingClient", "Current client doesn't support subscriptions.");
            g gVar8 = a0.p;
            m(gVar8);
            return gVar8;
        }
    }

    @Override // com.android.billingclient.api.c
    public void g(String str, l lVar) {
        if (!d()) {
            ((zzah) lVar).g(a0.n, null);
        } else if (r(new p0(this, str, lVar), 30000, new r0(lVar)) == null) {
            ((zzah) lVar).g(E(), null);
        }
    }

    @Override // com.android.billingclient.api.c
    public j.a h(String str) {
        if (!d()) {
            return new j.a(a0.n, null);
        }
        if (TextUtils.isEmpty(str)) {
            zza.zzb("BillingClient", "Please provide a valid SKU type.");
            return new j.a(a0.g, null);
        }
        try {
            return (j.a) r(new r(this, str), 5000, null).get(5000, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException unused) {
            return new j.a(a0.o, null);
        } catch (Exception unused2) {
            return new j.a(a0.l, null);
        }
    }

    @Override // com.android.billingclient.api.c
    public void i(o oVar, p pVar) {
        if (!d()) {
            pVar.a(a0.n, null);
            return;
        }
        String a2 = oVar.a();
        List<String> b2 = oVar.b();
        if (TextUtils.isEmpty(a2)) {
            zza.zzb("BillingClient", "Please fix the input params. SKU type can't be empty.");
            pVar.a(a0.g, null);
        } else if (b2 == null) {
            zza.zzb("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            pVar.a(a0.f, null);
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str : b2) {
                f0.a aVar = new f0.a(null);
                aVar.a(str);
                arrayList.add(aVar.b());
            }
            if (r(new u(this, a2, arrayList, null, pVar), 30000, new k0(pVar)) == null) {
                pVar.a(E(), null);
            }
        }
    }

    @Override // com.android.billingclient.api.c
    public void j(e eVar) {
        ServiceInfo serviceInfo;
        if (d()) {
            zza.zza("BillingClient", "Service connection is valid. No need to re-initialize.");
            eVar.d(a0.m);
            return;
        }
        int i2 = this.a;
        if (i2 == 1) {
            zza.zzb("BillingClient", "Client is already in the process of connecting to billing service.");
            eVar.d(a0.d);
        } else if (i2 == 3) {
            zza.zzb("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            eVar.d(a0.n);
        } else {
            this.a = 1;
            this.d.b();
            zza.zza("BillingClient", "Starting in-app billing setup.");
            this.h = new a(eVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f.getPackageManager().queryIntentServices(intent, 0);
            if (!(queryIntentServices == null || queryIntentServices.isEmpty() || (serviceInfo = queryIntentServices.get(0).serviceInfo) == null)) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zza.zzb("BillingClient", "The device doesn't have valid Play Store.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.b);
                    if (this.f.bindService(intent2, this.h, 1)) {
                        zza.zza("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    zza.zzb("BillingClient", "Connection to Billing service is blocked.");
                }
            }
            this.a = 0;
            zza.zza("BillingClient", "Billing service unavailable on device.");
            eVar.d(a0.c);
        }
    }

    /* access modifiers changed from: package-private */
    public final n.a o(String str, List<f0> list, String str2) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 20;
            ArrayList arrayList2 = new ArrayList(list.subList(i2, i3 > size ? size : i3));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj = arrayList2.get(i4);
                i4++;
                arrayList3.add(((f0) obj).a());
            }
            Bundle bundle2 = new Bundle();
            bundle2.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle2.putString("playBillingLibraryVersion", this.b);
            try {
                if (this.o) {
                    bundle = this.g.zza(10, this.f.getPackageName(), str, bundle2, zza.zza(this.k, this.s, this.b, str2, arrayList2));
                } else {
                    bundle = this.g.zza(3, this.f.getPackageName(), str, bundle2);
                }
                if (bundle == null) {
                    zza.zzb("BillingClient", "querySkuDetailsAsync got null sku details list");
                    return new n.a(4, "Item is unavailable for purchase.", null);
                } else if (!bundle.containsKey("DETAILS_LIST")) {
                    int zza = zza.zza(bundle, "BillingClient");
                    String zzb = zza.zzb(bundle, "BillingClient");
                    if (zza != 0) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(zza);
                        zza.zzb("BillingClient", sb.toString());
                        return new n.a(zza, zzb, arrayList);
                    }
                    zza.zzb("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new n.a(6, zzb, arrayList);
                } else {
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        zza.zzb("BillingClient", "querySkuDetailsAsync got null response list");
                        return new n.a(4, "Item is unavailable for purchase.", null);
                    }
                    for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                        try {
                            n nVar = new n(stringArrayList.get(i5));
                            String valueOf = String.valueOf(nVar);
                            StringBuilder sb2 = new StringBuilder(valueOf.length() + 17);
                            sb2.append("Got sku details: ");
                            sb2.append(valueOf);
                            zza.zza("BillingClient", sb2.toString());
                            arrayList.add(nVar);
                        } catch (JSONException unused) {
                            zza.zzb("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                            return new n.a(6, "Error trying to decode SkuDetails.", null);
                        }
                    }
                    i2 = i3;
                }
            } catch (Exception e2) {
                String valueOf2 = String.valueOf(e2);
                StringBuilder sb3 = new StringBuilder(valueOf2.length() + "querySkuDetailsAsync got a remote exception (try to reconnect).".length());
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(valueOf2);
                zza.zzb("BillingClient", sb3.toString());
                return new n.a(-1, "Service connection is disconnected.", null);
            }
        }
        return new n.a(0, "", arrayList);
    }
}

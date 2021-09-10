package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.ADRequestList;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@DynamiteApi
public class AppMeasurementDynamiteService extends zzo {
    j4 b = null;
    private final Map<Integer, k5> c = new x();

    @EnsuresNonNull({"scion"})
    private final void O() {
        if (this.b == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void beginAdUnitExposure(@RecentlyNonNull String str, long j) {
        O();
        this.b.f().h(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        O();
        this.b.D().A(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void clearMeasurementEnabled(long j) {
        O();
        l6 D = this.b.D();
        D.i();
        D.a.e().q(new f6(D, null));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void endAdUnitExposure(@RecentlyNonNull String str, long j) {
        O();
        this.b.f().i(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void generateEventId(zzs zzs) {
        O();
        long c0 = this.b.E().c0();
        O();
        this.b.E().Q(zzs, c0);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getAppInstanceId(zzs zzs) {
        O();
        this.b.e().q(new x5(this, zzs));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCachedAppInstanceId(zzs zzs) {
        O();
        String p = this.b.D().p();
        O();
        this.b.E().P(zzs, p);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getConditionalUserProperties(String str, String str2, zzs zzs) {
        O();
        this.b.e().q(new i9(this, zzs, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCurrentScreenClass(zzs zzs) {
        O();
        r6 v = this.b.D().a.O().v();
        String str = v != null ? v.b : null;
        O();
        this.b.E().P(zzs, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCurrentScreenName(zzs zzs) {
        O();
        r6 v = this.b.D().a.O().v();
        String str = v != null ? v.a : null;
        O();
        this.b.E().P(zzs, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getGmpAppId(zzs zzs) {
        O();
        String F = this.b.D().F();
        O();
        this.b.E().P(zzs, F);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getMaxUserProperties(String str, zzs zzs) {
        O();
        l6 D = this.b.D();
        Objects.requireNonNull(D);
        n.e(str);
        D.a.x();
        O();
        this.b.E().R(zzs, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getTestFlag(zzs zzs, int i) {
        O();
        if (i == 0) {
            h9 E = this.b.E();
            l6 D = this.b.D();
            Objects.requireNonNull(D);
            AtomicReference atomicReference = new AtomicReference();
            E.P(zzs, (String) D.a.e().r(atomicReference, 15000, "String test flag value", new b6(D, atomicReference)));
        } else if (i == 1) {
            h9 E2 = this.b.E();
            l6 D2 = this.b.D();
            Objects.requireNonNull(D2);
            AtomicReference atomicReference2 = new AtomicReference();
            E2.Q(zzs, ((Long) D2.a.e().r(atomicReference2, 15000, "long test flag value", new c6(D2, atomicReference2))).longValue());
        } else if (i == 2) {
            h9 E3 = this.b.E();
            l6 D3 = this.b.D();
            Objects.requireNonNull(D3);
            AtomicReference atomicReference3 = new AtomicReference();
            double doubleValue = ((Double) D3.a.e().r(atomicReference3, 15000, "double test flag value", new e6(D3, atomicReference3))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble(ADRequestList.ORDER_R, doubleValue);
            try {
                zzs.zzb(bundle);
            } catch (RemoteException e) {
                E3.a.c().q().b("Error returning double value to wrapper", e);
            }
        } else if (i == 3) {
            h9 E4 = this.b.E();
            l6 D4 = this.b.D();
            Objects.requireNonNull(D4);
            AtomicReference atomicReference4 = new AtomicReference();
            E4.R(zzs, ((Integer) D4.a.e().r(atomicReference4, 15000, "int test flag value", new d6(D4, atomicReference4))).intValue());
        } else if (i == 4) {
            h9 E5 = this.b.E();
            l6 D5 = this.b.D();
            Objects.requireNonNull(D5);
            AtomicReference atomicReference5 = new AtomicReference();
            E5.T(zzs, ((Boolean) D5.a.e().r(atomicReference5, 15000, "boolean test flag value", new w5(D5, atomicReference5))).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getUserProperties(String str, String str2, boolean z, zzs zzs) {
        O();
        this.b.e().q(new x7(this, zzs, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void initForTests(@RecentlyNonNull Map map) {
        O();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void initialize(zv zvVar, zzy zzy, long j) {
        j4 j4Var = this.b;
        if (j4Var == null) {
            Context context = (Context) aw.P(zvVar);
            Objects.requireNonNull(context, "null reference");
            this.b = j4.g(context, zzy, Long.valueOf(j));
            return;
        }
        j4Var.c().q().a("Attempting to initialize multiple times");
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void isDataCollectionEnabled(zzs zzs) {
        O();
        this.b.e().q(new j9(this, zzs));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logEvent(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle, boolean z, boolean z2, long j) {
        O();
        this.b.D().T(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzs zzs, long j) {
        Bundle bundle2;
        O();
        n.e(str2);
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        bundle2.putString("_o", "app");
        this.b.e().q(new x6(this, zzs, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logHealthData(int i, @RecentlyNonNull String str, @RecentlyNonNull zv zvVar, @RecentlyNonNull zv zvVar2, @RecentlyNonNull zv zvVar3) {
        Object obj;
        Object obj2;
        O();
        Object obj3 = null;
        if (zvVar == null) {
            obj = null;
        } else {
            obj = aw.P(zvVar);
        }
        if (zvVar2 == null) {
            obj2 = null;
        } else {
            obj2 = aw.P(zvVar2);
        }
        if (zvVar3 != null) {
            obj3 = aw.P(zvVar3);
        }
        this.b.c().x(i, true, false, str, obj, obj2, obj3);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityCreated(@RecentlyNonNull zv zvVar, @RecentlyNonNull Bundle bundle, long j) {
        O();
        k6 k6Var = this.b.D().c;
        if (k6Var != null) {
            this.b.D().M();
            k6Var.onActivityCreated((Activity) aw.P(zvVar), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityDestroyed(@RecentlyNonNull zv zvVar, long j) {
        O();
        k6 k6Var = this.b.D().c;
        if (k6Var != null) {
            this.b.D().M();
            k6Var.onActivityDestroyed((Activity) aw.P(zvVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityPaused(@RecentlyNonNull zv zvVar, long j) {
        O();
        k6 k6Var = this.b.D().c;
        if (k6Var != null) {
            this.b.D().M();
            k6Var.onActivityPaused((Activity) aw.P(zvVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityResumed(@RecentlyNonNull zv zvVar, long j) {
        O();
        k6 k6Var = this.b.D().c;
        if (k6Var != null) {
            this.b.D().M();
            k6Var.onActivityResumed((Activity) aw.P(zvVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivitySaveInstanceState(zv zvVar, zzs zzs, long j) {
        O();
        k6 k6Var = this.b.D().c;
        Bundle bundle = new Bundle();
        if (k6Var != null) {
            this.b.D().M();
            k6Var.onActivitySaveInstanceState((Activity) aw.P(zvVar), bundle);
        }
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e) {
            this.b.c().q().b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityStarted(@RecentlyNonNull zv zvVar, long j) {
        O();
        if (this.b.D().c != null) {
            this.b.D().M();
            Activity activity = (Activity) aw.P(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityStopped(@RecentlyNonNull zv zvVar, long j) {
        O();
        if (this.b.D().c != null) {
            this.b.D().M();
            Activity activity = (Activity) aw.P(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void performAction(Bundle bundle, zzs zzs, long j) {
        O();
        zzs.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void registerOnMeasurementEventListener(zzv zzv) {
        k5 k5Var;
        O();
        synchronized (this.c) {
            k5Var = this.c.get(Integer.valueOf(zzv.zze()));
            if (k5Var == null) {
                k5Var = new l9(this, zzv);
                this.c.put(Integer.valueOf(zzv.zze()), k5Var);
            }
        }
        this.b.D().v(k5Var);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void resetAnalyticsData(long j) {
        O();
        this.b.D().r(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConditionalUserProperty(@RecentlyNonNull Bundle bundle, long j) {
        O();
        if (bundle == null) {
            this.b.c().n().a("Conditional user property must not be null");
        } else {
            this.b.D().z(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConsent(@RecentlyNonNull Bundle bundle, long j) {
        O();
        l6 D = this.b.D();
        zzlc.zzb();
        if (D.a.x().u(null, v2.w0)) {
            D.N(bundle, 30, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConsentThirdParty(@RecentlyNonNull Bundle bundle, long j) {
        O();
        l6 D = this.b.D();
        zzlc.zzb();
        if (D.a.x().u(null, v2.x0)) {
            D.N(bundle, 10, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setCurrentScreen(@RecentlyNonNull zv zvVar, @RecentlyNonNull String str, @RecentlyNonNull String str2, long j) {
        O();
        this.b.O().u((Activity) aw.P(zvVar), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setDataCollectionEnabled(boolean z) {
        O();
        l6 D = this.b.D();
        D.i();
        D.a.e().q(new o5(D, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setDefaultEventParameters(@RecentlyNonNull Bundle bundle) {
        Bundle bundle2;
        O();
        l6 D = this.b.D();
        if (bundle == null) {
            bundle2 = null;
        } else {
            bundle2 = new Bundle(bundle);
        }
        D.a.e().q(new m5(D, bundle2));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setEventInterceptor(zzv zzv) {
        O();
        k9 k9Var = new k9(this, zzv);
        if (this.b.e().n()) {
            this.b.D().u(k9Var);
        } else {
            this.b.e().q(new x8(this, k9Var));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setInstanceIdProvider(zzx zzx) {
        O();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setMeasurementEnabled(boolean z, long j) {
        O();
        l6 D = this.b.D();
        Boolean valueOf = Boolean.valueOf(z);
        D.i();
        D.a.e().q(new f6(D, valueOf));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setMinimumSessionDuration(long j) {
        O();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setSessionTimeoutDuration(long j) {
        O();
        l6 D = this.b.D();
        D.a.e().q(new q5(D, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setUserId(@RecentlyNonNull String str, long j) {
        O();
        this.b.D().W(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull zv zvVar, boolean z, long j) {
        O();
        this.b.D().W(str, str2, aw.P(zvVar), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void unregisterOnMeasurementEventListener(zzv zzv) {
        k5 remove;
        O();
        synchronized (this.c) {
            remove = this.c.remove(Integer.valueOf(zzv.zze()));
        }
        if (remove == null) {
            remove = new l9(this, zzv);
        }
        this.b.D().w(remove);
    }
}

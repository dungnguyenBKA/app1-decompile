package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import androidx.core.app.b;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.measurement.internal.j4;
import com.google.android.gms.measurement.internal.m6;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Deprecated
public class AppMeasurement {
    private static volatile AppMeasurement c;
    private final j4 a;
    private final m6 b;

    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @RecentlyNonNull
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @RecentlyNonNull
        @Keep
        public String mExpiredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mExpiredEventParams;
        @RecentlyNonNull
        @Keep
        public String mName;
        @RecentlyNonNull
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @RecentlyNonNull
        @Keep
        public String mTimedOutEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTimedOutEventParams;
        @RecentlyNonNull
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @RecentlyNonNull
        @Keep
        public String mTriggeredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @RecentlyNonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        ConditionalUserProperty(Bundle bundle) {
            Objects.requireNonNull(bundle, "null reference");
            this.mAppId = (String) b.U0(bundle, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, String.class, null);
            this.mOrigin = (String) b.U0(bundle, "origin", String.class, null);
            this.mName = (String) b.U0(bundle, "name", String.class, null);
            this.mValue = b.U0(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) b.U0(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) b.U0(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) b.U0(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) b.U0(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) b.U0(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) b.U0(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) b.U0(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) b.U0(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) b.U0(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) b.U0(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) b.U0(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) b.U0(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        /* access modifiers changed from: package-private */
        public final Bundle a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString("name", str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                b.T0(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    public AppMeasurement(j4 j4Var) {
        Objects.requireNonNull(j4Var, "null reference");
        this.a = j4Var;
        this.b = null;
    }

    @RecentlyNonNull
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(@RecentlyNonNull Context context) {
        m6 m6Var;
        if (c == null) {
            synchronized (AppMeasurement.class) {
                if (c == null) {
                    try {
                        m6Var = (m6) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    } catch (ClassNotFoundException unused) {
                        m6Var = null;
                    }
                    if (m6Var != null) {
                        c = new AppMeasurement(m6Var);
                    } else {
                        c = new AppMeasurement(j4.g(context, new zzy(0, 0, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return c;
    }

    @Keep
    public void beginAdUnitExposure(@RecentlyNonNull String str) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            m6Var.a(str);
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.f().h(str, this.a.a().b());
    }

    @Keep
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            m6Var.e(str, str2, bundle);
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.D().A(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@RecentlyNonNull String str) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            m6Var.d(str);
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.f().i(str, this.a.a().b());
    }

    @Keep
    public long generateEventId() {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.zzk();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.E().c0();
    }

    @RecentlyNonNull
    @Keep
    public String getAppInstanceId() {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.zzi();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.D().p();
    }

    @RecentlyNonNull
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        List<Bundle> list;
        int i;
        m6 m6Var = this.b;
        if (m6Var != null) {
            list = m6Var.b(str, str2);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            list = this.a.D().B(str, str2);
        }
        if (list == null) {
            i = 0;
        } else {
            i = list.size();
        }
        ArrayList arrayList = new ArrayList(i);
        for (Bundle bundle : list) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenClass() {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.zzh();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.D().E();
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenName() {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.zzg();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.D().D();
    }

    @RecentlyNonNull
    @Keep
    public String getGmpAppId() {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.zzj();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.D().F();
    }

    @Keep
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.f(str);
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.D().x(str);
        return 25;
    }

    /* access modifiers changed from: protected */
    @RecentlyNonNull
    @Keep
    public Map<String, Object> getUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2, boolean z) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            return m6Var.g(str, str2, z);
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.D().C(str, str2, z);
    }

    @Keep
    public void logEventInternal(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        m6 m6Var = this.b;
        if (m6Var != null) {
            m6Var.zza(str, str2, bundle);
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.D().Q(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@RecentlyNonNull ConditionalUserProperty conditionalUserProperty) {
        Objects.requireNonNull(conditionalUserProperty, "null reference");
        m6 m6Var = this.b;
        if (m6Var != null) {
            m6Var.c(conditionalUserProperty.a());
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        this.a.D().y(conditionalUserProperty.a());
    }

    public AppMeasurement(m6 m6Var) {
        Objects.requireNonNull(m6Var, "null reference");
        this.b = m6Var;
        this.a = null;
    }
}

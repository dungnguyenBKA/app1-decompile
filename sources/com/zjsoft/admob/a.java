package com.zjsoft.admob;

import android.content.Context;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;

public class a {
    public static final String a = b.class.getName();
    public static final String b = g.class.getName();
    public static final String c = k.class.getName();
    public static final String d = e.class.getName();
    private static boolean e = false;
    private static boolean f = false;

    /* access modifiers changed from: package-private */
    /* renamed from: com.zjsoft.admob.a$a  reason: collision with other inner class name */
    public class C0086a implements OnInitializationCompleteListener {
        final /* synthetic */ Context a;
        final /* synthetic */ d b;

        C0086a(Context context, d dVar) {
            this.a = context;
            this.b = dVar;
        }

        @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
        public void onInitializationComplete(InitializationStatus initializationStatus) {
            boolean unused = a.e = false;
            boolean unused2 = a.f = true;
            try {
                if (cc0.x(this.a)) {
                    MobileAds.setAppMuted(true);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            d dVar = this.b;
            if (dVar != null) {
                dVar.a(true);
            }
        }
    }

    public static void c(Context context, boolean z, d dVar) {
        if (z) {
            dVar.a(true);
        } else if (!e) {
            e = true;
            if (!f) {
                try {
                    MobileAds.initialize(context, new C0086a(context, dVar));
                } catch (Throwable th) {
                    th.printStackTrace();
                    e = false;
                    dVar.a(false);
                }
            } else {
                e = false;
                dVar.a(true);
            }
        } else {
            dVar.a(false);
        }
    }

    static void d() {
        RequestConfiguration.Builder builder = MobileAds.getRequestConfiguration().toBuilder();
        builder.setTagForChildDirectedTreatment(1);
        builder.setMaxAdContentRating("G");
        MobileAds.setRequestConfiguration(builder.build());
    }
}

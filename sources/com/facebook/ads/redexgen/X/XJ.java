package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.Repairable;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

public class XJ extends AnonymousClass8D {
    public static String[] A03;
    public WeakHashMap<Repairable, Boolean> A00 = new WeakHashMap<>();
    public final WeakReference<Activity> A01;
    public final AtomicReference<AnonymousClass0R> A02 = new AtomicReference<>();

    static {
        A01();
    }

    public static void A01() {
        A03 = new String[]{"X2XwTp9cKPrsKt8nnsNrr4kzY8H6fo9U", "SYDx4pa2oLtOnCxt4l9slcAsJVX17", "Ktbncp6BUHUyG8VpVa87zDZ4pVgXb", "697llskWaiD0", "zjkPaZGeICZRQbBHOdPJm8zqRs5ofq42", "OjtN7hHvLZrci2lMJuqCcc7IsxYWRGMj", "Pfr7ktMWLkOUKtldLLax33ooDo", "AIe8uS1x9EYXvM4HhYe86uhhSayJeZWe"};
    }

    public XJ(Activity activity, AnonymousClass8F r3, AnonymousClass0R r4) {
        super(activity.getApplicationContext(), r3);
        this.A02.set(r4);
        this.A01 = new WeakReference<>(activity);
    }

    public XJ(Context context, AnonymousClass8F r4, AnonymousClass0R r5) {
        super(context.getApplicationContext(), r4);
        this.A02.set(r5);
        Activity A002 = A00(context);
        if (A002 != null) {
            this.A01 = new WeakReference<>(A002);
        } else {
            this.A01 = new WeakReference<>(null);
        }
    }

    @Nullable
    public static Activity A00(Context context) {
        while (true) {
            boolean z = context instanceof ContextWrapper;
            if (A03[3].length() != 12) {
                throw new RuntimeException();
            }
            A03[6] = "yJQbBA22nGzLcakEAa6nG1va8g";
            if (!z) {
                return null;
            }
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if ((context instanceof XJ) && ((XJ) context).A09() != null) {
                return ((XJ) context).A09();
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
    }

    @Nullable
    public final Activity A09() {
        return this.A01.get();
    }

    public AnonymousClass0R A0A() {
        AnonymousClass0R r0 = this.A02.get();
        if (r0 == null) {
            return new C0782Rd();
        }
        return r0;
    }

    public final void A0B(AnonymousClass0R r2) {
        this.A02.set(r2);
    }

    public final void A0C(Repairable repairable) {
        this.A00.put(repairable, true);
    }

    public final void A0D(XJ xj) {
        xj.A00.putAll(this.A00);
        this.A00 = xj.A00;
    }

    public final void A0E(Throwable th) {
        for (Map.Entry<Repairable, Boolean> entry : this.A00.entrySet()) {
            if (A03[3].length() != 12) {
                throw new RuntimeException();
            }
            A03[7] = "uNK1zxgBt2FFcnYPdsvApaChXeSIkfOy";
            entry.getKey().repair(th);
        }
    }
}

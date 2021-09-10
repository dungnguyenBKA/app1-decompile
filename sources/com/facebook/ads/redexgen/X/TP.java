package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class TP extends C01772d {
    public static String[] A02;
    public final C01772d A00 = new TO(this);
    public final C0469Eq A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"kCJseLSqSIrXu4CFjUZgH7qP37OfZeHD", "xEAmwUG5TGVzyoKH1PTTnmgJSds6zi0t", "yfye5wiKddzXjwKpYSAHRZ10SdbOyGIS", "FmBYeFx3U0BhjOzbepjZtX", "pFd99JFbVQiCxR8NKRmLZvqZPwpJ8hMq", "9sA", "zOMSQIOQC2uzgyYA4i3GoXbtL5yC1N4Y", "6JUJmYz6"};
    }

    public TP(C0469Eq eq) {
        this.A01 = eq;
    }

    @Override // com.facebook.ads.redexgen.X.C01772d
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C0469Eq.class.getName());
        if ((view instanceof C0469Eq) && !A0B()) {
            C0469Eq eq = (C0469Eq) view;
            if (eq.getLayoutManager() != null) {
                eq.getLayoutManager().A1y(accessibilityEvent);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C01772d
    public final void A08(View view, AnonymousClass3O r3) {
        super.A08(view, r3);
        r3.A0P(C0469Eq.class.getName());
        if (!A0B() && this.A01.getLayoutManager() != null) {
            this.A01.getLayoutManager().A1G(r3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C01772d
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            String[] strArr = A02;
            if (strArr[2].charAt(11) != strArr[0].charAt(11)) {
                throw new RuntimeException();
            }
            A02[4] = "nByhcE3HAON4xHhAaRL71J2smf2uyoDS";
            return true;
        } else if (A0B() || this.A01.getLayoutManager() == null) {
            return false;
        } else {
            AnonymousClass4K layoutManager = this.A01.getLayoutManager();
            if (A02[5].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[7] = "ZdbAAVtg";
            strArr2[3] = "rBKlzqXoYmUf6BYv0O8fT1";
            return layoutManager.A1a(i, bundle);
        }
    }

    public final C01772d A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1u();
    }
}

package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;

public final class n9 {
    private final j4 a;

    public n9(j4 j4Var) {
        this.a = j4Var;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.a.e().g();
        if (e()) {
            if (d()) {
                this.a.y().z.b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1);
                this.a.D().Q("auto", "_cmpx", bundle);
            } else {
                String a2 = this.a.y().z.a();
                if (TextUtils.isEmpty(a2)) {
                    this.a.c().o().a("Cache still valid but referrer not found");
                } else {
                    long a3 = ((this.a.y().A.a() / 3600000) - 1) * 3600000;
                    Uri parse = Uri.parse(a2);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", a3);
                    this.a.D().Q((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                this.a.y().z.b(null);
            }
            this.a.y().A.b(0);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(String str, Bundle bundle) {
        String str2;
        this.a.e().g();
        if (!this.a.j()) {
            if (bundle.isEmpty()) {
                str2 = null;
            } else {
                if (true == str.isEmpty()) {
                    str = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str);
                for (String str3 : bundle.keySet()) {
                    builder.appendQueryParameter(str3, bundle.getString(str3));
                }
                str2 = builder.build().toString();
            }
            if (!TextUtils.isEmpty(str2)) {
                this.a.y().z.b(str2);
                this.a.y().A.b(this.a.a().a());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (e() && d()) {
            this.a.y().z.b(null);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        if (e() && this.a.a().a() - this.a.y().A.a() > this.a.x().q(null, v2.R)) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean e() {
        return this.a.y().A.a() > 0;
    }
}

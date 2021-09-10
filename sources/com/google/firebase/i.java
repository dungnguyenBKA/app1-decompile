package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.util.m;
import java.util.Arrays;

public final class i {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;

    private i(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        n.k(!m.a(str), "ApplicationId must be set.");
        this.b = str;
        this.a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static i a(Context context) {
        p pVar = new p(context);
        String a2 = pVar.a("google_app_id");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        return new i(a2, pVar.a("google_api_key"), pVar.a("firebase_database_url"), pVar.a("ga_trackingId"), pVar.a("gcm_defaultSenderId"), pVar.a("google_storage_bucket"), pVar.a("project_id"));
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (!com.google.android.gms.common.internal.m.a(this.b, iVar.b) || !com.google.android.gms.common.internal.m.a(this.a, iVar.a) || !com.google.android.gms.common.internal.m.a(this.c, iVar.c) || !com.google.android.gms.common.internal.m.a(this.d, iVar.d) || !com.google.android.gms.common.internal.m.a(this.e, iVar.e) || !com.google.android.gms.common.internal.m.a(this.f, iVar.f) || !com.google.android.gms.common.internal.m.a(this.g, iVar.g)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.a, this.c, this.d, this.e, this.f, this.g});
    }

    public String toString() {
        m.a b2 = com.google.android.gms.common.internal.m.b(this);
        b2.a("applicationId", this.b);
        b2.a("apiKey", this.a);
        b2.a("databaseUrl", this.c);
        b2.a("gcmSenderId", this.e);
        b2.a("storageBucket", this.f);
        b2.a("projectId", this.g);
        return b2.toString();
    }
}

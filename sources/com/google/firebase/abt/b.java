package com.google.firebase.abt;

import android.text.TextUtils;
import defpackage.vy;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

public class b {
    private static final String[] g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};
    static final DateFormat h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
    private final String a;
    private final String b;
    private final String c;
    private final Date d;
    private final long e;
    private final long f;

    public b(String str, String str2, String str3, Date date, long j, long j2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = date;
        this.e = j;
        this.f = j2;
    }

    static b a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = g;
        for (String str : strArr) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            try {
                return new b(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
            } catch (ParseException e2) {
                throw new a("Could not process experiment: parsing experiment start time failed.", e2);
            } catch (NumberFormatException e3) {
                throw new a("Could not process experiment: one of the durations could not be converted into a long.", e3);
            }
        } else {
            throw new a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    /* access modifiers changed from: package-private */
    public String b() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public vy.c c(String str) {
        vy.c cVar = new vy.c();
        cVar.a = str;
        cVar.m = this.d.getTime();
        cVar.b = this.a;
        cVar.c = this.b;
        cVar.d = TextUtils.isEmpty(this.c) ? null : this.c;
        cVar.e = this.e;
        cVar.j = this.f;
        return cVar;
    }
}

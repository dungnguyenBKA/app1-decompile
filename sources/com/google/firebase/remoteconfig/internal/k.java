package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.d;
import com.google.firebase.installations.g;
import com.google.firebase.installations.l;
import com.google.firebase.remoteconfig.h;
import com.google.firebase.remoteconfig.i;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.j;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpStatus;

public class k {
    public static final long j = TimeUnit.HOURS.toSeconds(12);
    static final int[] k = {2, 4, 8, 16, 32, 64, 128, 256};
    private final g a;
    private final vy b;
    private final Executor c;
    private final d d;
    private final Random e;
    private final e f;
    private final ConfigFetchHttpClient g;
    private final n h;
    private final Map<String, String> i;

    public static class a {
        private final int a;
        private final f b;
        private final String c;

        private a(Date date, int i, f fVar, String str) {
            this.a = i;
            this.b = fVar;
            this.c = str;
        }

        public static a a(Date date) {
            return new a(date, 1, null, null);
        }

        public static a b(f fVar, String str) {
            return new a(fVar.e(), 0, fVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        public f d() {
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public String e() {
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public int f() {
            return this.a;
        }
    }

    public k(g gVar, vy vyVar, Executor executor, d dVar, Random random, e eVar, ConfigFetchHttpClient configFetchHttpClient, n nVar, Map<String, String> map) {
        this.a = gVar;
        this.b = vyVar;
        this.c = executor;
        this.d = dVar;
        this.e = random;
        this.f = eVar;
        this.g = configFetchHttpClient;
        this.h = nVar;
        this.i = map;
    }

    private a b(String str, String str2, Date date) {
        String str3;
        boolean z = false;
        try {
            HttpURLConnection b2 = this.g.b();
            ConfigFetchHttpClient configFetchHttpClient = this.g;
            HashMap hashMap = new HashMap();
            vy vyVar = this.b;
            if (vyVar != null) {
                for (Map.Entry<String, Object> entry : vyVar.a(false).entrySet()) {
                    hashMap.put(entry.getKey(), entry.getValue().toString());
                }
            }
            a fetch = configFetchHttpClient.fetch(b2, str, str2, hashMap, this.h.c(), this.i, date);
            if (fetch.e() != null) {
                this.h.h(fetch.e());
            }
            this.h.f(0, n.e);
            return fetch;
        } catch (j e2) {
            int a2 = e2.a();
            if (a2 == 429 || a2 == 502 || a2 == 503 || a2 == 504) {
                int b3 = this.h.a().b() + 1;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int[] iArr = k;
                long millis = timeUnit.toMillis((long) iArr[Math.min(b3, iArr.length) - 1]);
                this.h.f(b3, new Date(date.getTime() + (millis / 2) + ((long) this.e.nextInt((int) millis))));
            }
            n.a a3 = this.h.a();
            int a4 = e2.a();
            if (a3.b() > 1 || a4 == 429) {
                z = true;
            }
            if (!z) {
                int a5 = e2.a();
                if (a5 == 401) {
                    str3 = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
                } else if (a5 == 403) {
                    str3 = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
                } else if (a5 == 429) {
                    throw new com.google.firebase.remoteconfig.g("The throttled response from the server was not handled correctly by the FRC SDK.");
                } else if (a5 != 500) {
                    switch (a5) {
                        case HttpStatus.SC_BAD_GATEWAY /*{ENCODED_INT: 502}*/:
                        case HttpStatus.SC_SERVICE_UNAVAILABLE /*{ENCODED_INT: 503}*/:
                        case HttpStatus.SC_GATEWAY_TIMEOUT /*{ENCODED_INT: 504}*/:
                            str3 = "The server is unavailable. Please try again later.";
                            break;
                        default:
                            str3 = "The server returned an unexpected error.";
                            break;
                    }
                } else {
                    str3 = "There was an internal server error.";
                }
                throw new j(e2.a(), ic.i("Fetch failed: ", str3), e2);
            }
            throw new i(a3.a().getTime());
        }
    }

    static kw c(k kVar, long j2, kw kwVar) {
        kw<TContinuationResult> kwVar2;
        boolean z;
        Objects.requireNonNull(kVar);
        Date date = new Date(kVar.d.a());
        if (kwVar.m()) {
            Date d2 = kVar.h.d();
            if (d2.equals(n.d)) {
                z = false;
            } else {
                z = date.before(new Date(TimeUnit.SECONDS.toMillis(j2) + d2.getTime()));
            }
            if (z) {
                return nw.d(a.c(date));
            }
        }
        Date a2 = kVar.h.a().a();
        if (!date.before(a2)) {
            a2 = null;
        }
        if (a2 != null) {
            kwVar2 = nw.c(new i(String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(a2.getTime() - date.getTime()))), a2.getTime()));
        } else {
            kw<String> id = kVar.a.getId();
            kw<l> a3 = kVar.a.a(false);
            kwVar2 = nw.f(id, a3).h(kVar.c, h.a(kVar, id, a3, date));
        }
        return kwVar2.h(kVar.c, i.a(kVar, date));
    }

    static kw d(k kVar, kw kwVar, kw kwVar2, Date date) {
        if (!kwVar.m()) {
            return nw.c(new com.google.firebase.remoteconfig.g("Firebase Installations failed to get installation ID for fetch.", kwVar.i()));
        }
        if (!kwVar2.m()) {
            return nw.c(new com.google.firebase.remoteconfig.g("Firebase Installations failed to get installation auth token for fetch.", kwVar2.i()));
        }
        String str = (String) kwVar.j();
        String a2 = ((l) kwVar2.j()).a();
        Objects.requireNonNull(kVar);
        try {
            a b2 = kVar.b(str, a2, date);
            if (b2.f() != 0) {
                return nw.d(b2);
            }
            return kVar.f.h(b2.d()).o(kVar.c, j.b(b2));
        } catch (h e2) {
            return nw.c(e2);
        }
    }

    static kw e(k kVar, Date date, kw kwVar) {
        Objects.requireNonNull(kVar);
        if (kwVar.m()) {
            kVar.h.j(date);
        } else {
            Exception i2 = kwVar.i();
            if (i2 != null) {
                if (i2 instanceof i) {
                    kVar.h.k();
                } else {
                    kVar.h.i();
                }
            }
        }
        return kwVar;
    }

    public kw<a> a() {
        return this.f.c().h(this.c, g.a(this, this.h.e()));
    }
}

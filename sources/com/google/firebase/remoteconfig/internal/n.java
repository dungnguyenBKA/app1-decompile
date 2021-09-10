package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.k;
import java.util.Date;

public class n {
    static final Date d = new Date(-1);
    static final Date e = new Date(-1);
    private final SharedPreferences a;
    private final Object b = new Object();
    private final Object c = new Object();

    /* access modifiers changed from: package-private */
    public static class a {
        private int a;
        private Date b;

        a(int i, Date date) {
            this.a = i;
            this.b = date;
        }

        /* access modifiers changed from: package-private */
        public Date a() {
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public int b() {
            return this.a;
        }
    }

    public n(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    /* access modifiers changed from: package-private */
    public a a() {
        a aVar;
        synchronized (this.c) {
            aVar = new a(this.a.getInt("num_failed_fetches", 0), new Date(this.a.getLong("backoff_end_time_in_millis", -1)));
        }
        return aVar;
    }

    public long b() {
        return this.a.getLong("fetch_timeout_in_seconds", 60);
    }

    /* access modifiers changed from: package-private */
    public String c() {
        return this.a.getString("last_fetch_etag", null);
    }

    /* access modifiers changed from: package-private */
    public Date d() {
        return new Date(this.a.getLong("last_fetch_time_in_millis", -1));
    }

    public long e() {
        return this.a.getLong("minimum_fetch_interval_in_seconds", k.j);
    }

    /* access modifiers changed from: package-private */
    public void f(int i, Date date) {
        synchronized (this.c) {
            this.a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void g(k kVar) {
        synchronized (this.b) {
            this.a.edit().putLong("fetch_timeout_in_seconds", kVar.a()).putLong("minimum_fetch_interval_in_seconds", kVar.b()).commit();
        }
    }

    /* access modifiers changed from: package-private */
    public void h(String str) {
        synchronized (this.b) {
            this.a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        synchronized (this.b) {
            this.a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* access modifiers changed from: package-private */
    public void j(Date date) {
        synchronized (this.b) {
            this.a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* access modifiers changed from: package-private */
    public void k() {
        synchronized (this.b) {
            this.a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}

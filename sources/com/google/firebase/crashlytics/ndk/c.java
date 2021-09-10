package com.google.firebase.crashlytics.ndk;

class c implements zy {
    private final e a;

    c(e eVar) {
        this.a = eVar;
    }

    @Override // defpackage.zy
    public boolean a(String str) {
        ((b) this.a).a(str);
        return true;
    }

    @Override // defpackage.zy
    public cz b(String str) {
        return new h(((b) this.a).b(str));
    }

    @Override // defpackage.zy
    public void c(String str, int i, String str2, int i2, long j, long j2, boolean z, int i3, String str3, String str4) {
        ((b) this.a).h(str, i, str2, i2, j, j2, z, i3, str3, str4);
    }

    @Override // defpackage.zy
    public void d(String str, String str2, long j) {
        ((b) this.a).f(str, str2, j);
    }

    @Override // defpackage.zy
    public boolean e(String str) {
        return ((b) this.a).d(str);
    }

    @Override // defpackage.zy
    public void f(String str, String str2, String str3, String str4, String str5, int i, String str6) {
        ((b) this.a).g(str, str2, str3, str4, str5, i, str6);
    }

    @Override // defpackage.zy
    public void g(String str, String str2, String str3, boolean z) {
        ((b) this.a).j(str, str2, str3, z);
    }

    @Override // defpackage.zy
    public boolean h(String str) {
        boolean e = ((b) this.a).e(str);
        if (!e) {
            az f = az.f();
            f.i("Failed to initialize Crashlytics NDK for session " + str);
        }
        return e;
    }
}

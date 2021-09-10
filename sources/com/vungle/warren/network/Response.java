package com.vungle.warren.network;

import defpackage.jh0;
import defpackage.lh0;
import org.apache.http.HttpStatus;

public final class Response<T> {
    private final T body;
    private final mh0 errorBody;
    private final lh0 rawResponse;

    private Response(lh0 lh0, T t, mh0 mh0) {
        this.rawResponse = lh0;
        this.body = t;
        this.errorBody = mh0;
    }

    public static <T> Response<T> error(int i, mh0 mh0) {
        if (i >= 400) {
            lh0.a aVar = new lh0.a();
            aVar.f(i);
            aVar.j("Response.error()");
            aVar.m(hh0.HTTP_1_1);
            jh0.a aVar2 = new jh0.a();
            aVar2.g("http://localhost/");
            aVar.o(aVar2.b());
            return error(mh0, aVar.c());
        }
        throw new IllegalArgumentException(ic.f("code < 400: ", i));
    }

    public static <T> Response<T> success(T t) {
        lh0.a aVar = new lh0.a();
        aVar.f(HttpStatus.SC_OK);
        aVar.j("OK");
        aVar.m(hh0.HTTP_1_1);
        jh0.a aVar2 = new jh0.a();
        aVar2.g("http://localhost/");
        aVar.o(aVar2.b());
        return success(t, aVar.c());
    }

    public T body() {
        return this.body;
    }

    public int code() {
        return this.rawResponse.L();
    }

    public mh0 errorBody() {
        return this.errorBody;
    }

    public ch0 headers() {
        return this.rawResponse.b0();
    }

    public boolean isSuccessful() {
        return this.rawResponse.i0();
    }

    public String message() {
        return this.rawResponse.j0();
    }

    public lh0 raw() {
        return this.rawResponse;
    }

    public String toString() {
        return this.rawResponse.toString();
    }

    public static <T> Response<T> success(T t, lh0 lh0) {
        if (lh0.i0()) {
            return new Response<>(lh0, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public static <T> Response<T> error(mh0 mh0, lh0 lh0) {
        if (!lh0.i0()) {
            return new Response<>(lh0, null, mh0);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }
}

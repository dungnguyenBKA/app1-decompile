package com.vungle.warren.network;

import android.util.Log;
import com.vungle.warren.network.converters.Converter;
import defpackage.lh0;
import java.io.IOException;

/* access modifiers changed from: package-private */
public final class OkHttpCall<T> implements Call<T> {
    private static final String TAG = "OkHttpCall";
    private final Converter<mh0, T> converter;
    private og0 rawCall;

    /* access modifiers changed from: package-private */
    public static final class ExceptionCatchingResponseBody extends mh0 {
        private final mh0 delegate;
        IOException thrownException;

        ExceptionCatchingResponseBody(mh0 mh0) {
            this.delegate = mh0;
        }

        @Override // defpackage.mh0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // defpackage.mh0
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // defpackage.mh0
        public fh0 contentType() {
            return this.delegate.contentType();
        }

        @Override // defpackage.mh0
        public zj0 source() {
            return ik0.c(new dk0(this.delegate.source()) {
                /* class com.vungle.warren.network.OkHttpCall.ExceptionCatchingResponseBody.AnonymousClass1 */

                @Override // defpackage.rk0, defpackage.dk0
                public long read(xj0 xj0, long j) {
                    try {
                        return super.read(xj0, j);
                    } catch (IOException e) {
                        ExceptionCatchingResponseBody.this.thrownException = e;
                        throw e;
                    }
                }
            });
        }

        /* access modifiers changed from: package-private */
        public void throwIfCaught() {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class NoContentResponseBody extends mh0 {
        private final long contentLength;
        private final fh0 contentType;

        NoContentResponseBody(fh0 fh0, long j) {
            this.contentType = fh0;
            this.contentLength = j;
        }

        @Override // defpackage.mh0
        public long contentLength() {
            return this.contentLength;
        }

        @Override // defpackage.mh0
        public fh0 contentType() {
            return this.contentType;
        }

        @Override // defpackage.mh0
        public zj0 source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    OkHttpCall(og0 og0, Converter<mh0, T> converter2) {
        this.rawCall = og0;
        this.converter = converter2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Response<T> parseResponse(lh0 lh0, Converter<mh0, T> converter2) {
        mh0 j = lh0.j();
        lh0.a k0 = lh0.k0();
        k0.b(new NoContentResponseBody(j.contentType(), j.contentLength()));
        lh0 c = k0.c();
        int L = c.L();
        if (L < 200 || L >= 300) {
            try {
                xj0 xj0 = new xj0();
                j.source().Y(xj0);
                return Response.error(mh0.create(j.contentType(), j.contentLength(), xj0), c);
            } finally {
                j.close();
            }
        } else if (L == 204 || L == 205) {
            j.close();
            return Response.success(null, c);
        } else {
            ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(j);
            try {
                return Response.success(converter2.convert(exceptionCatchingResponseBody), c);
            } catch (RuntimeException e) {
                exceptionCatchingResponseBody.throwIfCaught();
                throw e;
            }
        }
    }

    @Override // com.vungle.warren.network.Call
    public void enqueue(final Callback<T> callback) {
        this.rawCall.o(new pg0() {
            /* class com.vungle.warren.network.OkHttpCall.AnonymousClass1 */

            private void callFailure(Throwable th) {
                try {
                    callback.onFailure(OkHttpCall.this, th);
                } catch (Throwable th2) {
                    Log.w(OkHttpCall.TAG, "Error on executing callback", th2);
                }
            }

            @Override // defpackage.pg0
            public void onFailure(og0 og0, IOException iOException) {
                callFailure(iOException);
            }

            @Override // defpackage.pg0
            public void onResponse(og0 og0, lh0 lh0) {
                try {
                    OkHttpCall okHttpCall = OkHttpCall.this;
                    try {
                        callback.onResponse(OkHttpCall.this, okHttpCall.parseResponse(lh0, okHttpCall.converter));
                    } catch (Throwable th) {
                        Log.w(OkHttpCall.TAG, "Error on excuting callback", th);
                    }
                } catch (Throwable th2) {
                    callFailure(th2);
                }
            }
        });
    }

    @Override // com.vungle.warren.network.Call
    public Response<T> execute() {
        og0 og0;
        synchronized (this) {
            og0 = this.rawCall;
        }
        return parseResponse(og0.execute(), this.converter);
    }
}

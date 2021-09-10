package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.exoplayer2.upstream.Loader;
import com.facebook.ads.redexgen.X.HV;
import java.io.IOException;
import java.util.Arrays;

@SuppressLint({"HandlerLeak"})
public final class HU<T extends HV> extends Handler implements Runnable {
    public static byte[] A0A;
    public int A00;
    @Nullable
    public HT<T> A01;
    public IOException A02;
    public final int A03;
    public final long A04;
    public final T A05;
    public volatile Thread A06;
    public volatile boolean A07;
    public volatile boolean A08;
    public final /* synthetic */ C1092bN A09;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 16);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0A = new byte[]{-96, -61, -75, -72, -88, -75, -57, -65, -113, -75, -76, -113, -90, -115, -91, -83, -81, -78, -71, 96, -91, -78, -78, -81, -78, 96, -84, -81, -95, -92, -87, -82, -89, 96, -77, -76, -78, -91, -95, -83, -70, -45, -54, -35, -43, -54, -56, -39, -54, -55, -123, -54, -41, -41, -44, -41, -123, -47, -44, -58, -55, -50, -45, -52, -123, -40, -39, -41, -54, -58, -46, -87, -62, -71, -52, -60, -71, -73, -56, -71, -72, 116, -71, -52, -73, -71, -60, -56, -67, -61, -62, 116, -68, -75, -62, -72, -64, -67, -62, -69, 116, -64, -61, -75, -72, 116, -73, -61, -63, -60, -64, -71, -56, -71, -72, -38, -13, -22, -3, -11, -22, -24, -7, -22, -23, -91, -22, -3, -24, -22, -11, -7, -18, -12, -13, -91, -15, -12, -26, -23, -18, -13, -20, -91, -8, -7, -9, -22, -26, -14, -94, -91, -105, -102, 112};
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public HU(C1092bN bNVar, Looper looper, T loadable, HT<T> ht, int i, long j) {
        super(looper);
        this.A09 = bNVar;
        this.A05 = loadable;
        this.A01 = ht;
        this.A03 = i;
        this.A04 = j;
    }

    private long A00() {
        return (long) Math.min((this.A00 - 1) * AdError.NETWORK_ERROR_CODE, 5000);
    }

    private void A02() {
        this.A02 = null;
        this.A09.A02.execute(this.A09.A00);
    }

    private void A03() {
        this.A09.A00 = null;
    }

    public final void A05(int i) throws IOException {
        Loader.LoadTask<T> loadTask = this.A02;
        if (loadTask != null && this.A00 > i) {
            throw loadTask;
        }
    }

    public final void A06(long j) {
        boolean z;
        if (this.A09.A00 == null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        this.A09.A00 = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            A02();
        }
    }

    public final void A07(boolean z) {
        this.A08 = z;
        this.A02 = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.A07 = true;
            this.A05.A3z();
            if (this.A06 != null) {
                this.A06.interrupt();
            }
        }
        if (z) {
            A03();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.A01.AAa(this.A05, elapsedRealtime, elapsedRealtime - this.A04, true);
            this.A01 = null;
        }
    }

    public final void handleMessage(Message message) {
        if (!KT.A02(this)) {
            try {
                if (!this.A08) {
                    if (message.what == 0) {
                        A02();
                    } else if (message.what != 4) {
                        A03();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        long j = elapsedRealtime - this.A04;
                        if (this.A07) {
                            this.A01.AAa(this.A05, elapsedRealtime, j, false);
                            return;
                        }
                        int i = message.what;
                        if (i == 1) {
                            this.A01.AAa(this.A05, elapsedRealtime, j, false);
                        } else if (i == 2) {
                            this.A01.AAc(this.A05, elapsedRealtime, j);
                        } else if (i == 3) {
                            this.A02 = (IOException) message.obj;
                            int AAd = this.A01.AAd(this.A05, elapsedRealtime, j, this.A02);
                            if (AAd == 3) {
                                this.A09.A01 = this.A02;
                            } else if (AAd != 2) {
                                this.A00 = AAd == 1 ? 1 : this.A00 + 1;
                                A06(A00());
                            }
                        }
                    } else {
                        throw ((Error) message.obj);
                    }
                }
            } catch (RuntimeException e) {
                Log.e(A01(0, 8, 68), A01(71, 44, 68), e);
                this.A09.A01 = new HZ(e);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    public final void run() {
        String A012 = A01(0, 8, 68);
        if (!KT.A02(this)) {
            try {
                this.A06 = Thread.currentThread();
                if (!this.A07) {
                    IZ.A02(A01(150, 5, 38) + this.A05.getClass().getSimpleName());
                    try {
                        this.A05.A8I();
                    } finally {
                        IZ.A00();
                    }
                }
                if (!this.A08) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.A08) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (InterruptedException unused) {
                C0551Hx.A04(this.A07);
                if (!this.A08) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e2) {
                Log.e(A012, A01(115, 35, 117), e2);
                if (!this.A08) {
                    obtainMessage(3, new HZ(e2)).sendToTarget();
                }
            } catch (OutOfMemoryError e3) {
                Log.e(A012, A01(8, 32, 48), e3);
                if (!this.A08) {
                    obtainMessage(3, new HZ(e3)).sendToTarget();
                }
            } catch (Error e4) {
                Log.e(A012, A01(40, 31, 85), e4);
                if (!this.A08) {
                    obtainMessage(4, e4).sendToTarget();
                }
                throw e4;
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}

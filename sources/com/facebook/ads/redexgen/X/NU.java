package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

public class NU {
    public static String[] A07;
    public final String A00 = NU.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<AnonymousClass0R> A03;
    public final WeakReference<NV> A04;
    public final WeakReference<QE> A05;
    public final WeakReference<C1020aD> A06;

    static {
        A01();
    }

    public static void A01() {
        A07 = new String[]{"FOFLIt4izaDLaQDOMIXk8qYNT283z5pM", "oiToeohcscvINDKXEsytRf9HFldaqPXB", "4ipPd9h88IiL3d99rWL92oIsRR1k6HBA", "hPx", "0GhefH5NzI2ypbPnqUG75Cq8VmhNX1", "2b6", "snO0JYp8WiAdMwbOevXppfTs6iFhTSIS", "awSLBYFe7Md8cHgboMT9P3Pgh1wlsZGE"};
    }

    public NU(C1020aD aDVar, NV nv, QE qe, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, XJ xj) {
        this.A06 = new WeakReference<>(aDVar);
        this.A04 = new WeakReference<>(nv);
        this.A05 = new WeakReference<>(qe);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(xj.A0A());
    }

    private AnonymousClass0R A00() {
        AnonymousClass0R r0 = this.A03.get();
        if (r0 == null) {
            return new C0782Rd();
        }
        return r0;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return LG.A01(C03318n.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i, String str) {
        A00().AEX(i, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AEY();
        if (this.A06.get() != null && this.A01.get() != null && this.A02.get() != null) {
            boolean z = this.A02.get().get();
            String[] strArr = A07;
            if (strArr[4].length() != strArr[5].length()) {
                A07[1] = "xXjDpbk5Vvc7CvrBd08NYXaJ46SIZN7q";
                if (z) {
                    this.A01.get().set(true);
                    A00().AEZ();
                    if (this.A06.get().isShown()) {
                        A00().AEa();
                        new Handler(Looper.getMainLooper()).post(new C1022aF(this.A05));
                    }
                    NV nv = this.A04.get();
                    if (nv != null) {
                        new Handler(Looper.getMainLooper()).post(new NT(this, nv));
                        return;
                    }
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        C1020aD aDVar = this.A06.get();
        if (aDVar == null || aDVar.A06()) {
            A00().AEb(true);
            return;
        }
        NV nv = this.A04.get();
        if (nv != null) {
            A00().AEb(false);
            nv.AB0();
            return;
        }
        A00().AEb(true);
    }
}

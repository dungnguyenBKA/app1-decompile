package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.ads.internal.exoplayer2.offline.DownloadAction;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: com.facebook.ads.redexgen.X.Ee  reason: case insensitive filesystem */
public final class C0459Ee {
    public static byte[] A0F;
    public static String[] A0G;
    public int A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final Handler A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final EK A09;
    public final C0464Ej A0A;
    public final ArrayList<RunnableC0456Eb> A0B;
    public final ArrayList<RunnableC0456Eb> A0C;
    public final CopyOnWriteArraySet<EX> A0D;
    public final DownloadAction.Deserializer[] A0E;

    static {
        A0D();
        A0C();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0G[7].charAt(18) != 'd') {
                A0G[5] = "QeXCOK5E1pPej2TxlzyNK8QEELc16ejC";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A0C() {
        A0F = new byte[]{40, 107, 100, 105, 123, 96, 109, 123, 40, Byte.MAX_VALUE, 97, 124, 96, 40, 13, 23, 101, 80, 4, 72, 65, 69, 87, 80, 4, 75, 74, 65, 4, 96, 65, 87, 65, 86, 77, 69, 72, 77, 94, 65, 86, 4, 77, 87, 4, 86, 65, 85, 81, 77, 86, 65, 64, 10, 82, 121, 97, 120, 122, 121, 119, 114, 91, 119, 120, 119, 113, 115, 100, 54, 112, Byte.MAX_VALUE, 122, 115, 54, Byte.MAX_VALUE, 57, 121, 37, 16, 2, 26, 81, 24, 2, 81, 16, 21, 21, 20, 21, 21, 32, 50, 42, 97, 50, 53, 32, 53, 36, 97, 40, 50, 97, 34, 41, 32, 47, 38, 36, 37};
    }

    public static void A0D() {
        A0G = new String[]{"8avf0Jibg", "29lNoiTUBE2uYEjX9VQOmTXDz5OY", "iVCyimFGxTrkRtFibV9levDJM5ZeLgZu", "gsRFpTOWHqJbEx7", "Kz1bOIham", "JnXM2eLoSoNer4vADvBB94foIijHhZU8", "txozpLaaBXvdIU5pC59NuAEDTSpBHfjF", "fwU5WNlYuxW7JC9kmXc8msxXEM9ymJ0s"};
    }

    public C0459Ee(C0464Ej ej, int i, int i2, File file, DownloadAction.Deserializer... deserializerArr) {
        boolean z;
        if (deserializerArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A05(z, A05(16, 38, 67));
        this.A0A = ej;
        this.A04 = i;
        this.A05 = i2;
        this.A09 = new EK(file);
        this.A0E = deserializerArr;
        this.A01 = true;
        this.A0C = new ArrayList<>();
        this.A0B = new ArrayList<>();
        Looper myLooper = Looper.myLooper();
        this.A07 = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper);
        this.A08 = new HandlerThread(A05(54, 24, 113));
        this.A08.start();
        this.A06 = new Handler(this.A08.getLooper());
        this.A0D = new CopyOnWriteArraySet<>();
        A08();
    }

    /* access modifiers changed from: private */
    public RunnableC0456Eb A02(DownloadAction downloadAction) {
        int i = this.A00;
        this.A00 = i + 1;
        RunnableC0456Eb eb = new RunnableC0456Eb(i, this, downloadAction, this.A05, null);
        this.A0C.add(eb);
        A0K(A05(78, 13, 22), eb);
        return eb;
    }

    private void A08() {
        this.A06.post(new EV(this));
    }

    private void A09() {
        if (A0S()) {
            Iterator<EX> it = this.A0D.iterator();
            while (it.hasNext()) {
                it.next().AAI(this);
            }
        }
    }

    /* access modifiers changed from: private */
    public void A0A() {
        boolean canStartTask;
        DownloadAction A062;
        boolean z;
        if (this.A02 && !this.A03) {
            if (this.A01 || this.A0B.size() == this.A04) {
                canStartTask = true;
            } else {
                canStartTask = false;
            }
            for (int j = 0; j < this.A0C.size(); j++) {
                RunnableC0456Eb eb = this.A0C.get(j);
                if (RunnableC0456Eb.A0I(eb) && ((z = (A062 = RunnableC0456Eb.A06(eb)).A03) || !canStartTask)) {
                    boolean z2 = true;
                    int i = 0;
                    while (true) {
                        if (i >= j) {
                            break;
                        }
                        RunnableC0456Eb eb2 = this.A0C.get(i);
                        if (RunnableC0456Eb.A06(eb2).A0A(A062)) {
                            if (z) {
                                z2 = false;
                                String str = eb + A05(0, 14, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION) + eb2;
                                RunnableC0456Eb.A0D(eb2);
                            } else if (RunnableC0456Eb.A06(eb2).A03) {
                                z2 = false;
                                canStartTask = true;
                                break;
                            }
                        }
                        i++;
                    }
                    if (z2) {
                        RunnableC0456Eb.A0E(eb);
                        if (!z) {
                            this.A0B.add(eb);
                            canStartTask = this.A0B.size() == this.A04;
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void A0B() {
        if (!this.A03) {
            DownloadAction[] downloadActionArr = new DownloadAction[this.A0C.size()];
            for (int i = 0; i < this.A0C.size(); i++) {
                downloadActionArr[i] = RunnableC0456Eb.A06(this.A0C.get(i));
            }
            this.A06.post(new EW(this, downloadActionArr));
        }
    }

    /* access modifiers changed from: private */
    public void A0E(RunnableC0456Eb eb) {
        A0K(A05(91, 21, 38), eb);
        C0458Ed A0L = eb.A0L();
        Iterator<EX> it = this.A0D.iterator();
        while (it.hasNext()) {
            it.next().ABn(this, A0L);
        }
    }

    /* access modifiers changed from: private */
    public void A0F(RunnableC0456Eb eb) {
        if (!this.A03) {
            boolean A0M = eb.A0M();
            String[] strArr = A0G;
            if (strArr[2].charAt(18) != strArr[6].charAt(18)) {
                throw new RuntimeException();
            }
            A0G[5] = "MuXE9yewg4GnYpwcSobAkjsL3VeJsTJN";
            boolean z = !A0M;
            if (z) {
                this.A0B.remove(eb);
            }
            A0E(eb);
            if (eb.A0N()) {
                this.A0C.remove(eb);
                A0B();
            }
            if (z) {
                A0A();
                A09();
            }
        }
    }

    public static void A0K(String str, RunnableC0456Eb eb) {
        String str2 = str + A05(14, 2, 80) + eb;
    }

    public final int A0P(DownloadAction downloadAction) {
        C0551Hx.A04(!this.A03);
        RunnableC0456Eb A022 = A02(downloadAction);
        if (this.A02) {
            A0B();
            A0A();
            if (RunnableC0456Eb.A03(A022) == 0) {
                A0E(A022);
            }
        }
        return RunnableC0456Eb.A04(A022);
    }

    public final void A0Q() {
        C0551Hx.A04(!this.A03);
        if (this.A01) {
            this.A01 = false;
            A0A();
        }
    }

    public final void A0R(EX ex) {
        this.A0D.add(ex);
    }

    public final boolean A0S() {
        C0551Hx.A04(!this.A03);
        if (!this.A02) {
            return false;
        }
        for (int i = 0; i < this.A0C.size(); i++) {
            if (this.A0C.get(i).A0M()) {
                return false;
            }
        }
        return true;
    }

    public final C0458Ed[] A0T() {
        C0551Hx.A04(!this.A03);
        C0458Ed[] edArr = new C0458Ed[this.A0C.size()];
        for (int i = 0; i < edArr.length; i++) {
            edArr[i] = this.A0C.get(i).A0L();
        }
        return edArr;
    }
}

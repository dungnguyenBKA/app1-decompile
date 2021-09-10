package com.facebook.ads.redexgen.X;

import android.view.Surface;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.checkerframework.checker.nullness.qual.MonotonicNonNull;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class YL implements AO, AbstractC0452Dx, B7, J0, FS, HC, AbstractC0408Bo {
    public static String[] A05;
    @MonotonicNonNull
    public AT A00;
    public final C0372Ae A01 = new C0372Ae();
    public final C0375Ah A02 = new C0375Ah();
    public final I0 A03;
    public final CopyOnWriteArraySet<AbstractC0378Ak> A04 = new CopyOnWriteArraySet<>();

    static {
        A06();
    }

    public static void A06() {
        A05 = new String[]{"oWxliEG", "84CCzfJSWHAMzlT", "dVPYU5AFfnLld9", "202VfNqPV04zLFr42xUQnFXcv", "6C2OHs0d6U2aNpx0mThNdUqCMJf7H", "j36hHuSQknS9Y2BeP2DWP06EygcBzL55", "WN9koNHhTr4SbLKtJDKTY2JTPC", "f2Eog"};
    }

    /* JADX WARNING: Error to parse debug info: Index 9 out of bounds for length 8 in method: com.facebook.ads.redexgen.X.YL.A9Z(int, long, long):void, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 8
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:221)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:127)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    @Override // com.facebook.ads.redexgen.X.HC
    public final void A9Z(int i, long j, long j2) {
        A01();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public YL(@Nullable AT at, I0 i0) {
        this.A00 = at;
        this.A03 = (I0) C0551Hx.A01(i0);
    }

    private C0377Aj A00() {
        return A05(this.A02.A04());
    }

    private C0377Aj A01() {
        return A05(this.A02.A05());
    }

    private C0377Aj A02() {
        return A05(this.A02.A06());
    }

    private C0377Aj A03() {
        return A05(this.A02.A07());
    }

    private final C0377Aj A04(int i, @Nullable FC fc) {
        long j;
        C0551Hx.A01(this.A00);
        long A56 = this.A03.A56();
        AbstractC0373Af timeline = this.A00.A69();
        if (i == this.A00.A6A()) {
            if (fc == null || !fc.A02()) {
                j = this.A00.A62();
            } else if (this.A00.A64() == fc.A00 && this.A00.A65() == fc.A01) {
                j = this.A00.A67();
            } else {
                j = 0;
            }
        } else if (i >= timeline.A02() || (fc != null && fc.A02())) {
            j = 0;
        } else {
            j = timeline.A0C(i, this.A01).A00();
        }
        return new C0377Aj(A56, timeline, i, fc, j, this.A00.A67(), this.A00.A5l() - this.A00.A62());
    }

    private C0377Aj A05(@Nullable C0376Ai ai) {
        if (ai != null) {
            return A04(ai.A00, ai.A01);
        }
        int A6A = ((AT) C0551Hx.A01(this.A00)).A6A();
        return A04(A6A, this.A02.A08(A6A));
    }

    public final void A07() {
        if (!this.A02.A0G()) {
            C0377Aj A022 = A02();
            this.A02.A0A();
            Iterator<AbstractC0378Ak> it = this.A04.iterator();
            while (it.hasNext()) {
                AbstractC0378Ak next = it.next();
                String[] strArr = A05;
                if (strArr[1].length() != strArr[4].length()) {
                    String[] strArr2 = A05;
                    strArr2[1] = "PBkwxeOlbvYzAOz";
                    strArr2[4] = "zMCnce58Qhbdr93RoMzV7EOLVlkYq";
                    next.onSeekStarted(A022);
                } else {
                    throw new RuntimeException();
                }
            }
        }
    }

    public final void A08() {
        Iterator it = new ArrayList(this.A02.A05).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A05;
            if (strArr[1].length() != strArr[4].length()) {
                A05[0] = "gG2PlvUwOW39eC8R";
                if (hasNext) {
                    C0376Ai ai = (C0376Ai) it.next();
                    AAo(ai.A00, ai.A01);
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9S(String str, long j, long j2) {
        C0377Aj eventTime = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(eventTime, 1, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9T(C0394Ba ba) {
        C0377Aj A002 = A00();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(A002, 1, ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9U(C0394Ba ba) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(A022, 1, ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9V(Format format) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(A032, 1, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9W(int i) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionId(A032, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9X(int i, long j, long j2) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A05[2].length() != 13) {
                String[] strArr = A05;
                strArr[1] = "uqo4gq1KBxiMktN";
                strArr[4] = "Ndm2ibG2UK8Su1apjnSt0jhcojAUZ";
                if (hasNext) {
                    it.next().onAudioUnderrun(A032, i, j, j2);
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void A9y(int i, @Nullable FC fc, FR fr) {
        C0377Aj A042 = A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDownstreamFormatChanged(A042, fr);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0408Bo
    public final void A9z() {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysLoaded(A032);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0408Bo
    public final void AA0() {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRemoved(A032);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0408Bo
    public final void AA1() {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRestored(A032);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0408Bo
    public final void AA2(Exception exc) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionManagerError(A032, exc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void AA3(int i, long j) {
        C0377Aj A002 = A00();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDroppedVideoFrames(A002, i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAZ(int i, @Nullable FC fc, FQ fq, FR fr) {
        A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAb(int i, @Nullable FC fc, FQ fq, FR fr) {
        A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAe(int i, @Nullable FC fc, FQ fq, FR fr, IOException iOException, boolean z) {
        C0377Aj A042 = A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onLoadError(A042, fq, fr, iOException, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAg(int i, @Nullable FC fc, FQ fq, FR fr) {
        A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void AAi(boolean z) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            AbstractC0378Ak next = it.next();
            if (A05[2].length() != 13) {
                A05[5] = "61iKEbH7Elk598B8IvoVeyiFcghmzjBq";
                next.onLoadingChanged(A022, z);
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAn(int i, FC fc) {
        this.A02.A0C(i, fc);
        C0377Aj A042 = A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodCreated(A042);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void AAo(int i, FC fc) {
        this.A02.A0D(i, fc);
        C0377Aj A042 = A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A05;
            if (strArr[7].length() != strArr[6].length()) {
                String[] strArr2 = A05;
                strArr2[1] = "xQuAJnMHmsnkUtn";
                strArr2[4] = "I7nuhInD03G6TyFgZN1tEp7XA66Po";
                if (hasNext) {
                    it.next().onMediaPeriodReleased(A042);
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0452Dx
    public final void AAr(Metadata metadata) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMetadata(A022, metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void AB7(AL al) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            AbstractC0378Ak next = it.next();
            if (A05[5].charAt(25) != 'g') {
                throw new RuntimeException();
            }
            A05[5] = "6kCd761y4Sm0JC2HIy7vlDu4Zge9adCZ";
            next.onPlaybackParametersChanged(A022, al);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void AB9(A0 a0) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            AbstractC0378Ak next = it.next();
            String[] strArr = A05;
            if (strArr[7].length() != strArr[6].length()) {
                A05[3] = "4uLQlqFUz3TKu9PUP8Ua0";
                next.onPlayerError(A022, a0);
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void ABB(boolean z, int i) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPlayerStateChanged(A022, z, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void ABD(int i) {
        this.A02.A0B(i);
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(A022, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FS
    public final void ABM(int i, FC fc) {
        this.A02.A0E(i, fc);
        C0377Aj A042 = A04(i, fc);
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onReadingStarted(A042);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABQ(Surface surface) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A05;
            if (strArr[1].length() != strArr[4].length()) {
                A05[0] = "zEYrHw08cBp169ZitgaAlaUGutwvX";
                if (hasNext) {
                    it.next().onRenderedFirstFrame(A032, surface);
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void ABa() {
        if (this.A02.A0G()) {
            this.A02.A09();
            C0377Aj A022 = A02();
            Iterator<AbstractC0378Ak> it = this.A04.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed(A022);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void ABo(AbstractC0373Af af, @Nullable Object obj, int i) {
        this.A02.A0F(af);
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTimelineChanged(A022, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AO
    public final void ABp(TrackGroupArray trackGroupArray, H5 h5) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTracksChanged(A022, trackGroupArray, h5);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABx(String str, long j, long j2) {
        C0377Aj eventTime = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(eventTime, 2, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABy(C0394Ba ba) {
        C0377Aj A002 = A00();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(A002, 2, ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABz(C0394Ba ba) {
        C0377Aj A022 = A02();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(A022, 2, ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void AC2(Format format) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(A032, 2, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void AC7(int i, int i2, int i3, float f) {
        C0377Aj A032 = A03();
        Iterator<AbstractC0378Ak> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(A032, i, i2, i3, f);
        }
    }
}

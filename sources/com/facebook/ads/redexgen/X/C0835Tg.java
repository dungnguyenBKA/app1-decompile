package com.facebook.ads.redexgen.X;

import com.facebook.ads.MediaViewListener;

/* renamed from: com.facebook.ads.redexgen.X.Tg  reason: case insensitive filesystem */
public class C0835Tg implements MH {
    public final /* synthetic */ MediaViewListener A00;
    public final /* synthetic */ C0836Th A01;

    public C0835Tg(C0836Th th, MediaViewListener mediaViewListener) {
        this.A01 = th;
        this.A00 = mediaViewListener;
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void A9l() {
        this.A00.onComplete(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AA4() {
        this.A00.onEnterFullscreen(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AAA() {
        this.A00.onExitFullscreen(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AAE() {
        this.A00.onFullscreenBackground(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AAF() {
        this.A00.onFullscreenForeground(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AB4() {
        this.A00.onPlay(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void AC9() {
        this.A00.onVolumeChange(this.A01.A03, this.A01.A05.getVolume());
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final void onPause() {
        this.A00.onPause(this.A01.A03);
    }
}

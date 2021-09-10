package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;

public interface Q9 {
    void A7T();

    boolean A7d();

    boolean A7e();

    boolean A88();

    void ACK(boolean z, int i);

    void AE1(int i);

    void AE5(PO po, int i);

    void AEC(int i);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    PO getStartReason();

    QB getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(@Nullable String str);

    void setVideoStateChangeListener(QC qc);

    void setup(Uri uri);
}

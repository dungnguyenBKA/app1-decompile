package com.facebook.ads.redexgen.X;

import android.view.Surface;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Ak  reason: case insensitive filesystem */
public interface AbstractC0378Ak {
    void onAudioSessionId(C0377Aj aj, int i);

    void onAudioUnderrun(C0377Aj aj, int i, long j, long j2);

    void onDecoderDisabled(C0377Aj aj, int i, C0394Ba ba);

    void onDecoderEnabled(C0377Aj aj, int i, C0394Ba ba);

    void onDecoderInitialized(C0377Aj aj, int i, String str, long j);

    void onDecoderInputFormatChanged(C0377Aj aj, int i, Format format);

    void onDownstreamFormatChanged(C0377Aj aj, FR fr);

    void onDrmKeysLoaded(C0377Aj aj);

    void onDrmKeysRemoved(C0377Aj aj);

    void onDrmKeysRestored(C0377Aj aj);

    void onDrmSessionManagerError(C0377Aj aj, Exception exc);

    void onDroppedVideoFrames(C0377Aj aj, int i, long j);

    void onLoadError(C0377Aj aj, FQ fq, FR fr, IOException iOException, boolean z);

    void onLoadingChanged(C0377Aj aj, boolean z);

    void onMediaPeriodCreated(C0377Aj aj);

    void onMediaPeriodReleased(C0377Aj aj);

    void onMetadata(C0377Aj aj, Metadata metadata);

    void onPlaybackParametersChanged(C0377Aj aj, AL al);

    void onPlayerError(C0377Aj aj, A0 a0);

    void onPlayerStateChanged(C0377Aj aj, boolean z, int i);

    void onPositionDiscontinuity(C0377Aj aj, int i);

    void onReadingStarted(C0377Aj aj);

    void onRenderedFirstFrame(C0377Aj aj, Surface surface);

    void onSeekProcessed(C0377Aj aj);

    void onSeekStarted(C0377Aj aj);

    void onTimelineChanged(C0377Aj aj, int i);

    void onTracksChanged(C0377Aj aj, TrackGroupArray trackGroupArray, H5 h5);

    void onVideoSizeChanged(C0377Aj aj, int i, int i2, int i3, float f);
}

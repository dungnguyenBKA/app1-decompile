package com.vungle.warren.ui.view;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.LocalAdContract;
import com.vungle.warren.ui.presenter.LocalAdPresenter;
import com.vungle.warren.ui.view.FullAdWidget;
import java.io.File;

public class LocalAdView extends BaseAdView<LocalAdPresenter> implements LocalAdContract.LocalView, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private FullAdWidget.OnItemClickListener clickListener = new FullAdWidget.OnItemClickListener() {
        /* class com.vungle.warren.ui.view.LocalAdView.AnonymousClass1 */

        @Override // com.vungle.warren.ui.view.FullAdWidget.OnItemClickListener
        public void onItemClicked(int i) {
            if (i == 1) {
                LocalAdView.this.presenter.handleExit();
            } else if (i == 2) {
                LocalAdView.this.presenter.onDownload();
            } else if (i != 3) {
                if (i == 4) {
                    LocalAdView.this.presenter.onPrivacy();
                } else if (i == 5 && LocalAdView.this.ctaClickAreaEnabled) {
                    LocalAdView.this.presenter.onDownload();
                }
            } else if (LocalAdView.this.mediaPlayer != null) {
                LocalAdView.this.muteAudio();
                LocalAdView.this.presenter.onMute(LocalAdView.this.muted);
                LocalAdView localAdView = LocalAdView.this;
                localAdView.view.setMuted(localAdView.muted);
            }
        }
    };
    private boolean ctaClickAreaEnabled = false;
    private Handler handler = new Handler(Looper.getMainLooper());
    private MediaPlayer mediaPlayer;
    private boolean muted = false;
    private LocalAdContract.LocalPresenter presenter;
    private Runnable reportProgress;

    public LocalAdView(Context context, FullAdWidget fullAdWidget, OrientationDelegate orientationDelegate, CloseDelegate closeDelegate) {
        super(context, fullAdWidget, orientationDelegate, closeDelegate);
        attachListeners();
    }

    private void attachListeners() {
        this.view.setOnItemClickListener(this.clickListener);
        this.view.setOnPreparedListener(this);
        this.view.setOnErrorListener(this);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void muteAudio() {
        if (this.mediaPlayer != null) {
            this.muted = !this.muted;
            switchMuteState();
        }
    }

    private void setupPlayerProgressBar() {
        AnonymousClass2 r0 = new Runnable() {
            /* class com.vungle.warren.ui.view.LocalAdView.AnonymousClass2 */
            float duration = -2.0f;

            public void run() {
                try {
                    if (LocalAdView.this.view.isVideoPlaying()) {
                        int currentVideoPosition = LocalAdView.this.view.getCurrentVideoPosition();
                        int videoDuration = LocalAdView.this.view.getVideoDuration();
                        if (videoDuration > 0) {
                            if (this.duration == -2.0f) {
                                this.duration = (float) videoDuration;
                            }
                            LocalAdView.this.presenter.onProgressUpdate(currentVideoPosition, this.duration);
                            LocalAdView.this.view.setProgress(currentVideoPosition, this.duration);
                        }
                    }
                    LocalAdView.this.handler.postDelayed(this, 1000);
                } catch (IllegalStateException unused) {
                    String str = LocalAdView.this.TAG;
                }
            }
        };
        this.reportProgress = r0;
        this.handler.post(r0);
    }

    private void switchMuteState() {
        MediaPlayer mediaPlayer2 = this.mediaPlayer;
        if (mediaPlayer2 != null) {
            try {
                float f = this.muted ? 0.0f : 1.0f;
                mediaPlayer2.setVolume(f, f);
            } catch (IllegalStateException e) {
                Log.i(this.TAG, "Exception On Mute/Unmute", e);
            }
        }
    }

    @Override // com.vungle.warren.ui.view.BaseAdView, com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        super.close();
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public int getVideoPosition() {
        return this.view.getCurrentVideoPosition();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public boolean isVideoPlaying() {
        return this.view.isVideoPlaying();
    }

    public boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
        StringBuilder sb = new StringBuilder(30);
        if (i == 1) {
            sb.append("MEDIA_ERROR_UNKNOWN");
        } else if (i != 100) {
            sb.append("UNKNOWN");
        } else {
            sb.append("MEDIA_ERROR_SERVER_DIED");
        }
        sb.append(':');
        if (i2 == -1010) {
            sb.append("MEDIA_ERROR_UNSUPPORTED");
        } else if (i2 == -1007) {
            sb.append("MEDIA_ERROR_MALFORMED");
        } else if (i2 == -1004) {
            sb.append("MEDIA_ERROR_IO");
        } else if (i2 == -110) {
            sb.append("MEDIA_ERROR_TIMED_OUT");
        } else if (i2 != 200) {
            sb.append("MEDIA_ERROR_SYSTEM");
        } else {
            sb.append("MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK");
        }
        this.presenter.onMediaError(sb.toString());
        return true;
    }

    public void onPrepared(MediaPlayer mediaPlayer2) {
        this.mediaPlayer = mediaPlayer2;
        switchMuteState();
        this.view.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            /* class com.vungle.warren.ui.view.LocalAdView.AnonymousClass3 */

            public void onCompletion(MediaPlayer mediaPlayer) {
                LocalAdView localAdView = LocalAdView.this;
                String str = localAdView.TAG;
                if (localAdView.reportProgress != null) {
                    LocalAdView.this.handler.removeCallbacks(LocalAdView.this.reportProgress);
                }
                LocalAdView.this.presenter.onProgressUpdate(mediaPlayer.getDuration(), (float) mediaPlayer.getDuration());
            }
        });
        this.presenter.onVideoStart(getVideoPosition(), (float) mediaPlayer2.getDuration());
        setupPlayerProgressBar();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void pauseVideo() {
        this.view.pausePlayback();
        Runnable runnable = this.reportProgress;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void playVideo(File file, boolean z, int i) {
        this.muted = this.muted || z;
        if (file != null) {
            setupPlayerProgressBar();
            this.view.playVideo(Uri.fromFile(file), i);
            this.view.setMuted(this.muted);
            boolean z2 = this.muted;
            if (z2) {
                this.presenter.onMute(z2);
            }
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void showCTAOverlay(boolean z, boolean z2) {
        this.ctaClickAreaEnabled = z2;
        this.view.setCtaEnabled(z && z2);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showWebsite(String str) {
        this.view.stopPlayback();
        this.view.showWebsite(str);
        this.handler.removeCallbacks(this.reportProgress);
        this.mediaPlayer = null;
    }

    public void setPresenter(LocalAdPresenter localAdPresenter) {
        this.presenter = localAdPresenter;
    }
}

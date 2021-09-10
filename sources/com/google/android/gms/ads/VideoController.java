package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzaav;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzzc;
import javax.annotation.concurrent.GuardedBy;

public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object a = new Object();
    @GuardedBy("lock")
    private zzzc b;
    @GuardedBy("lock")
    private VideoLifecycleCallbacks c;

    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @Deprecated
    public final float getAspectRatio() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return 0.0f;
            }
            try {
                return zzzc.getAspectRatio();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return 0;
            }
            try {
                return zzzc.getPlaybackState();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final float getVideoCurrentTime() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return 0.0f;
            }
            try {
                return zzzc.getCurrentTime();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getCurrentTime on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final float getVideoDuration() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return 0.0f;
            }
            try {
                return zzzc.getDuration();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getDuration on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.a) {
            videoLifecycleCallbacks = this.c;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.a) {
            z = this.b != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return false;
            }
            try {
                return zzzc.isClickToExpandEnabled();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return false;
            }
            try {
                return zzzc.isCustomControlsEnabled();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc == null) {
                return true;
            }
            try {
                return zzzc.isMuted();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc != null) {
                try {
                    zzzc.mute(z);
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call mute on video controller.", e);
                }
            }
        }
    }

    public final void pause() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc != null) {
                try {
                    zzzc.pause();
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call pause on video controller.", e);
                }
            }
        }
    }

    public final void play() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc != null) {
                try {
                    zzzc.play();
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call play on video controller.", e);
                }
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        n.i(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.a) {
            this.c = videoLifecycleCallbacks;
            zzzc zzzc = this.b;
            if (zzzc != null) {
                try {
                    zzzc.zza(new zzaav(videoLifecycleCallbacks));
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    public final void stop() {
        synchronized (this.a) {
            zzzc zzzc = this.b;
            if (zzzc != null) {
                try {
                    zzzc.stop();
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call stop on video controller.", e);
                }
            }
        }
    }

    public final void zza(zzzc zzzc) {
        synchronized (this.a) {
            this.b = zzzc;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.c;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }

    public final zzzc zzdw() {
        zzzc zzzc;
        synchronized (this.a) {
            zzzc = this.b;
        }
        return zzzc;
    }
}

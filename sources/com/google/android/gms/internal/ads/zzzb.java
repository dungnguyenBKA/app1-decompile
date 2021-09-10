package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;

public abstract class zzzb extends zzgy implements zzzc {
    public zzzb() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzzc zzk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        if (queryLocalInterface instanceof zzzc) {
            return (zzzc) queryLocalInterface;
        }
        return new zzze(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzzd zzzd;
        switch (i) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean isMuted = isMuted();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isMuted);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                float duration = getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 7:
                float currentTime = getCurrentTime();
                parcel2.writeNoException();
                parcel2.writeFloat(currentTime);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzzd = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    if (queryLocalInterface instanceof zzzd) {
                        zzzd = (zzzd) queryLocalInterface;
                    } else {
                        zzzd = new zzzf(readStrongBinder);
                    }
                }
                zza(zzzd);
                parcel2.writeNoException();
                return true;
            case 9:
                float aspectRatio = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 10:
                boolean isCustomControlsEnabled = isCustomControlsEnabled();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isCustomControlsEnabled);
                return true;
            case 11:
                zzzd zzrg = zzrg();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzrg);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                boolean isClickToExpandEnabled = isClickToExpandEnabled();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isClickToExpandEnabled);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}

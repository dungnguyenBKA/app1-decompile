package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import java.util.List;

public abstract class zzanq extends zzgy implements zzanr {
    public zzanq() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                String headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                String body = getBody();
                parcel2.writeNoException();
                parcel2.writeString(body);
                return true;
            case 5:
                zzaer zztn = zztn();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztn);
                return true;
            case 6:
                String callToAction = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(callToAction);
                return true;
            case 7:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 8:
                String store = getStore();
                parcel2.writeNoException();
                parcel2.writeString(store);
                return true;
            case 9:
                String price = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(price);
                return true;
            case 10:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 11:
                zzu(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzv(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, overrideImpressionRecording);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                boolean overrideClickHandling = getOverrideClickHandling();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, overrideClickHandling);
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, extras);
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                zzw(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                zv zzvg = zzvg();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzvg);
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                zzaej zzto = zzto();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzto);
                return true;
            case 20:
                zv zzvh = zzvh();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzvh);
                return true;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                zv zztp = zztp();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztp);
                return true;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                zzc(zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}

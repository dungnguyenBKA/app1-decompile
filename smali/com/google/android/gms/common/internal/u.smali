.class public final Lcom/google/android/gms/common/internal/u;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/l;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final q(Lzv;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Lzv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;->zaa(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lic;->A(Landroid/os/Parcel;)Lzv;

    move-result-object p1

    return-object p1
.end method

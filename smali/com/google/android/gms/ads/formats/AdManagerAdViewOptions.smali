.class public final Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Z

.field private final c:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;Lcom/google/android/gms/ads/formats/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->a(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->b:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->b(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaas;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->b(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->c:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->b:Z

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->b:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->c:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzjr()Lcom/google/android/gms/internal/ads/zzagl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->c:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v0

    return-object v0
.end method

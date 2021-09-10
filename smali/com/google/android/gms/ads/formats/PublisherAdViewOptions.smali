.class public final Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/ads/zzxt;

.field private d:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private final e:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/zze;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;Lcom/google/android/gms/ads/formats/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->b(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->d:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvy;

    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->d:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/ads/zzxt;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->c(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaas;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->c(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b:Z

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzxw;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/ads/zzxt;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->d:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/ads/zzxt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Landroid/os/IBinder;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzjr()Lcom/google/android/gms/internal/ads/zzagl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v0

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/ads/zzxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/ads/zzxt;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzasq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzasq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaat:Landroid/view/View;

.field public final zzdto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzast;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzast;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p1

    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    .line 3
    invoke-static {p2}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p1

    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasq;->zzdto:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasq;->zzdto:Ljava/util/Map;

    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

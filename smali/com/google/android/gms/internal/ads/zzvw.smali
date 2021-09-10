.class public final Lcom/google/android/gms/internal/ads/zzvw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zzcio:Ljava/lang/String;

.field public zzcip:J

.field public zzciq:Lcom/google/android/gms/internal/ads/zzvg;

.field public zzcir:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzvg;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcio:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcip:J

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzciq:Lcom/google/android/gms/internal/ads/zzvg;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcir:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcio:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcip:J

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzciq:Lcom/google/android/gms/internal/ads/zzvg;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzcir:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

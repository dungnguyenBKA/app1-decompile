.class final Lcom/google/android/gms/internal/ads/zzaud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzdyz:J

.field public final zzdza:Lcom/google/android/gms/internal/ads/zzatz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaub;Lcom/google/android/gms/internal/ads/zzatz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaud;->zzdyz:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaud;->zzdza:Lcom/google/android/gms/internal/ads/zzatz;

    return-void
.end method

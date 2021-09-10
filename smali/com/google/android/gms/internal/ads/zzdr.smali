.class final Lcom/google/android/gms/internal/ads/zzdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdug;


# instance fields
.field private final synthetic zzvm:Lcom/google/android/gms/internal/ads/zzdsy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzvm:Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzvm:Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsy;->zzh(IJ)Lkw;

    return-void
.end method

.method public final zza(IJLjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdr;->zzvm:Lcom/google/android/gms/internal/ads/zzdsy;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 4
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzdsy;->zzb(IJLjava/lang/String;)Lkw;

    return-void
.end method

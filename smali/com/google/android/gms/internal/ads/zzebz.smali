.class final Lcom/google/android/gms/internal/ads/zzebz;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeio;",
        "Lcom/google/android/gms/internal/ads/zzeeg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeg;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehg;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbt()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeek;->zzbbz()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzehg;-><init>([BI)V

    return-object v0
.end method

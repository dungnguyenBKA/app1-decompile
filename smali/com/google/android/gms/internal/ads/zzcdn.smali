.class final synthetic Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfq;


# instance fields
.field private final zzehx:Ljava/util/Map;

.field private final zzggm:Lcom/google/android/gms/internal/ads/zzcdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdh;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzggm:Lcom/google/android/gms/internal/ads/zzcdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzehx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzggm:Lcom/google/android/gms/internal/ads/zzcdh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzehx:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdh;->zza(Ljava/util/Map;Z)V

    return-void
.end method

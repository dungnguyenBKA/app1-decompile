.class public final Lcom/google/android/gms/ads/internal/util/zzbe;
.super Lcom/google/android/gms/internal/ads/zzab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzab<",
        "Lcom/google/android/gms/internal/ads/zzz;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zzbaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/o;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/util/o;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaj;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->b:Lcom/google/android/gms/internal/ads/zzbaa;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzaze;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->c:Lcom/google/android/gms/internal/ads/zzaze;

    const/4 v0, 0x0

    const-string v1, "GET"

    .line 4
    invoke-virtual {p2, p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzag<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzag;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzag;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->c:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzaj:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/util/Map;I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->c:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->data:[B

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaze;->zzi([B)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->b:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method

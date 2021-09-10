.class final Lcom/google/android/gms/internal/ads/zzahv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadl()Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadl()Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzsh;->zzmt()V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzact()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacu()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    return-void

    :cond_2
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/zzalh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzalx;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

.field private final synthetic zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

.field private final synthetic zzdjy:Lcom/google/android/gms/internal/ads/zzei;

.field private final synthetic zzdjz:Lcom/google/android/gms/ads/internal/util/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzakm;Lcom/google/android/gms/ads/internal/util/zzbs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjy:Lcom/google/android/gms/internal/ads/zzei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjz:Lcom/google/android/gms/ads/internal/util/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakz;->zzd(Lcom/google/android/gms/internal/ads/zzakz;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;I)I

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjy:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzei;)Lcom/google/android/gms/internal/ads/zzalq;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjz:Lcom/google/android/gms/ads/internal/util/zzbs;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbs;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaif;

    .line 10
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzalx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.class public final Lcom/google/android/gms/internal/ads/zzdkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/zzbqv<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkn<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized zzauo()Lcom/google/android/gms/internal/ads/zzbqv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzalb()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzaun()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkf;->zzauo()Lcom/google/android/gms/internal/ads/zzbqv;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/zzcry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzgta:Lcom/google/android/gms/internal/ads/zzcru;

.field private final zzgth:Lcom/google/android/gms/internal/ads/zzbli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzbli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzgta:Lcom/google/android/gms/internal/ads/zzcru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzgth:Lcom/google/android/gms/internal/ads/zzbli;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcry;->zzgth:Lcom/google/android/gms/internal/ads/zzbli;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdxt:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadk()V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacr()V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcoz:Lcom/google/android/gms/internal/ads/zzaba;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->onPause()V

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbli;->zzahd()Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object p1

    return-object p1
.end method

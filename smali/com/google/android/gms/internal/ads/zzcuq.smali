.class public final Lcom/google/android/gms/internal/ads/zzcuq;
.super Lcom/google/android/gms/internal/ads/zzcun;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcun<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

.field private final zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

.field private final zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

.field private final zzfum:Landroid/view/ViewGroup;

.field private final zzfwb:Lcom/google/android/gms/internal/ads/zzbts;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzbqx$zza;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzbwg;Lcom/google/android/gms/internal/ads/zzcaq;Lcom/google/android/gms/internal/ads/zzbts;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcun;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfwb:Lcom/google/android/gms/internal/ads/zzbts;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfum:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdnp;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafh()Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzalo()Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmu;->zzd(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmu;->zzd(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 8
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmu;->zza(Lcom/google/android/gms/internal/ads/zzcxa;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmu;->zzb(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfwb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbnq;-><init>(Lcom/google/android/gms/internal/ads/zzbts;)V

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmu;->zza(Lcom/google/android/gms/internal/ads/zzbnq;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzblu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzfum:Landroid/view/ViewGroup;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Landroid/view/ViewGroup;)V

    .line 11
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmu;->zzd(Lcom/google/android/gms/internal/ads/zzblu;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahk()Lcom/google/android/gms/internal/ads/zzbmr;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmr;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzalb()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

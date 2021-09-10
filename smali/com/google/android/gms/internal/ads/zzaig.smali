.class public final Lcom/google/android/gms/internal/ads/zzaig;
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


# static fields
.field private static final zzdhz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdhw:Lcom/google/android/gms/ads/internal/zza;

.field private final zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

.field private final zzdhy:Lcom/google/android/gms/internal/ads/zzaqt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "resize"

    const-string v1, "playVideo"

    const-string v2, "storePicture"

    const-string v3, "createCalendarEvent"

    const-string v4, "setOrientationProperties"

    const-string v5, "closeResizedAd"

    const-string v6, "unload"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x6

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 9
    new-instance v3, Lx;

    invoke-direct {v3, v1}, Lx;-><init>(I)V

    :goto_0
    if-ge v5, v1, :cond_0

    .line 10
    aget-object v4, v0, v5

    aget-object v6, v2, v5

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhz:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqg;Lcom/google/android/gms/internal/ads/zzaqt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhy:Lcom/google/android/gms/internal/ads/zzaqt;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v0, "a"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaig;->zzdhz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zza;->zzjy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    if-eq v0, v1, :cond_1

    const-string p1, "Unknown MRAID command called."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhy:Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqt;->zzvr()V

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzaqg;->zzad(Z)V

    return-void

    .line 10
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqi;->execute()V

    return-void

    .line 11
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqf;->execute()V

    return-void

    .line 12
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaql;->execute()V

    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqg;->zzg(Ljava/util/Map;)V

    return-void
.end method

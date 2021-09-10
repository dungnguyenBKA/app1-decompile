.class public Lcom/google/android/gms/internal/ads/zzwc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zzcix:Lcom/google/android/gms/internal/ads/zzvj;

.field private final zzciy:Lcom/google/android/gms/internal/ads/zzvk;

.field private final zzciz:Lcom/google/android/gms/internal/ads/zzzz;

.field private final zzcja:Lcom/google/android/gms/internal/ads/zzagv;

.field private final zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzcjc:Lcom/google/android/gms/internal/ads/zzawc;

.field private final zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

.field private final zzcje:Lcom/google/android/gms/internal/ads/zzagu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvj;Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzzz;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzarp;Lcom/google/android/gms/internal/ads/zzagu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcix:Lcom/google/android/gms/internal/ads/zzvj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciy:Lcom/google/android/gms/internal/ads/zzvk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciz:Lcom/google/android/gms/internal/ads/zzzz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcja:Lcom/google/android/gms/internal/ads/zzagv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjc:Lcom/google/android/gms/internal/ads/zzawc;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcje:Lcom/google/android/gms/internal/ads/zzagu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvj;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcix:Lcom/google/android/gms/internal/ads/zzvj;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 2
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 3
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqt()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvk;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciy:Lcom/google/android/gms/internal/ads/zzvk;

    return-object p0
.end method

.method static synthetic zzb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzzz;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciz:Lcom/google/android/gms/internal/ads/zzzz;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzagv;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcja:Lcom/google/android/gms/internal/ads/zzagv;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzagu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcje:Lcom/google/android/gms/internal/ads/zzagu;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzauy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzarp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaev;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwn;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzwn;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaev;

    return-object p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzaey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzaey;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaey;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxy;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 7

    .line 7
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwk;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxl;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzarf;
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzarf;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaro;
    .locals 5

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/app/Activity;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 12
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaro;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxi;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxi;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwm;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwm;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxl;

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzavm;

    return-object p1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzczo;
.super Lcom/google/android/gms/internal/ads/zzayb;
.source "SourceFile"


# static fields
.field private static final zzgzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgzp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgzr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfrl:Lcom/google/android/gms/internal/ads/zzei;

.field private zzgcr:Landroid/graphics/Point;

.field private zzgcs:Landroid/graphics/Point;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private zzgup:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzcgk;",
            ">;"
        }
    .end annotation
.end field

.field private zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

.field private zzgzt:Lcom/google/android/gms/internal/ads/zzasq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/aclk"

    const-string v2, "/pcs/click"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzo:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".doubleclick.net"

    const-string v2, ".googleadservices.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzp:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/adview"

    const-string v4, "/pcs/view"

    const-string v5, "/pagead/conversion"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzq:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzr:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdof;Lcom/google/android/gms/internal/ads/zzdzv;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbgc;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzei;",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzcgk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayb;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcr:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcs:Landroid/graphics/Point;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfrl:Lcom/google/android/gms/internal/ads/zzei;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgup:Lcom/google/android/gms/internal/ads/zzdof;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/net/Uri;Lzv;)Landroid/net/Uri;
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfrl:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    .line 40
    invoke-static {p2}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, ""

    .line 42
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "ms"

    .line 43
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzczo;)Lcom/google/android/gms/internal/ads/zzazn;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method

.method static final synthetic zza(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 83
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zza(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczo;->zzk(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "nas"

    .line 87
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzasu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasq;->zzdto:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzc(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nas"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final zzgq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzcgk;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgup:Lcom/google/android/gms/internal/ads/zzdof;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdof;->zzavm()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzczv;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzczv;-><init>(Lcom/google/android/gms/internal/ads/zzczo;[Lcom/google/android/gms/internal/ads/zzcgk;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 3
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzczy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Lcom/google/android/gms/internal/ads/zzczo;[Lcom/google/android/gms/internal/ads/zzcgk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzczt;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczw;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    return-object p1
.end method

.method private static zzk(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzq:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczo;->zzgzr:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static final synthetic zzp(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "nas"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic zza([Lcom/google/android/gms/internal/ads/zzcgk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgk;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 5

    const/4 v0, 0x0

    .line 67
    aput-object p3, p1, v0

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzasq;->zzdto:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    .line 69
    invoke-static {p1, v1, v1, v0}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    .line 73
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "asset_view_signal"

    .line 75
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_view_signal"

    .line 76
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 77
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 78
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcs:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcr:Landroid/graphics/Point;

    .line 80
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_signal"

    .line 81
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/util/List;Lzv;)Ljava/util/ArrayList;
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfrl:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfrl:Lcom/google/android/gms/internal/ads/zzei;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    .line 92
    invoke-static {p2}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 93
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczo;->zzk(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not a Google URL: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "ms"

    .line 99
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Empty impression URLs result."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to get view signals."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasq;)V
    .locals 1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgup:Lcom/google/android/gms/internal/ads/zzdof;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdof;->ensureSize(I)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lzv;Lcom/google/android/gms/internal/ads/zzasj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lzv;",
            "Lcom/google/android/gms/internal/ads/zzasj;",
            ")V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczc:Lcom/google/android/gms/internal/ads/zzaba;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    .line 28
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzasj;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 29
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczn;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczn;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Ljava/util/List;Lzv;)V

    .line 31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczo;->zzasu()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/ads/zzczq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzczq;-><init>(Lcom/google/android/gms/internal/ads/zzczo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 34
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "Asset view map is empty."

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    .line 36
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Lcom/google/android/gms/internal/ads/zzasj;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 38
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Lzv;Lcom/google/android/gms/internal/ads/zzaye;Lcom/google/android/gms/internal/ads/zzaxx;)V
    .locals 5

    .line 1
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->context:Landroid/content/Context;

    .line 2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaye;->zzbut:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaye;->zzbrm:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzaye;->zzebq:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaye;->zzebr:Lcom/google/android/gms/internal/ads/zzvl;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafr()Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbqx$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbqx$zza;-><init>()V

    .line 5
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>()V

    if-nez v0, :cond_0

    const-string v0, "adUnitId"

    .line 6
    :cond_0
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzdnr;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object v0

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvo;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzvo;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzvo;->zzqd()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p2

    .line 8
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzh(Lcom/google/android/gms/internal/ads/zzvl;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object p2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvs;-><init>()V

    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzg(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzavh()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzalo()Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p1

    .line 13
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzg(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdab$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdab$zza;-><init>()V

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzdab$zza;->zzgr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdab$zza;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdab;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdab;-><init>(Lcom/google/android/gms/internal/ads/zzdab$zza;Lcom/google/android/gms/internal/ads/zzdad;)V

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzdab;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbwg$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbwg$zza;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbwg$zza;->zzaml()Lcom/google/android/gms/internal/ads/zzbwg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzczl;->zzg(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzaim()Lcom/google/android/gms/internal/ads/zzczm;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczm;->zzail()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzczx;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzczx;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Lcom/google/android/gms/internal/ads/zzaxx;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 22
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zza([Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 2

    const/4 v0, 0x0

    .line 65
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgup:Lcom/google/android/gms/internal/ads/zzdof;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdof;->zzd(Lcom/google/android/gms/internal/ads/zzdzw;)V

    :cond_0
    return-void
.end method

.method public final zzan(Lzv;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczc:Lcom/google/android/gms/internal/ads/zzaba;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzt:Lcom/google/android/gms/internal/ads/zzasq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasq;->zzaat:Landroid/view/View;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcr:Landroid/graphics/Point;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcr:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcs:Landroid/graphics/Point;

    .line 8
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgcr:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzfrl:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzao(Lzv;)Lzv;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzb(Landroid/net/Uri;Lzv;)Landroid/net/Uri;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Lzv;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzczo;->zzgq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzczr;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 23
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lzv;Lzv;)Lzv;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lzv;Lcom/google/android/gms/internal/ads/zzasj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lzv;",
            "Lcom/google/android/gms/internal/ads/zzasj;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczc:Lcom/google/android/gms/internal/ads/zzaba;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzasj;->onError(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "There should be only 1 click URL."

    .line 6
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzasj;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzczo;->zzgzo:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzczo;->zzgzp:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzasj;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczp;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzczp;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Landroid/net/Uri;Lzv;)V

    .line 12
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczo;->zzasu()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzczs;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzczs;-><init>(Lcom/google/android/gms/internal/ads/zzczo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "Asset view map is empty."

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    .line 17
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzczz;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzczz;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Lcom/google/android/gms/internal/ads/zzasj;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 19
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzczo;->zzgq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzczu;-><init>(Lcom/google/android/gms/internal/ads/zzczo;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

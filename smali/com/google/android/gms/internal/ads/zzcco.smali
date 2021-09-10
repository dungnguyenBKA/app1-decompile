.class public final Lcom/google/android/gms/internal/ads/zzcco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzgfe:Lcom/google/android/gms/internal/ads/zzcco;


# instance fields
.field private final zzgex:Lcom/google/android/gms/internal/ads/zzafs;

.field private final zzgey:Lcom/google/android/gms/internal/ads/zzafr;

.field private final zzgez:Lcom/google/android/gms/internal/ads/zzagg;

.field private final zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

.field private final zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

.field private final zzgfc:Le0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgfd:Le0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzccq;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccq;->zzaor()Lcom/google/android/gms/internal/ads/zzcco;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfe:Lcom/google/android/gms/internal/ads/zzcco;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgex:Lcom/google/android/gms/internal/ads/zzafs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgex:Lcom/google/android/gms/internal/ads/zzafs;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgey:Lcom/google/android/gms/internal/ads/zzafr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgey:Lcom/google/android/gms/internal/ads/zzafr;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgez:Lcom/google/android/gms/internal/ads/zzagg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgez:Lcom/google/android/gms/internal/ads/zzagg;

    .line 5
    new-instance v0, Le0;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgfc:Le0;

    invoke-direct {v0, v1}, Le0;-><init>(Le0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    .line 6
    new-instance v0, Le0;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgfd:Le0;

    invoke-direct {v0, v1}, Le0;-><init>(Le0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfd:Le0;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzccq;->zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;Lcom/google/android/gms/internal/ads/zzccn;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcco;-><init>(Lcom/google/android/gms/internal/ads/zzccq;)V

    return-void
.end method


# virtual methods
.method public final zzaoj()Lcom/google/android/gms/internal/ads/zzafs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgex:Lcom/google/android/gms/internal/ads/zzafs;

    return-object v0
.end method

.method public final zzaok()Lcom/google/android/gms/internal/ads/zzafr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgey:Lcom/google/android/gms/internal/ads/zzafr;

    return-object v0
.end method

.method public final zzaol()Lcom/google/android/gms/internal/ads/zzagg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgez:Lcom/google/android/gms/internal/ads/zzagg;

    return-object v0
.end method

.method public final zzaom()Lcom/google/android/gms/internal/ads/zzagf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

    return-object v0
.end method

.method public final zzaon()Lcom/google/android/gms/internal/ads/zzakb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

    return-object v0
.end method

.method public final zzaoo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgez:Lcom/google/android/gms/internal/ads/zzagg;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgex:Lcom/google/android/gms/internal/ads/zzafs;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgey:Lcom/google/android/gms/internal/ads/zzafr;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    invoke-virtual {v1}, Le0;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final zzaop()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    invoke-virtual {v1}, Le0;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    invoke-virtual {v2}, Le0;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    invoke-virtual {v2, v1}, Le0;->h(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzga(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfc:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzafy;

    return-object p1
.end method

.method public final zzgb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzgfd:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzafx;

    return-object p1
.end method

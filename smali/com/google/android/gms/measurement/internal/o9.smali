.class final Lcom/google/android/gms/measurement/internal/o9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/google/android/gms/internal/measurement/zzdq;

.field private d:Ljava/util/BitSet;

.field private e:Ljava/util/BitSet;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/google/android/gms/measurement/internal/t9;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/t9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Ljava/util/BitSet;

    new-instance p1, Lx;

    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    new-instance p1, Lx;

    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/t9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    new-instance p1, Lx;

    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    move-object p1, p7

    check-cast p1, Lx;

    invoke-virtual {p1}, Lx;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object p5, p7

    check-cast p5, Le0;

    invoke-virtual {p5, p2}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/internal/measurement/zzdq;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/o9;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/measurement/internal/r9;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r9;->a()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r9;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Ljava/util/BitSet;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r9;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r9;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/r9;->e:Ljava/lang/Long;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r9;->f:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r9;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->a:Ljava/lang/String;

    .line 14
    sget-object v5, Lcom/google/android/gms/measurement/internal/v2;->b0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r9;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/r9;->f:Ljava/lang/Long;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/r9;->f:Ljava/lang/Long;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method final b(I)Lcom/google/android/gms/internal/measurement/zzcx;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcx;->zzh()Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(I)Lcom/google/android/gms/internal/measurement/zzcw;

    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcw;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzcw;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/internal/measurement/zzdq;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcw;->zzc(Lcom/google/android/gms/internal/measurement/zzdq;)Lcom/google/android/gms/internal/measurement/zzcw;

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzk()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Ljava/util/BitSet;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/d9;->C(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Ljava/util/BitSet;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/d9;->C(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Ljava/util/Map;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcz;->zze()Lcom/google/android/gms/internal/measurement/zzcy;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzcy;->zza(I)Lcom/google/android/gms/internal/measurement/zzcy;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcy;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcy;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcz;

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 19
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzds;->zzf()Lcom/google/android/gms/internal/measurement/zzdr;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzdr;->zza(I)Lcom/google/android/gms/internal/measurement/zzdr;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Ljava/util/Map;

    .line 23
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 24
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzdr;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdr;

    .line 26
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 27
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb(Lcom/google/android/gms/internal/measurement/zzdp;)Lcom/google/android/gms/internal/measurement/zzcw;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcx;

    return-object p1
.end method

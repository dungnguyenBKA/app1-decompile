.class public final Lcom/google/android/gms/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/analytics/c;

.field private final b:Lcom/google/android/gms/common/util/d;

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/analytics/k;",
            ">;",
            "Lcom/google/android/gms/analytics/k;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/common/util/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/analytics/c;

    iput-object p2, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/common/util/d;

    const-wide/32 p1, 0x1b7740

    iput-wide p1, p0, Lcom/google/android/gms/analytics/i;->g:J

    const-wide p1, 0xb43e9400L

    iput-wide p1, p0, Lcom/google/android/gms/analytics/i;->h:J

    new-instance p1, Ljava/util/HashMap;

    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->k:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/analytics/c;

    iput-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/analytics/c;

    iget-object v0, p1, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/common/util/d;

    iput-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/common/util/d;

    iget-wide v0, p1, Lcom/google/android/gms/analytics/i;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->d:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/i;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->e:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/i;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->f:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/i;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->g:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/i;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->h:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/analytics/i;->k:Ljava/util/List;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/i;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/analytics/i;->n(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/k;->zzc(Lcom/google/android/gms/analytics/k;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static n(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/k;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/analytics/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    instance-of v0, p0, Ljava/lang/InstantiationException;

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p0, Ljava/lang/ReflectiveOperationException;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Linkage exception"

    .line 6
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType default constructor is not accessible"

    .line 10
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType doesn\'t have default constructor"

    .line 12
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/i;->d:J

    return-wide v0
.end method

.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/k;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/k;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/analytics/i;->n(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/k;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/analytics/k;

    return-object p1
.end method

.method final d()Lcom/google/android/gms/analytics/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/analytics/c;

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->j:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->k:Ljava/util/List;

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/analytics/k;)V
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/k;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/i;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/k;->zzc(Lcom/google/android/gms/analytics/k;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/i;->i:Z

    return-void
.end method

.method final i()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/common/util/d;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->f:J

    iget-wide v0, p0, Lcom/google/android/gms/analytics/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->d:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/common/util/d;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/i;->d:J

    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/i;->c:Z

    return-void
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/analytics/i;->e:J

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->f()Lcom/google/android/gms/analytics/q;

    move-result-object v0

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/q;->k(Lcom/google/android/gms/analytics/i;)V

    return-void
.end method

.method final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/i;->i:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/i;->c:Z

    return v0
.end method

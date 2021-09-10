.class public Lc10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lk00;

.field private final b:Lb30;

.field private final c:Lf30;

.field private final d:Lj10;

.field private final e:Le10;


# direct methods
.method constructor <init>(Lk00;Lb30;Lf30;Lj10;Le10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc10;->a:Lk00;

    .line 3
    iput-object p2, p0, Lc10;->b:Lb30;

    .line 4
    iput-object p3, p0, Lc10;->c:Lf30;

    .line 5
    iput-object p4, p0, Lc10;->d:Lj10;

    .line 6
    iput-object p5, p0, Lc10;->e:Le10;

    return-void
.end method

.method static a(Lc10;Lkw;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll00;

    .line 4
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ll00;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lc10;->b:Lb30;

    invoke-virtual {p1}, Ll00;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb30;->d(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object p0

    .line 8
    invoke-virtual {p1}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {p0, v0, p1}, Laz;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Lt00;Lc30;Lmz;Lj10;Le10;Lz30;Ll30;)Lc10;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lc30;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lk00;

    invoke-direct {v2, p0, p1, p3, p6}, Lk00;-><init>(Landroid/content/Context;Lt00;Lmz;Lz30;)V

    .line 3
    new-instance v3, Lb30;

    invoke-direct {v3, v0, p7}, Lb30;-><init>(Ljava/io/File;Ll30;)V

    .line 4
    invoke-static {p0}, Lf30;->a(Landroid/content/Context;)Lf30;

    move-result-object v4

    .line 5
    new-instance p0, Lc10;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc10;-><init>(Lk00;Lb30;Lf30;Lj10;Le10;)V

    return-object p0
.end method

.method private h(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    .line 1
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    iget-object v2, v0, Lc10;->a:Lk00;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    .line 3
    invoke-virtual/range {v2 .. v10}, Lk00;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Li20$d$d;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Li20$d$d;->g()Li20$d$d$b;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lc10;->d:Lj10;

    invoke-virtual {v4}, Lj10;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {}, Li20$d$d$d;->a()Li20$d$d$d$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Li20$d$d$d$a;->b(Ljava/lang/String;)Li20$d$d$d$a;

    invoke-virtual {v5}, Li20$d$d$d$a;->a()Li20$d$d$d;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Li20$d$d$b;->d(Li20$d$d$d;)Li20$d$d$b;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object v4

    const-string v5, "No log data to include with this event."

    invoke-virtual {v4, v5}, Laz;->h(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v4, v0, Lc10;->e:Le10;

    .line 10
    invoke-virtual {v4}, Le10;->c()Ljava/util/Map;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 13
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 14
    invoke-static {}, Li20$b;->a()Li20$b$a;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Li20$b$a;->b(Ljava/lang/String;)Li20$b$a;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Li20$b$a;->c(Ljava/lang/String;)Li20$b$a;

    invoke-virtual {v7}, Li20$b$a;->a()Li20$b;

    move-result-object v6

    .line 15
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lb10;->a()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 18
    invoke-virtual {v2}, Li20$d$d;->b()Li20$d$d$a;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Li20$d$d$a;->f()Li20$d$d$a$a;

    move-result-object v2

    .line 20
    invoke-static {v5}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object v4

    invoke-virtual {v2, v4}, Li20$d$d$a$a;->c(Lj20;)Li20$d$d$a$a;

    .line 21
    invoke-virtual {v2}, Li20$d$d$a$a;->a()Li20$d$d$a;

    move-result-object v2

    .line 22
    invoke-virtual {v3, v2}, Li20$d$d$b;->b(Li20$d$d$a;)Li20$d$d$b;

    .line 23
    :cond_2
    iget-object v2, v0, Lc10;->b:Lb30;

    invoke-virtual {v3}, Li20$d$d$b;->a()Li20$d$d;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v2, v3, p3, v1}, Lb30;->o(Li20$d$d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ly00;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly00;

    .line 3
    invoke-interface {v1}, Ly00;->c()Li20$c$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lc10;->b:Lb30;

    .line 6
    invoke-static {}, Li20$c;->a()Li20$c$a;

    move-result-object v1

    invoke-static {v0}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object v0

    invoke-virtual {v1, v0}, Li20$c$a;->b(Lj20;)Li20$c$a;

    invoke-virtual {v1}, Li20$c$a;->a()Li20$c;

    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lb30;->f(Ljava/lang/String;Li20$c;)V

    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc10;->b:Lb30;

    invoke-virtual {v0, p3, p1, p2}, Lb30;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc10;->b:Lb30;

    invoke-virtual {v0}, Lb30;->l()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc10;->b:Lb30;

    invoke-virtual {v0}, Lb30;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc10;->a:Lk00;

    invoke-virtual {v0, p1, p2, p3}, Lk00;->b(Ljava/lang/String;J)Li20;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc10;->b:Lb30;

    invoke-virtual {p2, p1}, Lb30;->p(Li20;)V

    return-void
.end method

.method public i(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lc10;->h(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public j(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lc10;->h(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc10;->e:Le10;

    invoke-virtual {v0}, Le10;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "Could not persist user ID; no user ID available"

    invoke-virtual {p1, v0}, Laz;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lc10;->b:Lb30;

    invoke-virtual {v1, v0, p1}, Lb30;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc10;->b:Lb30;

    invoke-virtual {v0}, Lb30;->c()V

    return-void
.end method

.method public m(Ljava/util/concurrent/Executor;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc10;->b:Lb30;

    .line 2
    invoke-virtual {v0}, Lb30;->n()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll00;

    .line 5
    iget-object v3, p0, Lc10;->c:Lf30;

    .line 6
    invoke-virtual {v3, v2}, Lf30;->d(Ll00;)Lkw;

    move-result-object v2

    invoke-static {p0}, La10;->a(Lc10;)Ldw;

    move-result-object v3

    .line 7
    invoke-virtual {v2, p1, v3}, Lkw;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Lnw;->e(Ljava/util/Collection;)Lkw;

    move-result-object p1

    return-object p1
.end method

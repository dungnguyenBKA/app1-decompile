.class public Lcom/facebook/rebound/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/rebound/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/rebound/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/rebound/f;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/g;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/g;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/rebound/g;->e:Z

    .line 6
    iput-object p1, p0, Lcom/facebook/rebound/g;->c:Lcom/facebook/rebound/f;

    .line 7
    iput-object p0, p1, Lcom/facebook/rebound/f;->a:Lcom/facebook/rebound/g;

    return-void
.end method

.method public static b()Lcom/facebook/rebound/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/rebound/g;

    .line 2
    new-instance v1, Lcom/facebook/rebound/a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/rebound/a;-><init>(Landroid/view/Choreographer;)V

    .line 3
    invoke-direct {v0, v1}, Lcom/facebook/rebound/g;-><init>(Lcom/facebook/rebound/f;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/facebook/rebound/g;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean p1, p0, Lcom/facebook/rebound/g;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/facebook/rebound/g;->e:Z

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/g;->c:Lcom/facebook/rebound/f;

    invoke-virtual {p1}, Lcom/facebook/rebound/f;->a()V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springId "

    const-string v2, " does not reference a registered spring"

    invoke-static {v1, p1, v2}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/facebook/rebound/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/rebound/b;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/b;-><init>(Lcom/facebook/rebound/g;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/rebound/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/facebook/rebound/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/rebound/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/h;

    .line 2
    invoke-interface {v1, p0}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/b;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/rebound/b;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v2

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/b;->b(D)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/facebook/rebound/g;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/facebook/rebound/g;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/facebook/rebound/g;->e:Z

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/facebook/rebound/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/h;

    .line 10
    invoke-interface {p2, p0}, Lcom/facebook/rebound/h;->b(Lcom/facebook/rebound/g;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean p1, p0, Lcom/facebook/rebound/g;->e:Z

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/facebook/rebound/g;->c:Lcom/facebook/rebound/f;

    invoke-virtual {p1}, Lcom/facebook/rebound/f;->b()V

    :cond_5
    return-void
.end method

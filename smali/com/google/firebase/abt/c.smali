.class public Lcom/google/firebase/abt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lvy;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lvy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/abt/c;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/abt/c;->c:Ljava/lang/Integer;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvy$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    iget-object v1, p0, Lcom/google/firebase/abt/c;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lvy;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lvy$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvy$c;

    .line 2
    iget-object v0, v0, Lvy$c;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lvy;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4
    invoke-static {v2}, Lcom/google/firebase/abt/b;->a(Ljava/util/Map;)Lcom/google/firebase/abt/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/abt/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/abt/c;->b(Ljava/util/Collection;)V

    goto/16 :goto_7

    .line 8
    :cond_1
    new-instance p1, Lcom/google/firebase/abt/a;

    invoke-direct {p1, v1}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/b;

    .line 11
    invoke-virtual {v2}, Lcom/google/firebase/abt/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/abt/c;->a()Ljava/util/List;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvy$c;

    .line 15
    iget-object v4, v4, Lvy$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvy$c;

    .line 18
    iget-object v5, v4, Lvy$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/firebase/abt/c;->b(Ljava/util/Collection;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/b;

    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/abt/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 25
    :cond_8
    new-instance v0, Ljava/util/ArrayDeque;

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/abt/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 27
    iget-object v1, p0, Lcom/google/firebase/abt/c;->c:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 28
    iget-object v1, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    iget-object v2, p0, Lcom/google/firebase/abt/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lvy;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/abt/c;->c:Ljava/lang/Integer;

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/google/firebase/abt/c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/b;

    .line 31
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-lt v3, v1, :cond_a

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvy$c;

    iget-object v3, v3, Lvy$c;->b:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, v5}, Lvy;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    .line 34
    :cond_a
    iget-object v3, p0, Lcom/google/firebase/abt/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/abt/b;->c(Ljava/lang/String;)Lvy$c;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/google/firebase/abt/c;->a:Lvy;

    invoke-interface {v3, v2}, Lvy;->b(Lvy$c;)V

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_7
    return-void

    .line 37
    :cond_c
    new-instance p1, Lcom/google/firebase/abt/a;

    invoke-direct {p1, v1}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

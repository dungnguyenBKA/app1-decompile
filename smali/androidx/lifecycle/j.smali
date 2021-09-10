.class public Landroidx/lifecycle/j;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/j$a;
    }
.end annotation


# instance fields
.field private a:Lv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv<",
            "Landroidx/lifecycle/h;",
            "Landroidx/lifecycle/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/lifecycle/f$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/f;-><init>()V

    .line 2
    new-instance v0, Lv;

    invoke-direct {v0}, Lv;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->a:Lv;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/lifecycle/j;->d:I

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/j;->e:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/j;->f:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/j;->c:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Landroidx/lifecycle/f$b;->c:Landroidx/lifecycle/f$b;

    iput-object p1, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    return-void
.end method

.method private d(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$b;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v0, p1}, Lv;->h(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/j$a;

    iget-object p1, p1, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f$b;

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    invoke-static {v1, p1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object p1

    return-object p1
.end method

.method static e(Landroidx/lifecycle/f$a;)Landroidx/lifecycle/f$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Landroidx/lifecycle/f$b;->b:Landroidx/lifecycle/f$b;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Landroidx/lifecycle/f$b;->f:Landroidx/lifecycle/f$b;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Landroidx/lifecycle/f$b;->e:Landroidx/lifecycle/f$b;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Landroidx/lifecycle/f$b;->d:Landroidx/lifecycle/f$b;

    return-object p0
.end method

.method static h(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private i(Landroidx/lifecycle/f$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    .line 3
    iget-boolean p1, p0, Landroidx/lifecycle/j;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/j;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/j;->e:Z

    .line 5
    invoke-direct {p0}, Landroidx/lifecycle/j;->l()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/lifecycle/j;->e:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/j;->f:Z

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private l()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i;

    if-eqz v0, :cond_c

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v1}, Lw;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v1}, Lw;->b()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    iget-object v1, v1, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    .line 4
    iget-object v4, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v4}, Lw;->e()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/j$a;

    iget-object v4, v4, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    if-ne v1, v4, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    if-ne v1, v4, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_b

    .line 6
    iput-boolean v3, p0, Landroidx/lifecycle/j;->f:Z

    .line 7
    iget-object v1, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    iget-object v3, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v3}, Lw;->b()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/j$a;

    iget-object v3, v3, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_9

    .line 8
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    .line 9
    invoke-virtual {v1}, Lw;->a()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Landroidx/lifecycle/j;->f:Z

    if-nez v3, :cond_9

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/j$a;

    .line 13
    :goto_2
    iget-object v5, v4, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    iget-object v6, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v5, p0, Landroidx/lifecycle/j;->f:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroidx/lifecycle/j;->a:Lv;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lv;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    iget-object v5, v4, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v2, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 17
    sget-object v5, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    goto :goto_3

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_5
    sget-object v5, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    goto :goto_3

    .line 20
    :cond_6
    sget-object v5, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    .line 21
    :goto_3
    invoke-static {v5}, Landroidx/lifecycle/j;->e(Landroidx/lifecycle/f$a;)Landroidx/lifecycle/f$b;

    move-result-object v6

    .line 22
    iget-object v7, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v4, v0, v5}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$a;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/j;->j()V

    goto :goto_2

    .line 25
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v1}, Lw;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 28
    iget-boolean v2, p0, Landroidx/lifecycle/j;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    iget-object v1, v1, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 30
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    .line 31
    invoke-virtual {v1}, Lw;->d()Lw$d;

    move-result-object v1

    .line 32
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroidx/lifecycle/j;->f:Z

    if-nez v2, :cond_0

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/j$a;

    .line 35
    :goto_4
    iget-object v4, v3, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    iget-object v5, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_a

    iget-boolean v4, p0, Landroidx/lifecycle/j;->f:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Landroidx/lifecycle/j;->a:Lv;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lv;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 37
    iget-object v4, v3, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    .line 38
    iget-object v5, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v4, v3, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-static {v4}, Landroidx/lifecycle/j;->m(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$a;)V

    .line 40
    invoke-direct {p0}, Landroidx/lifecycle/j;->j()V

    goto :goto_4

    .line 41
    :cond_b
    iput-boolean v3, p0, Landroidx/lifecycle/j;->f:Z

    return-void

    .line 42
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static m(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p0, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    sget-object v1, Landroidx/lifecycle/f$b;->b:Landroidx/lifecycle/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/f$b;->c:Landroidx/lifecycle/f$b;

    .line 2
    :goto_0
    new-instance v0, Landroidx/lifecycle/j$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/j$a;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/f$b;)V

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v1, p1, v0}, Lv;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v2, p0, Landroidx/lifecycle/j;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/j;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 6
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->d(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$b;

    move-result-object v4

    .line 7
    iget v5, p0, Landroidx/lifecycle/j;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/j;->d:I

    .line 8
    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroidx/lifecycle/j;->a:Lv;

    .line 9
    invoke-virtual {v4, p1}, Lv;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    iget-object v4, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    .line 11
    iget-object v5, p0, Landroidx/lifecycle/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v4, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-static {v4}, Landroidx/lifecycle/j;->m(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$a;)V

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/j;->j()V

    .line 14
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->d(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/j;->l()V

    .line 16
    :cond_6
    iget p1, p0, Landroidx/lifecycle/j;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/j;->d:I

    return-void
.end method

.method public b()Landroidx/lifecycle/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/lifecycle/f$b;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/j;->a:Lv;

    invoke-virtual {v0, p1}, Lv;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Landroidx/lifecycle/f$a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/lifecycle/j;->e(Landroidx/lifecycle/f$a;)Landroidx/lifecycle/f$b;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->i(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public g(Landroidx/lifecycle/f$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->i(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public k(Landroidx/lifecycle/f$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->i(Landroidx/lifecycle/f$b;)V

    return-void
.end method

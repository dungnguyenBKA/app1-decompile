.class public Lt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:[I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt0;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 3
    iput-object v0, p0, Lt0;->c:[I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lt0;->f:Ljava/util/HashSet;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lt0;->g:Ljava/util/HashSet;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->h:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->i:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lt0;->a:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr0;",
            ">;Z)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lt0;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 13
    iput-object v0, p0, Lt0;->c:[I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->d:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->e:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lt0;->f:Ljava/util/HashSet;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lt0;->g:Ljava/util/HashSet;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->h:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0;->i:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lt0;->a:Ljava/util/List;

    .line 21
    iput-boolean p2, p0, Lt0;->b:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private c(Ljava/util/ArrayList;Lr0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lr0;",
            ">;",
            "Lr0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Lr0;->c0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Lr0;->c0:Z

    .line 4
    invoke-virtual {p2}, Lr0;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    instance-of v0, p2, Lv0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    move-object v0, p2

    check-cast v0, Lv0;

    .line 7
    iget v2, v0, Lv0;->j0:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 8
    iget-object v4, v0, Lv0;->i0:[Lr0;

    aget-object v4, v4, v3

    invoke-direct {p0, p1, v4}, Lt0;->c(Ljava/util/ArrayList;Lr0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p2, Lr0;->A:[Lq0;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 10
    iget-object v2, p2, Lr0;->A:[Lq0;

    aget-object v2, v2, v1

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v2, Lq0;->b:Lr0;

    .line 12
    iget-object v3, p2, Lr0;->D:Lr0;

    if-eq v2, v3, :cond_3

    .line 13
    invoke-direct {p0, p1, v2}, Lt0;->c(Ljava/util/ArrayList;Lr0;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private d(Lr0;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lr0;->a0:Z

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lr0;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lr0;->u:Lq0;

    iget-object v0, v0, Lq0;->d:Lq0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p1, Lr0;->s:Lq0;

    iget-object v0, v0, Lq0;->d:Lq0;

    :goto_1
    if-eqz v0, :cond_5

    .line 5
    iget-object v4, v0, Lq0;->b:Lr0;

    iget-boolean v5, v4, Lr0;->b0:Z

    if-nez v5, :cond_3

    .line 6
    invoke-direct {p0, v4}, Lt0;->d(Lr0;)V

    .line 7
    :cond_3
    iget-object v4, v0, Lq0;->c:Lq0$b;

    sget-object v5, Lq0$b;->e:Lq0$b;

    if-ne v4, v5, :cond_4

    .line 8
    iget-object v0, v0, Lq0;->b:Lr0;

    iget v4, v0, Lr0;->I:I

    invoke-virtual {v0}, Lr0;->w()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_2

    .line 9
    :cond_4
    sget-object v5, Lq0$b;->c:Lq0$b;

    if-ne v4, v5, :cond_5

    .line 10
    iget-object v0, v0, Lq0;->b:Lr0;

    iget v0, v0, Lr0;->I:I

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 11
    iget-object v3, p1, Lr0;->u:Lq0;

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_3

    .line 12
    :cond_6
    iget-object v3, p1, Lr0;->s:Lq0;

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    invoke-virtual {p1}, Lr0;->w()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 13
    :goto_3
    invoke-virtual {p1}, Lr0;->w()I

    move-result v3

    sub-int v3, v0, v3

    .line 14
    invoke-virtual {p1, v3, v0}, Lr0;->Q(II)V

    .line 15
    iget-object v3, p1, Lr0;->w:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_8

    .line 16
    iget-object v0, v3, Lq0;->b:Lr0;

    iget-boolean v1, v0, Lr0;->b0:Z

    if-nez v1, :cond_7

    .line 17
    invoke-direct {p0, v0}, Lt0;->d(Lr0;)V

    .line 18
    :cond_7
    iget-object v0, v3, Lq0;->b:Lr0;

    iget v1, v0, Lr0;->J:I

    iget v0, v0, Lr0;->Q:I

    add-int/2addr v1, v0

    iget v0, p1, Lr0;->Q:I

    sub-int/2addr v1, v0

    .line 19
    iget v0, p1, Lr0;->F:I

    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p1, v1, v0}, Lr0;->c0(II)V

    .line 21
    iput-boolean v2, p1, Lr0;->b0:Z

    return-void

    .line 22
    :cond_8
    iget-object v3, p1, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_4

    .line 23
    :cond_a
    iget-object v3, p1, Lr0;->t:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    :goto_4
    if-eqz v3, :cond_d

    .line 24
    iget-object v4, v3, Lq0;->b:Lr0;

    iget-boolean v5, v4, Lr0;->b0:Z

    if-nez v5, :cond_b

    .line 25
    invoke-direct {p0, v4}, Lt0;->d(Lr0;)V

    .line 26
    :cond_b
    iget-object v4, v3, Lq0;->c:Lq0$b;

    sget-object v5, Lq0$b;->f:Lq0$b;

    if-ne v4, v5, :cond_c

    .line 27
    iget-object v0, v3, Lq0;->b:Lr0;

    iget v3, v0, Lr0;->J:I

    invoke-virtual {v0}, Lr0;->o()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_5

    .line 28
    :cond_c
    sget-object v5, Lq0$b;->d:Lq0$b;

    if-ne v4, v5, :cond_d

    .line 29
    iget-object v0, v3, Lq0;->b:Lr0;

    iget v0, v0, Lr0;->J:I

    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    .line 30
    iget-object v1, p1, Lr0;->v:Lq0;

    invoke-virtual {v1}, Lq0;->c()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_6

    .line 31
    :cond_e
    iget-object v1, p1, Lr0;->t:Lq0;

    invoke-virtual {v1}, Lq0;->c()I

    move-result v1

    invoke-virtual {p1}, Lr0;->o()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 32
    :goto_6
    invoke-virtual {p1}, Lr0;->o()I

    move-result v1

    sub-int v1, v0, v1

    .line 33
    invoke-virtual {p1, v1, v0}, Lr0;->c0(II)V

    .line 34
    iput-boolean v2, p1, Lr0;->b0:Z

    :cond_f
    return-void
.end method


# virtual methods
.method a(Lr0;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lt0;->f:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lt0;->g:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lt0;->h:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lt0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lt0;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 5
    iget-boolean v3, v2, Lr0;->a0:Z

    if-nez v3, :cond_1

    .line 6
    iget-object v3, p0, Lt0;->h:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lt0;->c(Ljava/util/ArrayList;Lr0;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lt0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lt0;->i:Ljava/util/List;

    iget-object v1, p0, Lt0;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lt0;->i:Ljava/util/List;

    iget-object v1, p0, Lt0;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Lt0;->h:Ljava/util/List;

    return-object v0
.end method

.method e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lt0;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 3
    invoke-direct {p0, v2}, Lt0;->d(Lr0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

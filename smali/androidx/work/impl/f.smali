.class public Landroidx/work/impl/f;
.super Landroidx/work/l;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Landroidx/work/impl/i;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/work/f;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/work/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroidx/work/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/f;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/i;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/f;->c:Landroidx/work/f;

    .line 2
    invoke-direct {p0}, Landroidx/work/l;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/work/impl/f;->a:Landroidx/work/impl/i;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/work/impl/f;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroidx/work/impl/f;->c:Landroidx/work/f;

    .line 6
    iput-object p2, p0, Landroidx/work/impl/f;->d:Ljava/util/List;

    .line 7
    iput-object p1, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/o;

    invoke-virtual {v0}, Landroidx/work/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static i(Landroidx/work/impl/f;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/f;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p0}, Landroidx/work/impl/f;->l(Landroidx/work/impl/f;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    move-object v4, v0

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/f;

    .line 9
    invoke-static {v1, p1}, Landroidx/work/impl/f;->i(Landroidx/work/impl/f;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 10
    :cond_3
    iget-object p0, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    .line 11
    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroidx/work/impl/f;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/f;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object p0, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/f;

    .line 5
    iget-object v1, v1, Landroidx/work/impl/f;->e:Ljava/util/List;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/work/k;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/f;->h:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/impl/utils/c;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/c;-><init>(Landroidx/work/impl/f;)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/f;->a:Landroidx/work/impl/i;

    invoke-virtual {v1}, Landroidx/work/impl/i;->j()Lm6;

    move-result-object v1

    check-cast v1, Ln6;

    invoke-virtual {v1, v0}, Ln6;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Landroidx/work/impl/utils/c;->a()Landroidx/work/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/f;->i:Landroidx/work/k;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/f;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    const-string v4, ", "

    .line 6
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/f;->i:Landroidx/work/k;

    return-object v0
.end method

.method public b()Landroidx/work/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->c:Landroidx/work/f;

    return-object v0
.end method

.method public c()Ljava/util/List;
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
    iget-object v0, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Landroidx/work/impl/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/f;->a:Landroidx/work/impl/i;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Landroidx/work/impl/f;->i(Landroidx/work/impl/f;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/f;->h:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/work/impl/f;->h:Z

    return-void
.end method

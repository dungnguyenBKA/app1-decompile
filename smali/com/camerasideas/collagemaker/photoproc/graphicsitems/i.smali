.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    return-void
.end method

.method public static k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;
    .locals 3

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    invoke-direct {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;-><init>()V

    sput-object v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    const-string v1, "ItemHolder"

    const-string v2, "getInstance"

    .line 5
    invoke-static {v1, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 3
    instance-of v3, v2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 2
    instance-of v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    if-eqz v2, :cond_0

    .line 3
    iput-boolean p1, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->j:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 2
    instance-of v2, v2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public j()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 3
    instance-of v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    return-object v0
.end method

.method public m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 2
    instance-of v1, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 3
    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 3
    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    return-void
.end method

.method public r(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a:I

    return-void
.end method

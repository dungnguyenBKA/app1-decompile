.class public Led0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/StarCheckView;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/StarCheckView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Led0$a;

    invoke-direct {v0, p0}, Led0$a;-><init>(Led0;)V

    iput-object v0, p0, Led0;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Led0;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Led0;->d:Z

    .line 5
    iput-object p1, p0, Led0;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Led0;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Led0;->j(IIZ)V

    return-void
.end method

.method static synthetic b(Led0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Led0;->d:Z

    return p0
.end method

.method static synthetic c(Led0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Led0;->f()V

    return-void
.end method

.method static synthetic d(Led0;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Led0;->e:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic e(Led0;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Led0;->e:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/StarCheckView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/StarCheckView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Led0$b;

    invoke-direct {v1, p0, p1, v0}, Led0$b;-><init>(Led0;ZLandroidx/appcompat/widget/StarCheckView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/StarCheckView;->h(Landroidx/appcompat/widget/StarCheckView$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private j(IIZ)V
    .locals 2

    if-lt p2, p1, :cond_2

    .line 1
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/StarCheckView;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p3}, Led0;->g(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/2addr p1, v1

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Led0;->a:Landroid/os/Handler;

    const-wide/16 p2, 0xa0

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 12
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Led0;->g(Z)V

    return-void
.end method


# virtual methods
.method public h(I)Z
    .locals 5

    .line 1
    iget v0, p0, Led0;->c:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iput p1, p0, Led0;->c:I

    .line 3
    iget-object v0, p0, Led0;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iput-boolean v2, p0, Led0;->d:Z

    .line 5
    iget-object v0, p0, Led0;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Led0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 8
    iget-object v3, p0, Led0;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/StarCheckView;

    if-gt v0, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Led0;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Led0;->c:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Led0;->d:Z

    .line 3
    invoke-direct {p0}, Led0;->f()V

    .line 4
    iget-object v1, p0, Led0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v2}, Led0;->j(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

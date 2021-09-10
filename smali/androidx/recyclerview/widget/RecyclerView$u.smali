.class public final Landroidx/recyclerview/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "u"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field f:I

.field g:Landroidx/recyclerview/widget/RecyclerView$t;

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    return-void
.end method

.method private f(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->f(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/y;->k()Ln2;

    move-result-object v1

    .line 5
    instance-of v3, v1, Landroidx/recyclerview/widget/y$a;

    if-eqz v3, :cond_0

    .line 6
    check-cast v1, Landroidx/recyclerview/widget/y$a;

    .line 7
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/y$a;->k(Landroid/view/View;)Ln2;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    invoke-static {v0, v1}, Lc3;->u(Landroid/view/View;Ln2;)V

    :cond_1
    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 11
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->v(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 13
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v0, :cond_4

    .line 14
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/d0;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/d0;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 15
    :cond_4
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->g(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->g()V

    return-void
.end method

.method public c(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v1, :cond_0

    return p1

    .line 4
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Landroidx/recyclerview/widget/RecyclerView$t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;

    return-object v0
.end method

.method g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->h(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/m$b;

    .line 6
    iget-object v2, v0, Landroidx/recyclerview/widget/m$b;->c:[I

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroidx/recyclerview/widget/m$b;->d:I

    :cond_2
    return-void
.end method

.method h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->unScrap()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->j(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$l;->f(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_3
    return-void
.end method

.method j(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->doesTransientStatePreventRecycling()Z

    move-result v0

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    .line 9
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    if-lt v3, v4, :cond_2

    if-lez v3, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->h(I)V

    add-int/lit8 v3, v3, -0x1

    .line 13
    :cond_2
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_5

    if-lez v3, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/m$b;

    iget v4, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 14
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/m$b;->c(I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 16
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/m$b;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/m$b;->c(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    add-int/2addr v3, v2

    .line 17
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_7

    .line 18
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 19
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/d0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/d0;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_8
    return-void

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method k(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->o()V

    return-void
.end method

.method m(IZJ)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-ltz v0, :cond_3b

    .line 1
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 2
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    const/16 v3, 0x20

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 5
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 7
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 10
    invoke-virtual {v4, v0, v10}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v4

    if-lez v4, :cond_4

    .line 11
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 12
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$g;->c(I)J

    move-result-wide v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 13
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 14
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-nez v13, :cond_3

    .line 15
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    move-object v5, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v5, v8

    :goto_3
    if-eqz v5, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object v5, v8

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const/4 v4, -0x1

    if-nez v5, :cond_1a

    .line 16
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_a

    .line 17
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 18
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v11

    if-ne v11, v0, :cond_9

    .line 19
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v11, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_9

    .line 20
    :cond_7
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    :cond_8
    :goto_6
    move-object v5, v7

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    if-nez p2, :cond_e

    .line 21
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 22
    iget-object v6, v5, Landroidx/recyclerview/widget/d;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_c

    .line 23
    iget-object v11, v5, Landroidx/recyclerview/widget/d;->c:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 24
    iget-object v12, v5, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/d$b;

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 25
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v12

    .line 27
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v13

    if-ne v13, v0, :cond_b

    .line 28
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v13

    if-nez v13, :cond_b

    .line 29
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    move-object v11, v8

    :goto_8
    if-eqz v11, :cond_e

    .line 30
    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v5

    .line 31
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/d;->p(Landroid/view/View;)V

    .line 32
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)I

    move-result v6

    if-eq v6, v4, :cond_d

    .line 33
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/d;->c(I)V

    .line 34
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/RecyclerView$u;->k(Landroid/view/View;)V

    const/16 v6, 0x2020

    .line 35
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    goto :goto_a

    .line 36
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_e
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_10

    .line 39
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 40
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v11

    if-ne v11, v0, :cond_f

    .line 41
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    move-result v11

    if-nez v11, :cond_f

    if-nez p2, :cond_8

    .line 42
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    move-object v5, v8

    :goto_a
    if-eqz v5, :cond_1a

    .line 43
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 44
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 45
    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    goto :goto_c

    .line 46
    :cond_11
    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    if-ltz v6, :cond_19

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 47
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 48
    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v7, :cond_12

    .line 49
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    iget v7, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$g;->d(I)I

    move-result v6

    .line 50
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v7

    if-eq v6, v7, :cond_12

    goto :goto_b

    .line 51
    :cond_12
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$g;->e()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 52
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v6

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    iget v12, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$g;->c(I)J

    move-result-wide v11

    cmp-long v13, v6, v11

    if-nez v13, :cond_14

    :cond_13
    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_18

    if-nez p2, :cond_17

    const/4 v6, 0x4

    .line 53
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 54
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 55
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 56
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->unScrap()V

    goto :goto_d

    .line 57
    :cond_15
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 58
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 59
    :cond_16
    :goto_d
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$u;->j(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_17
    move-object v5, v8

    goto :goto_e

    :cond_18
    const/4 v2, 0x1

    goto :goto_e

    .line 60
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_e
    const-wide v11, 0x7fffffffffffffffL

    if-nez v5, :cond_2c

    .line 62
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 63
    invoke-virtual {v6, v0, v10}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v6

    if-ltz v6, :cond_2b

    .line 64
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v7

    if-ge v6, v7, :cond_2b

    .line 65
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$g;->d(I)I

    move-result v13

    .line 66
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$g;->e()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 67
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$g;->c(I)J

    move-result-wide v14

    .line 68
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    :goto_f
    if-ltz v5, :cond_1e

    .line 69
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 70
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v16

    cmp-long v18, v16, v14

    if-nez v18, :cond_1d

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    move-result v16

    if-nez v16, :cond_1d

    .line 71
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v9

    if-ne v13, v9, :cond_1c

    .line 72
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 73
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 74
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 75
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v3, :cond_1b

    const/4 v3, 0x2

    const/16 v5, 0xe

    .line 76
    invoke-virtual {v7, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->setFlags(II)V

    :cond_1b
    move-object v5, v7

    goto :goto_12

    :cond_1c
    if-nez p2, :cond_1d

    .line 77
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v9, v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 79
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 80
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    .line 81
    iput-object v8, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 82
    iput-boolean v10, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 83
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 84
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->j(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_1d
    add-int/lit8 v5, v5, -0x1

    const/16 v3, 0x20

    goto :goto_f

    .line 85
    :cond_1e
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v4

    :goto_10
    if-ltz v3, :cond_21

    .line 86
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 87
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v17

    cmp-long v7, v17, v14

    if-nez v7, :cond_20

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    move-result v7

    if-nez v7, :cond_20

    .line 88
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v7

    if-ne v13, v7, :cond_1f

    if-nez p2, :cond_22

    .line 89
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_1f
    if-nez p2, :cond_20

    .line 90
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->h(I)V

    goto :goto_11

    :cond_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_21
    :goto_11
    move-object v5, v8

    :cond_22
    :goto_12
    if-eqz v5, :cond_23

    .line 91
    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    const/4 v9, 0x1

    goto :goto_13

    :cond_23
    move v9, v2

    :goto_13
    if-nez v5, :cond_27

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v2

    .line 93
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$t$a;

    if-eqz v2, :cond_25

    .line 94
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 95
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v4

    :goto_14
    if-ltz v3, :cond_25

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    move-result v4

    if-nez v4, :cond_24

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$b0;

    goto :goto_15

    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_25
    move-object v2, v8

    :goto_15
    if-eqz v2, :cond_26

    .line 99
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->resetInternal()V

    .line 100
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v3, :cond_26

    .line 101
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_26

    .line 102
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v1, v3, v10}, Landroidx/recyclerview/widget/RecyclerView$u;->f(Landroid/view/ViewGroup;Z)V

    :cond_26
    move-object v5, v2

    :cond_27
    if-nez v5, :cond_2d

    .line 103
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    cmp-long v2, p3, v11

    if-eqz v2, :cond_28

    .line 104
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    move v3, v13

    move-wide v4, v14

    move-wide/from16 v6, p3

    .line 105
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$t;->j(IJJ)Z

    move-result v2

    if-nez v2, :cond_28

    return-object v8

    .line 106
    :cond_28
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 107
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v4, "RV CreateView"

    .line 108
    sget v5, Lb2;->a:I

    .line 109
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v2, v13}, Landroidx/recyclerview/widget/RecyclerView$g;->s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v5

    .line 111
    iget-object v2, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 112
    iput v13, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 114
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_29

    .line 115
    iget-object v2, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 116
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v5, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 117
    :cond_29
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 118
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    sub-long/2addr v2, v14

    invoke-virtual {v4, v13, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->d(IJ)V

    goto :goto_16

    .line 119
    :cond_2a
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 120
    sget v2, Lb2;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 121
    throw v0

    .line 122
    :cond_2b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 123
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    move v9, v2

    :cond_2d
    :goto_16
    move-object v8, v5

    if-eqz v9, :cond_2e

    .line 124
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 125
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v2, :cond_2e

    const/16 v2, 0x2000

    .line 126
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 127
    invoke-virtual {v8, v10, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->setFlags(II)V

    .line 128
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    if-eqz v2, :cond_2e

    .line 129
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView$l;->b(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 130
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 131
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->getUnmodifiedPayloads()Ljava/util/List;

    .line 132
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView$l;->m(Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/RecyclerView$l$c;

    move-result-object v2

    .line 133
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 134
    :cond_2e
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 135
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-eqz v2, :cond_2f

    .line 136
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 137
    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    goto :goto_17

    .line 138
    :cond_2f
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_18

    :cond_30
    :goto_17
    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1b

    .line 139
    :cond_31
    :goto_18
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 140
    invoke-virtual {v2, v0, v10}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v13

    .line 141
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v3

    .line 143
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    cmp-long v2, p3, v11

    if-eqz v2, :cond_32

    .line 144
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    move-wide v4, v14

    move-wide/from16 v6, p3

    .line 145
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$t;->i(IJJ)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_17

    .line 146
    :cond_32
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v2, v8, v13}, Landroidx/recyclerview/widget/RecyclerView$g;->a(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 147
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 148
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v5

    sub-long/2addr v2, v14

    invoke-virtual {v4, v5, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(IJ)V

    .line 149
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 150
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 151
    sget v3, Lc3;->g:I

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_19

    :cond_33
    const/4 v3, 0x1

    .line 154
    :goto_19
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/y;

    if-nez v4, :cond_34

    goto :goto_1a

    .line 155
    :cond_34
    invoke-virtual {v4}, Landroidx/recyclerview/widget/y;->k()Ln2;

    move-result-object v4

    .line 156
    instance-of v5, v4, Landroidx/recyclerview/widget/y$a;

    if-eqz v5, :cond_35

    .line 157
    move-object v5, v4

    check-cast v5, Landroidx/recyclerview/widget/y$a;

    .line 158
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/y$a;->l(Landroid/view/View;)V

    .line 159
    :cond_35
    invoke-static {v2, v4}, Lc3;->u(Landroid/view/View;Ln2;)V

    goto :goto_1a

    :cond_36
    const/4 v3, 0x1

    .line 160
    :goto_1a
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 161
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-eqz v2, :cond_37

    .line 162
    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    :cond_37
    const/4 v0, 0x1

    .line 163
    :goto_1b
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_38

    .line 164
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 165
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c

    .line 166
    :cond_38
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 167
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 168
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c

    .line 169
    :cond_39
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 170
    :goto_1c
    iput-object v8, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v9, :cond_3a

    if-eqz v0, :cond_3a

    const/4 v9, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v9, 0x0

    .line 171
    :goto_1d
    iput-boolean v9, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    return-object v8

    .line 172
    :cond_3b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 173
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :goto_1e
    throw v2

    :goto_1f
    goto :goto_1e
.end method

.method n(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->h(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

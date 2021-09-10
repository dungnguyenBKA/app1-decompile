.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$e;,
        Landroidx/viewpager2/widget/ViewPager2$h;,
        Landroidx/viewpager2/widget/ViewPager2$d;,
        Landroidx/viewpager2/widget/ViewPager2$g;,
        Landroidx/viewpager2/widget/ViewPager2$k;,
        Landroidx/viewpager2/widget/ViewPager2$i;,
        Landroidx/viewpager2/widget/ViewPager2$f;,
        Landroidx/viewpager2/widget/ViewPager2$j;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private d:Landroidx/viewpager2/widget/c;

.field e:I

.field f:Z

.field private g:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private h:I

.field private i:Landroid/os/Parcelable;

.field j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Landroidx/recyclerview/widget/x;

.field l:Landroidx/viewpager2/widget/f;

.field private m:Landroidx/viewpager2/widget/c;

.field private n:Landroidx/viewpager2/widget/d;

.field private o:Landroidx/viewpager2/widget/e;

.field private p:Z

.field private q:I

.field r:Landroidx/viewpager2/widget/ViewPager2$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/viewpager2/widget/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/c;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/viewpager2/widget/c;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Z

    .line 8
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:I

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 12
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/graphics/Rect;

    .line 13
    new-instance p3, Landroidx/viewpager2/widget/c;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/c;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/viewpager2/widget/c;

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Z

    const/4 p3, -0x1

    .line 15
    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Z

    .line 17
    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->q:I

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$h;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$h;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    .line 2
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$j;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$j;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget v1, Lc3;->g:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 5
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 6
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$f;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 9
    sget-object v4, Landroidx/viewpager2/R$styleable;->a:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    .line 11
    invoke-virtual/range {v2 .. v8}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    const/4 p1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 13
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->S1(I)V

    .line 14
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 15
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2$h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    new-instance v0, Landroidx/viewpager2/widget/g;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/g;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 20
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 21
    new-instance p2, Landroidx/viewpager2/widget/f;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/f;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    .line 22
    new-instance v0, Landroidx/viewpager2/widget/d;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p0, p2, v1}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/f;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/viewpager2/widget/d;

    .line 23
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/x;

    .line 24
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/b0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 26
    new-instance p2, Landroidx/viewpager2/widget/c;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroidx/viewpager2/widget/c;-><init>(I)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    .line 27
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/f;->k(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 28
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$b;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 29
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$c;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$c;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 30
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    invoke-virtual {v1, p2}, Landroidx/viewpager2/widget/c;->d(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 31
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/c;->d(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 32
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v1}, Landroidx/viewpager2/widget/ViewPager2$d;->a(Landroidx/viewpager2/widget/c;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 33
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroidx/viewpager2/widget/c;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/c;->d(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 34
    new-instance p2, Landroidx/viewpager2/widget/e;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, v0}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/e;

    .line 35
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/c;->d(Landroidx/viewpager2/widget/ViewPager2$g;)V

    .line 36
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw p1
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I1()I

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    .line 4
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 8
    iget p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v1, :cond_4

    .line 11
    instance-of v2, p1, Landroidx/viewpager2/adapter/a;

    if-eqz v2, :cond_3

    .line 12
    move-object v2, p1

    check-cast v2, Landroidx/viewpager2/adapter/a;

    invoke-interface {v2, v1}, Landroidx/viewpager2/adapter/a;->b(Landroid/os/Parcelable;)V

    :cond_3
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    :cond_4
    const/4 v1, 0x0

    .line 14
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 15
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 16
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 17
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 18
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$h;->c()V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->a()Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->P()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method

.method h(IZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    if-eq p2, v1, :cond_0

    .line 3
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v3

    if-gtz v3, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    return-void

    :cond_4
    int-to-double v0, v0

    .line 9
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 10
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 11
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$h;->c()V

    .line 12
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/f;->h()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/f;->e()D

    move-result-wide v0

    .line 14
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/f;->i(IZ)V

    if-nez p2, :cond_6

    .line 15
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_6
    int-to-double v2, p1

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_8

    .line 17
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 18
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$k;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$k;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 19
    :cond_8
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/x;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v0

    .line 4
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/f;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/f;->f()I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/c;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/c;->c(I)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Z

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 3
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->c()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v1

    move v4, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 7
    :goto_1
    invoke-static {p1}, Ln3;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ln3;

    move-result-object v5

    .line 8
    invoke-static {v1, v4, v3, v3}, Ln3$b;->b(IIZI)Ln3$b;

    move-result-object v1

    .line 9
    invoke-virtual {v5, v1}, Ln3;->T(Ljava/lang/Object;)V

    .line 10
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->g()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v3, v3, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v3, :cond_4

    const/16 v3, 0x2000

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 15
    :cond_4
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    const/16 v0, 0x1000

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 17
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 4
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 6
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 9
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->i()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9
    invoke-static {v0, p1, v2}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 10
    invoke-static {v1, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 6
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->d:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    .line 4
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:I

    .line 5
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 6
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->d:Landroid/os/Parcelable;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    .line 8
    instance-of v2, v0, Landroidx/viewpager2/adapter/a;

    if-eqz v2, :cond_2

    .line 9
    check-cast v0, Landroidx/viewpager2/adapter/a;

    invoke-interface {v0}, Landroidx/viewpager2/adapter/a;->a()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->d:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_6

    .line 3
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    if-ne p1, v3, :cond_4

    .line 5
    iget-object p1, p2, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->e:I

    sub-int/2addr p1, v1

    goto :goto_2

    .line 7
    :cond_4
    iget-object p1, p2, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->e:I

    add-int/2addr p1, v1

    .line 9
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2$h;->b(I)V

    return v1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 11
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 2
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$h;

    .line 3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$h;->c()V

    return-void
.end method

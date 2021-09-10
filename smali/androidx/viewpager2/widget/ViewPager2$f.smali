.class Landroidx/viewpager2/widget/ViewPager2$f;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic G:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->G:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->G:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public V0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected l1(Landroidx/recyclerview/widget/RecyclerView$y;[I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->G:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1(Landroidx/recyclerview/widget/RecyclerView$y;[I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->G:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    iget-object v1, p1, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->c()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 8
    aput p1, p2, v0

    const/4 v0, 0x1

    .line 9
    aput p1, p2, v0

    return-void
.end method

.method public x0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->x0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln3;)V

    .line 2
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->G:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/ViewPager2$d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

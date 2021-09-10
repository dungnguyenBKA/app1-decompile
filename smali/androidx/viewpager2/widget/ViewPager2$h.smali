.class Landroidx/viewpager2/widget/ViewPager2$h;
.super Landroidx/viewpager2/widget/ViewPager2$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private final a:Lp3;

.field private final b:Lp3;

.field final synthetic c:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$d;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$a;)V

    .line 2
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$h$a;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$h$a;-><init>(Landroidx/viewpager2/widget/ViewPager2$h;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->a:Lp3;

    .line 3
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$h$b;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$h$b;-><init>(Landroidx/viewpager2/widget/ViewPager2$h;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->b:Lp3;

    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager2/widget/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    sget p1, Lc3;->g:I

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->h(IZ)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x1020048

    .line 2
    invoke-static {v0, v1}, Lc3;->q(Landroid/view/View;I)V

    const v2, 0x1020049

    .line 3
    invoke-static {v0, v2}, Lc3;->q(Landroid/view/View;I)V

    const v3, 0x1020046

    .line 4
    invoke-static {v0, v3}, Lc3;->q(Landroid/view/View;I)V

    const v4, 0x1020047

    .line 5
    invoke-static {v0, v4}, Lc3;->q(Landroid/view/View;I)V

    .line 6
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->a()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->g()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->c()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    .line 10
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const v4, 0x1020048

    goto :goto_0

    :cond_3
    const v4, 0x1020049

    :goto_0
    if-eqz v3, :cond_4

    const v1, 0x1020049

    .line 11
    :cond_4
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->e:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    .line 12
    new-instance v2, Ln3$a;

    invoke-direct {v2, v4, v7}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$h;->a:Lp3;

    invoke-static {v0, v2, v7, v3}, Lc3;->s(Landroid/view/View;Ln3$a;Ljava/lang/CharSequence;Lp3;)V

    .line 13
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v2, :cond_8

    .line 14
    new-instance v2, Ln3$a;

    invoke-direct {v2, v1, v7}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->b:Lp3;

    invoke-static {v0, v2, v7, v1}, Lc3;->s(Landroid/view/View;Ln3$a;Ljava/lang/CharSequence;Lp3;)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->e:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 16
    new-instance v1, Ln3$a;

    invoke-direct {v1, v4, v7}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$h;->a:Lp3;

    invoke-static {v0, v1, v7, v2}, Lc3;->s(Landroid/view/View;Ln3$a;Ljava/lang/CharSequence;Lp3;)V

    .line 17
    :cond_7
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v1, :cond_8

    .line 18
    new-instance v1, Ln3$a;

    invoke-direct {v1, v3, v7}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$h;->b:Lp3;

    invoke-static {v0, v1, v7, v2}, Lc3;->s(Landroid/view/View;Ln3$a;Ljava/lang/CharSequence;Lp3;)V

    :cond_8
    :goto_1
    return-void
.end method

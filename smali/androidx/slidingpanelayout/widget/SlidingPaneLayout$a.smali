.class Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Ln2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final d:Landroid/graphics/Rect;

.field final synthetic e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ln2;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View;Ln3;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ln3;->G(Ln3;)Ln3;

    move-result-object v0

    .line 2
    invoke-super {p0, p1, v0}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 3
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0, v1}, Ln3;->i(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p2, v1}, Ln3;->M(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0, v1}, Ln3;->j(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p2, v1}, Ln3;->N(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v0}, Ln3;->D()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->q0(Z)V

    .line 9
    invoke-virtual {v0}, Ln3;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln3;->f0(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0}, Ln3;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0}, Ln3;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln3;->V(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0}, Ln3;->v()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->X(Z)V

    .line 13
    invoke-virtual {v0}, Ln3;->u()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->S(Z)V

    .line 14
    invoke-virtual {v0}, Ln3;->w()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->Z(Z)V

    .line 15
    invoke-virtual {v0}, Ln3;->x()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->a0(Z)V

    .line 16
    invoke-virtual {v0}, Ln3;->s()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->K(Z)V

    .line 17
    invoke-virtual {v0}, Ln3;->B()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->l0(Z)V

    .line 18
    invoke-virtual {v0}, Ln3;->y()Z

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->d0(Z)V

    .line 19
    invoke-virtual {v0}, Ln3;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->a(I)V

    .line 20
    invoke-virtual {v0}, Ln3;->p()I

    move-result v1

    invoke-virtual {p2, v1}, Ln3;->e0(I)V

    .line 21
    invoke-virtual {v0}, Ln3;->I()V

    .line 22
    const-class v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p2, p1}, Ln3;->n0(Landroid/view/View;)V

    .line 24
    sget v0, Lc3;->g:I

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p1

    .line 26
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Ln3;->h0(Landroid/view/View;)V

    .line 28
    :cond_0
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 29
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    invoke-virtual {p2, v1}, Ln3;->c(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Ln2;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

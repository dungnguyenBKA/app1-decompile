.class Landroidx/drawerlayout/widget/DrawerLayout$b;
.super Ln2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final d:Landroid/graphics/Rect;

.field final synthetic e:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Ln2;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)I

    move-result p1

    .line 5
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget v0, Lc3;->g:I

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    .line 9
    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    const/4 p2, 0x3

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Ln2;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View;Ln3;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p2}, Ln3;->G(Ln3;)Ln3;

    move-result-object v0

    .line 4
    invoke-super {p0, p1, v0}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 5
    invoke-virtual {p2, p1}, Ln3;->n0(Landroid/view/View;)V

    .line 6
    sget v2, Lc3;->g:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v2

    .line 8
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Ln3;->h0(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->d:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v2}, Ln3;->i(Landroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p2, v2}, Ln3;->M(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {v0, v2}, Ln3;->j(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {p2, v2}, Ln3;->N(Landroid/graphics/Rect;)V

    .line 15
    invoke-virtual {v0}, Ln3;->D()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->q0(Z)V

    .line 16
    invoke-virtual {v0}, Ln3;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln3;->f0(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0}, Ln3;->l()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v0}, Ln3;->n()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln3;->V(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v0}, Ln3;->v()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->X(Z)V

    .line 20
    invoke-virtual {v0}, Ln3;->u()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->S(Z)V

    .line 21
    invoke-virtual {v0}, Ln3;->w()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->Z(Z)V

    .line 22
    invoke-virtual {v0}, Ln3;->x()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->a0(Z)V

    .line 23
    invoke-virtual {v0}, Ln3;->s()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->K(Z)V

    .line 24
    invoke-virtual {v0}, Ln3;->B()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->l0(Z)V

    .line 25
    invoke-virtual {v0}, Ln3;->y()Z

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->d0(Z)V

    .line 26
    invoke-virtual {v0}, Ln3;->h()I

    move-result v2

    invoke-virtual {p2, v2}, Ln3;->a(I)V

    .line 27
    invoke-virtual {v0}, Ln3;->I()V

    .line 28
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 31
    invoke-static {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {p2, v3}, Ln3;->c(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p2, v1}, Ln3;->Z(Z)V

    .line 35
    invoke-virtual {p2, v1}, Ln3;->a0(Z)V

    .line 36
    sget-object p1, Ln3$a;->e:Ln3$a;

    invoke-virtual {p2, p1}, Ln3;->J(Ln3$a;)Z

    .line 37
    sget-object p1, Ln3$a;->f:Ln3$a;

    invoke-virtual {p2, p1}, Ln3;->J(Ln3$a;)Z

    return-void
.end method

.method public g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ln2;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

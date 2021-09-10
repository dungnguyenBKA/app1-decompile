.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/a;
.source "SourceFile"


# instance fields
.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:I

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f03001b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object v0, Landroidx/appcompat/R$styleable;->d:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    sget p3, Lc3;->g:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x5

    .line 7
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    const/4 p2, 0x4

    .line 8
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    const/4 p2, 0x3

    .line 9
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/i0;->m(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/a;->f:I

    const/4 p2, 0x2

    const p3, 0x7f0b0005

    .line 10
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f080038

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public h(Lk;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/appcompat/widget/ActionBarContextView$a;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView$a;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Lk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lk;->e()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->x()Z

    .line 12
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->D(Z)V

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    .line 17
    sget v2, Lc3;->g:I

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/a;->f:I

    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public n(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->y()Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->a()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 5
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v7, :cond_5

    .line 6
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    if-eqz p1, :cond_3

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_3
    add-int/2addr v0, v1

    :goto_3
    move v8, v0

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    move-object v0, p0

    move v2, v8

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v8, v0

    if-eqz p1, :cond_4

    sub-int/2addr v8, p5

    goto :goto_4

    :cond_4
    add-int/2addr v8, p5

    :goto_4
    move v0, v8

    :cond_5
    move p5, v0

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_6

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_6
    move v2, p5

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v1, :cond_7

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    :cond_7
    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_5

    :cond_8
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 15
    :goto_5
    iget-object v2, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_9

    xor-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_11

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/a;->f:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, p2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int v3, v0, v2

    const/high16 v4, -0x80000000

    .line 8
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 9
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p0, v6, p2, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result p2

    .line 11
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr p2, v8

    .line 13
    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 14
    iget-object v6, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v6, p2, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result p2

    .line 15
    :cond_2
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v8, :cond_7

    .line 16
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    if-eqz v8, :cond_6

    .line 17
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 18
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 19
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, p2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    sub-int/2addr p2, v5

    .line 20
    :cond_4
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p0, v6, p2, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result p2

    .line 22
    :cond_7
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v5, :cond_c

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 24
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_8

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_4

    :cond_8
    const/high16 v9, -0x80000000

    :goto_4
    if-ltz v6, :cond_9

    .line 25
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 26
    :cond_9
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_a

    goto :goto_5

    :cond_a
    const/high16 v1, -0x80000000

    :goto_5
    if-ltz v5, :cond_b

    .line 27
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    :cond_b
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 29
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 30
    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    .line 31
    :cond_c
    iget p2, p0, Landroidx/appcompat/widget/a;->f:I

    if-gtz p2, :cond_f

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_6
    if-ge v7, p2, :cond_e

    .line 33
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_d

    move v0, v1

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 35
    :cond_e
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_7

    .line 36
    :cond_f
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_7
    return-void

    .line 37
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return-void
.end method

.method public q(IJ)Lh3;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->g:Lh3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lh3;->b()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    :cond_1
    invoke-static {p0}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lh3;->a(F)Lh3;

    .line 6
    invoke-virtual {v0, p2, p3}, Lh3;->d(J)Lh3;

    .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;

    .line 8
    iget-object p3, p2, Landroidx/appcompat/widget/a$a;->c:Landroidx/appcompat/widget/a;

    iput-object v0, p3, Landroidx/appcompat/widget/a;->g:Lh3;

    .line 9
    iput p1, p2, Landroidx/appcompat/widget/a$a;->b:I

    .line 10
    invoke-virtual {v0, p2}, Lh3;->f(Li3;)Lh3;

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p0}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh3;->a(F)Lh3;

    .line 12
    invoke-virtual {v1, p2, p3}, Lh3;->d(J)Lh3;

    .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;

    .line 14
    iget-object p3, p2, Landroidx/appcompat/widget/a$a;->c:Landroidx/appcompat/widget/a;

    iput-object v1, p3, Landroidx/appcompat/widget/a;->g:Lh3;

    .line 15
    iput p1, p2, Landroidx/appcompat/widget/a$a;->b:I

    .line 16
    invoke-virtual {v1, p2}, Lh3;->f(Li3;)Lh3;

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->E()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

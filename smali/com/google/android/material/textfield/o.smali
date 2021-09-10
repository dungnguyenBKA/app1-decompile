.class final Lcom/google/android/material/textfield/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/material/textfield/TextInputLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Landroid/widget/FrameLayout;

.field private f:I

.field private g:Landroid/animation/Animator;

.field private final h:F

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060218

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/o;->h:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/o;->i:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/textfield/o;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->g:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/textfield/o;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private g(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_4

    :cond_1
    const/4 p2, 0x0

    const/4 p5, 0x1

    if-ne p6, p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1
    :goto_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, p5, [F

    aput v0, v3, p2

    invoke-static {p3, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    sget-object v2, Ljx;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_4

    .line 5
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 p6, 0x2

    new-array p6, p6, [F

    iget v0, p0, Lcom/google/android/material/textfield/o;->h:F

    neg-float v0, v0

    aput v0, p6, p2

    aput v1, p6, p5

    .line 6
    invoke-static {p3, p4, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xd9

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    sget-object p3, Ljx;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private i(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    return-object p1
.end method

.method private w(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    sget v1, Lc3;->g:I

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/o;->j:I

    iget v1, p0, Lcom/google/android/material/textfield/o;->i:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private z(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p1

    move v9, p2

    move/from16 v10, p3

    if-eqz v10, :cond_0

    .line 1
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    iput-object v11, v7, Lcom/google/android/material/textfield/o;->g:Landroid/animation/Animator;

    .line 3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-boolean v2, v7, Lcom/google/android/material/textfield/o;->q:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/o;->g(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 5
    iget-boolean v2, v7, Lcom/google/android/material/textfield/o;->l:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/o;->g(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 6
    invoke-static {v11, v12}, Landroidx/core/app/b;->p0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/o;->i(I)Landroid/widget/TextView;

    move-result-object v3

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/o;->i(I)Landroid/widget/TextView;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/google/android/material/textfield/o$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/o$a;-><init>(Lcom/google/android/material/textfield/o;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    if-ne v8, v9, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 11
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/o;->i(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    if-eqz v8, :cond_3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/o;->i(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    iput v9, v7, Lcom/google/android/material/textfield/o;->i:I

    .line 18
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    .line 19
    iget-object v0, v7, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->S(Z)V

    .line 20
    iget-object v0, v7, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    return-void
.end method


# virtual methods
.method d(Landroid/widget/TextView;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    .line 6
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Landroid/widget/Space;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 9
    iget-object v3, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->e()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iget p1, p0, Lcom/google/android/material/textfield/o;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/textfield/o;->f:I

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget p1, p0, Lcom/google/android/material/textfield/o;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/textfield/o;->d:I

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    sget v3, Lc3;->g:I

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 10
    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/o;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->k:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method j()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method l()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method m()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/material/textfield/o;->k:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    .line 3
    iget v1, p0, Lcom/google/android/material/textfield/o;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/o;->q:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->p:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/google/android/material/textfield/o;->j:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/google/android/material/textfield/o;->j:I

    .line 7
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/o;->i:I

    iget v2, p0, Lcom/google/android/material/textfield/o;->j:I

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    .line 8
    invoke-direct {p0, v3, v0}, Lcom/google/android/material/textfield/o;->w(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/material/textfield/o;->z(IIZ)V

    return-void
.end method

.method n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->l:Z

    return v0
.end method

.method o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->q:Z

    return v0
.end method

.method p(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eqz p2, :cond_4

    .line 2
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    .line 3
    iget v0, p0, Lcom/google/android/material/textfield/o;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/textfield/o;->f:I

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 7
    :goto_2
    iget p1, p0, Lcom/google/android/material/textfield/o;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/textfield/o;->d:I

    .line 8
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->c:Landroid/widget/LinearLayout;

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method q(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v2, v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object v2, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    const v0, 0x7f0802bb

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 7
    iget v0, p0, Lcom/google/android/material/textfield/o;->n:I

    .line 8
    iput v0, p0, Lcom/google/android/material/textfield/o;->n:I

    .line 9
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 10
    iget-object v3, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->L(Landroid/widget/TextView;I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    .line 12
    iput-object v0, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    .line 13
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 17
    sget v3, Lc3;->g:I

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/o;->d(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->m()V

    .line 21
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/textfield/o;->p(Landroid/widget/TextView;I)V

    .line 22
    iput-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    .line 25
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->l:Z

    return-void
.end method

.method r(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/o;->n:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->L(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method s(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method t(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/o;->s:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method u(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v2, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    const v1, 0x7f0802bc

    .line 6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    .line 9
    sget v2, Lc3;->g:I

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 11
    iget v1, p0, Lcom/google/android/material/textfield/o;->s:I

    .line 12
    iput v1, p0, Lcom/google/android/material/textfield/o;->s:I

    .line 13
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 14
    invoke-static {v2, v1}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    .line 16
    iput-object v1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    .line 17
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/o;->d(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    .line 21
    iget v2, p0, Lcom/google/android/material/textfield/o;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v3, 0x0

    .line 22
    iput v3, p0, Lcom/google/android/material/textfield/o;->j:I

    .line 23
    :cond_4
    iget v3, p0, Lcom/google/android/material/textfield/o;->j:I

    iget-object v4, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    .line 24
    invoke-direct {p0, v4, v1}, Lcom/google/android/material/textfield/o;->w(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 25
    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/material/textfield/o;->z(IIZ)V

    .line 26
    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/textfield/o;->p(Landroid/widget/TextView;I)V

    .line 27
    iput-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    .line 29
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    .line 30
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->q:Z

    return-void
.end method

.method v(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method x(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->k:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lcom/google/android/material/textfield/o;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    iput v1, p0, Lcom/google/android/material/textfield/o;->j:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/o;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->m:Landroid/widget/TextView;

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/o;->w(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/o;->z(IIZ)V

    return-void
.end method

.method y(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/o;->p:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lcom/google/android/material/textfield/o;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5
    iput v1, p0, Lcom/google/android/material/textfield/o;->j:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/o;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroid/widget/TextView;

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/o;->w(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/o;->z(IIZ)V

    return-void
.end method

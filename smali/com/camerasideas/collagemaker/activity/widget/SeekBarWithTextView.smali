.class public Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/SeekBar;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:F

.field private n:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->e:I

    .line 4
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/camerasideas/collagemaker/R$styleable;->k:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x5

    .line 6
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->f:Z

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->g:Z

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->h:Z

    .line 9
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i:Z

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l:Ljava/lang/String;

    const/4 v0, 0x4

    const/high16 v2, 0x41400000    # 12.0f

    .line 11
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->m:F

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->f:Z

    if-eqz p2, :cond_0

    .line 14
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j:Z

    .line 15
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    const p2, 0x7f0b00b6

    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->g:Z

    if-eqz p2, :cond_1

    .line 17
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j:Z

    .line 18
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    const p2, 0x7f0b00b5

    goto :goto_0

    .line 19
    :cond_1
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->h:Z

    if-eqz p2, :cond_2

    .line 20
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    const p2, 0x7f0b00b3

    goto :goto_0

    .line 21
    :cond_2
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i:Z

    if-eqz p2, :cond_3

    .line 22
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    const p2, 0x7f0b00b4

    goto :goto_0

    :cond_3
    const p2, 0x7f0b00b2

    .line 23
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f080258

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    const p1, 0x7f080259

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 27
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0802d6

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->o:Landroid/widget/TextView;

    .line 29
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->o:Landroid/widget/TextView;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->m:F

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/j;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/widget/j;-><init>(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->n:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->m()V

    return-void
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    return p0
.end method

.method static d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5
    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/l;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/l;-><init>(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static e(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6
    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/k;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/k;-><init>(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->n()V

    return-void
.end method

.method static synthetic g(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc2;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int v2, v2, v0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int v2, v2, v0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    sub-int/2addr v2, v0

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    return-void
.end method


# virtual methods
.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f050051

    goto :goto_0

    :cond_0
    const p1, 0x7f050055

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public j(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->d:I

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->e:I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->m()V

    return-void
.end method

.method public k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->n:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->d:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->m()V

    .line 3
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->n()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->n()V

    return-void
.end method

.class Lcom/google/android/material/textfield/h;
.super Lcom/google/android/material/textfield/n;
.source "SourceFile"


# static fields
.field private static final o:Z


# instance fields
.field private final d:Landroid/text/TextWatcher;

.field private final e:Lcom/google/android/material/textfield/TextInputLayout$d;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$e;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Landroid/graphics/drawable/StateListDrawable;

.field private k:Lmy;

.field private l:Landroid/view/accessibility/AccessibilityManager;

.field private m:Landroid/animation/ValueAnimator;

.field private n:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/h;->o:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 2
    new-instance p1, Lcom/google/android/material/textfield/h$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/h$a;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->d:Landroid/text/TextWatcher;

    .line 3
    new-instance p1, Lcom/google/android/material/textfield/h$b;

    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/h$b;-><init>(Lcom/google/android/material/textfield/h;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->e:Lcom/google/android/material/textfield/TextInputLayout$d;

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/h$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/h$c;-><init>(Lcom/google/android/material/textfield/h;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/h;->g:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/textfield/h;->h:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 7
    iput-wide v0, p0, Lcom/google/android/material/textfield/h;->i:J

    return-void
.end method

.method static d(Lcom/google/android/material/textfield/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static e(Lcom/google/android/material/textfield/h;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/h;->h:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/h;->h:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/material/textfield/h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/h;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/textfield/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/material/textfield/h;->i:J

    return-wide p1
.end method

.method static synthetic h(Lcom/google/android/material/textfield/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/h;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/textfield/h;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->n:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/textfield/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/h;->g:Z

    return p1
.end method

.method static synthetic k(Lcom/google/android/material/textfield/h;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->l:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static l(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/h;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/textfield/h;->g:Z

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/h;->g:Z

    if-nez v0, :cond_5

    .line 5
    sget-boolean v0, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/h;->h:Z

    xor-int/lit8 v1, v0, 0x1

    if-eq v0, v1, :cond_3

    .line 7
    iput-boolean v1, p0, Lcom/google/android/material/textfield/h;->h:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/h;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/h;->h:Z

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 12
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/google/android/material/textfield/h;->h:Z

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 14
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    .line 16
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/textfield/h;->g:Z

    :goto_1
    return-void
.end method

.method static m(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-boolean v0, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->k:Lmy;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->j:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static n(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->m()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->k()Lmy;

    move-result-object v1

    const v2, 0x7f0300b0

    .line 5
    invoke-static {p1, v2}, Landroidx/core/app/b;->H(Landroid/view/View;I)I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    const v6, 0x3dcccccd    # 0.1f

    if-ne v0, v3, :cond_2

    const p0, 0x7f0300c0

    .line 6
    invoke-static {p1, p0}, Landroidx/core/app/b;->H(Landroid/view/View;I)I

    move-result p0

    .line 7
    new-instance v0, Lmy;

    .line 8
    invoke-virtual {v1}, Lmy;->v()Lqy;

    move-result-object v7

    invoke-direct {v0, v7}, Lmy;-><init>(Lqy;)V

    .line 9
    invoke-static {v2, p0, v6}, Landroidx/core/app/b;->g0(IIF)I

    move-result v2

    new-array v6, v3, [I

    aput v2, v6, v8

    aput v8, v6, v5

    .line 10
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v7}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 11
    sget-boolean v6, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v0, p0}, Lmy;->setTint(I)V

    new-array v6, v3, [I

    aput v2, v6, v8

    aput p0, v6, v5

    .line 13
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 14
    new-instance v2, Lmy;

    .line 15
    invoke-virtual {v1}, Lmy;->v()Lqy;

    move-result-object v4

    invoke-direct {v2, v4}, Lmy;-><init>(Lqy;)V

    const/4 v4, -0x1

    .line 16
    invoke-virtual {v2, v4}, Lmy;->setTint(I)V

    .line 17
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v4, p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array p0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v4, p0, v8

    aput-object v1, p0, v5

    .line 18
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-array p0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p0, v8

    aput-object v1, p0, v5

    .line 19
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 20
    :goto_0
    sget p0, Lc3;->g:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-ne v0, v5, :cond_4

    .line 22
    iget-object p0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()I

    move-result p0

    .line 23
    invoke-static {v2, p0, v6}, Landroidx/core/app/b;->g0(IIF)I

    move-result v0

    new-array v2, v3, [I

    aput v0, v2, v8

    aput p0, v2, v5

    .line 24
    sget-boolean p0, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz p0, :cond_3

    .line 25
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 26
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 27
    sget p0, Lc3;->g:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 29
    :cond_3
    new-instance p0, Lmy;

    .line 30
    invoke-virtual {v1}, Lmy;->v()Lqy;

    move-result-object v0

    invoke-direct {p0, v0}, Lmy;-><init>(Lqy;)V

    .line 31
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v8

    aput-object p0, v0, v5

    .line 32
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 33
    sget v0, Lc3;->g:I

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 37
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v3

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method static o(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/material/textfield/i;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/i;-><init>(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    new-instance v0, Lcom/google/android/material/textfield/j;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/j;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4
    sget-boolean v0, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/material/textfield/k;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->d:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/material/textfield/h;)Lcom/google/android/material/textfield/TextInputLayout$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->e:Lcom/google/android/material/textfield/TextInputLayout$d;

    return-object p0
.end method

.method private r(FFFI)Lmy;
    .locals 1

    .line 1
    new-instance v0, Lqy$b;

    invoke-direct {v0}, Lqy$b;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lqy$b;->x(F)Lqy$b;

    .line 3
    invoke-virtual {v0, p1}, Lqy$b;->A(F)Lqy$b;

    .line 4
    invoke-virtual {v0, p2}, Lqy$b;->q(F)Lqy$b;

    .line 5
    invoke-virtual {v0, p2}, Lqy$b;->t(F)Lqy$b;

    .line 6
    invoke-virtual {v0}, Lqy$b;->m()Lqy;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 8
    invoke-static {p2, p3}, Lmy;->j(Landroid/content/Context;F)Lmy;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lmy;->e(Lqy;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1, p4, p1, p4}, Lmy;->H(IIII)V

    return-object p2
.end method

.method private s()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/h;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060322

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f8

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602fa

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 10
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/h;->r(FFFI)Lmy;

    move-result-object v3

    const/4 v4, 0x0

    .line 11
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/h;->r(FFFI)Lmy;

    move-result-object v0

    .line 12
    iput-object v3, p0, Lcom/google/android/material/textfield/h;->k:Lmy;

    .line 13
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/h;->j:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/h;->j:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 16
    sget-boolean v0, Lcom/google/android/material/textfield/h;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070184

    goto :goto_0

    :cond_0
    const v0, 0x7f070185

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Ld;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->B(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->A(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/h$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/h$d;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->D(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->c(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 23
    fill-array-data v1, :array_0

    .line 24
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 25
    sget-object v2, Ljx;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x43

    int-to-long v3, v3

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    new-instance v3, Lcom/google/android/material/textfield/m;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    iput-object v1, p0, Lcom/google/android/material/textfield/h;->n:Landroid/animation/ValueAnimator;

    const/16 v1, 0x32

    new-array v3, v0, [F

    .line 29
    fill-array-data v3, :array_1

    .line 30
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v1

    .line 32
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    new-instance v1, Lcom/google/android/material/textfield/m;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    iput-object v3, p0, Lcom/google/android/material/textfield/h;->m:Landroid/animation/ValueAnimator;

    .line 35
    new-instance v1, Lcom/google/android/material/textfield/l;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/l;-><init>(Lcom/google/android/material/textfield/h;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    iget-object v1, p0, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 37
    sget v2, Lc3;->g:I

    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/h;->l:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$d;,
        Landroidx/appcompat/app/AlertController$b;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$c;
    }
.end annotation


# instance fields
.field A:Landroidx/core/widget/NestedScrollView;

.field private B:I

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field H:Landroid/widget/ListAdapter;

.field I:I

.field private J:I

.field private K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field private P:Z

.field Q:Landroid/os/Handler;

.field private final R:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/app/o;

.field private final c:Landroid/view/Window;

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field q:Landroid/os/Message;

.field private r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/widget/Button;

.field private t:Ljava/lang/CharSequence;

.field u:Landroid/os/Message;

.field private v:Landroid/graphics/drawable/Drawable;

.field w:Landroid/widget/Button;

.field private x:Ljava/lang/CharSequence;

.field y:Landroid/os/Message;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/o;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    .line 3
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    .line 5
    new-instance v1, Landroidx/appcompat/app/AlertController$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$a;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->R:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/o;

    .line 8
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 9
    new-instance p3, Landroidx/appcompat/app/AlertController$c;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->Q:Landroid/os/Handler;

    .line 10
    sget-object p3, Landroidx/appcompat/R$styleable;->f:[I

    const/4 v1, 0x0

    const v2, 0x7f030028

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->J:I

    const/4 p3, 0x2

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->K:I

    const/4 p3, 0x4

    .line 13
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->L:I

    const/4 p3, 0x5

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->M:I

    const/4 p3, 0x7

    .line 15
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->N:I

    const/4 p3, 0x3

    .line 16
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->O:I

    const/4 p3, 0x6

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->P:Z

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->d:I

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p2}, Landroidx/appcompat/app/o;->a()Landroidx/appcompat/app/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/i;->w(I)Z

    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private b(Landroid/widget/Button;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static d(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 1
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 4
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    .line 1
    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 9
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method


# virtual methods
.method public c()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Landroidx/appcompat/app/AlertController;->K:I

    if-nez v1, :cond_0

    .line 2
    iget v1, v0, Landroidx/appcompat/app/AlertController;->J:I

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Landroidx/appcompat/app/AlertController;->J:I

    .line 4
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/o;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/o;->setContentView(I)V

    .line 5
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x7f0801eb

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802c6

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800ec

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0800cd

    .line 8
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0800f0

    .line 9
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 10
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget v8, v0, Landroidx/appcompat/app/AlertController;->i:I

    if-eqz v8, :cond_2

    .line 12
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 13
    iget v11, v0, Landroidx/appcompat/app/AlertController;->i:I

    invoke-virtual {v8, v11, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_4

    .line 14
    invoke-static {v8}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 15
    :cond_4
    iget-object v13, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const/high16 v14, 0x20000

    invoke-virtual {v13, v14, v14}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    const/4 v13, -0x1

    const/16 v14, 0x8

    if-eqz v12, :cond_7

    .line 16
    iget-object v12, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v15, 0x7f0800ef

    invoke-virtual {v12, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 17
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v8, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-boolean v8, v0, Landroidx/appcompat/app/AlertController;->n:Z

    if-eqz v8, :cond_6

    .line 19
    iget v8, v0, Landroidx/appcompat/app/AlertController;->j:I

    iget v15, v0, Landroidx/appcompat/app/AlertController;->k:I

    iget v11, v0, Landroidx/appcompat/app/AlertController;->l:I

    iget v9, v0, Landroidx/appcompat/app/AlertController;->m:I

    invoke-virtual {v12, v8, v15, v11, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 20
    :cond_6
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v8, :cond_8

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v9, 0x0

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->a:F

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    :cond_8
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 25
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 26
    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/AlertController;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 27
    invoke-direct {v0, v4, v5}, Landroidx/appcompat/app/AlertController;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 28
    invoke-direct {v0, v6, v7}, Landroidx/appcompat/app/AlertController;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 29
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x7f080241

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 30
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 31
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v10}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v5, 0x102000b

    .line 32
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-nez v5, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    .line 34
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 35
    :cond_a
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 37
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v5, :cond_b

    .line 38
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 39
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 40
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 41
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 42
    :cond_b
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    const v5, 0x1020019

    .line 43
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 44
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 46
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x0

    goto :goto_5

    .line 47
    :cond_c
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 49
    iget v6, v0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v5, v10, v10, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_d
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x1

    :goto_5
    const v6, 0x102001a

    .line 52
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 53
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_e

    .line 55
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 56
    :cond_e
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f

    .line 58
    iget v7, v0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v6, v10, v10, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_f
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x2

    :goto_6
    const v6, 0x102001b

    .line 61
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 62
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_10

    .line 64
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v8, 0x0

    goto :goto_8

    .line 65
    :cond_10
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_11

    .line 67
    iget v7, v0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v6, v10, v10, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    .line 69
    :goto_7
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x4

    .line 70
    :goto_8
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 71
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x7f030027

    const/4 v11, 0x1

    invoke-virtual {v6, v9, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 73
    iget v6, v7, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_12

    const/16 v16, 0x1

    goto :goto_9

    :cond_12
    const/16 v16, 0x0

    :goto_9
    const/4 v6, 0x2

    if-eqz v16, :cond_15

    if-ne v5, v11, :cond_13

    .line 74
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-direct {v0, v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    goto :goto_a

    :cond_13
    if-ne v5, v6, :cond_14

    .line 75
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-direct {v0, v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    goto :goto_a

    :cond_14
    const/4 v7, 0x4

    if-ne v5, v7, :cond_15

    .line 76
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-direct {v0, v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    :cond_15
    :goto_a
    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_17

    .line 77
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    :cond_17
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    const v7, 0x7f0802c2

    if-eqz v5, :cond_18

    .line 79
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v13, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    invoke-virtual {v2, v9, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 83
    :cond_18
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v9, 0x1020006

    invoke-virtual {v5, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 84
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    if-eqz v5, :cond_1b

    .line 85
    iget-boolean v5, v0, Landroidx/appcompat/app/AlertController;->P:Z

    if-eqz v5, :cond_1b

    .line 86
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x7f08006a

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 87
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget v5, v0, Landroidx/appcompat/app/AlertController;->B:I

    if-eqz v5, :cond_19

    .line 89
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 90
    :cond_19
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1a

    .line 91
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 92
    :cond_1a
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v9

    iget-object v11, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v11

    iget-object v12, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v12

    .line 96
    invoke-virtual {v5, v7, v9, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 98
    :cond_1b
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    :goto_c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v14, :cond_1c

    const/4 v11, 0x1

    goto :goto_d

    :cond_1c
    const/4 v11, 0x0

    :goto_d
    if-eqz v2, :cond_1d

    .line 103
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v14, :cond_1d

    const/4 v1, 0x1

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    .line 104
    :goto_e
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v14, :cond_1e

    const/4 v4, 0x1

    goto :goto_f

    :cond_1e
    const/4 v4, 0x0

    :goto_f
    if-nez v4, :cond_1f

    const v5, 0x7f0802ab

    .line 105
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 106
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    if-eqz v1, :cond_23

    .line 107
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz v5, :cond_20

    const/4 v7, 0x1

    .line 108
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 109
    :cond_20
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-nez v5, :cond_22

    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v5, :cond_21

    goto :goto_10

    :cond_21
    move-object v7, v8

    goto :goto_11

    :cond_22
    :goto_10
    const v5, 0x7f0802bf

    .line 110
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_11
    if-eqz v7, :cond_24

    .line 111
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_23
    const v2, 0x7f0802ac

    .line 112
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 113
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_24
    :goto_12
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    instance-of v5, v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_25

    .line 115
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v2, v1, v4}, Landroidx/appcompat/app/AlertController$RecycleListView;->a(ZZ)V

    :cond_25
    if-nez v11, :cond_31

    .line 116
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    goto :goto_13

    :cond_26
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    :goto_13
    if-eqz v2, :cond_31

    if-eqz v4, :cond_27

    const/4 v10, 0x2

    :cond_27
    or-int/2addr v1, v10

    const/4 v4, 0x3

    .line 117
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x7f080240

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 118
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v9, 0x7f08023f

    invoke-virtual {v5, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 119
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2a

    .line 120
    sget v6, Lc3;->g:I

    if-lt v9, v10, :cond_28

    .line 121
    invoke-virtual {v2, v1, v4}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_28
    if-eqz v7, :cond_29

    .line 122
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_29
    if-eqz v5, :cond_31

    .line 123
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_15

    :cond_2a
    if-eqz v7, :cond_2b

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2b

    .line 124
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v7, v8

    :cond_2b
    if-eqz v5, :cond_2c

    and-int/2addr v1, v6

    if-nez v1, :cond_2c

    .line 125
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v9, v8

    goto :goto_14

    :cond_2c
    move-object v9, v5

    :goto_14
    if-nez v7, :cond_2d

    if-eqz v9, :cond_31

    .line 126
    :cond_2d
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2e

    .line 127
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Landroidx/appcompat/app/b;

    invoke-direct {v2, v0, v7, v9}, Landroidx/appcompat/app/b;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->C(Landroidx/core/widget/NestedScrollView$b;)V

    .line 128
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Landroidx/appcompat/app/c;

    invoke-direct {v2, v0, v7, v9}, Landroidx/appcompat/app/c;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    .line 129
    :cond_2e
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_2f

    .line 130
    new-instance v2, Landroidx/appcompat/app/d;

    invoke-direct {v2, v0, v7, v9}, Landroidx/appcompat/app/d;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 131
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroidx/appcompat/app/e;

    invoke-direct {v2, v0, v7, v9}, Landroidx/appcompat/app/e;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :cond_2f
    if-eqz v7, :cond_30

    .line 132
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_30
    if-eqz v9, :cond_31

    .line 133
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_31
    :goto_15
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_32

    .line 135
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_32

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget v2, v0, Landroidx/appcompat/app/AlertController;->I:I

    if-le v2, v13, :cond_32

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_32
    return-void
.end method

.method public f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p5, p0, Landroidx/appcompat/app/AlertController;->Q:Landroid/os/Handler;

    invoke-virtual {p5, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    const/4 p5, -0x3

    if-eq p1, p5, :cond_3

    const/4 p5, -0x2

    if-eq p1, p5, :cond_2

    const/4 p5, -0x1

    if-ne p1, p5, :cond_1

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    .line 3
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    .line 4
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 7
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    .line 8
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 9
    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    .line 10
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    .line 11
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    return-void
.end method

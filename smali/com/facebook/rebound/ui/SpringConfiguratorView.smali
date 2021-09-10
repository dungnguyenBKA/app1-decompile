.class public Lcom/facebook/rebound/ui/SpringConfiguratorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/ui/SpringConfiguratorView$e;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$c;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$b;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$d;,
        Lcom/facebook/rebound/ui/SpringConfiguratorView$f;
    }
.end annotation


# static fields
.field private static final o:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/rebound/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/rebound/b;

.field private final e:F

.field private final f:F

.field private final g:Lcom/facebook/rebound/d;

.field private final h:I

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/SeekBar;

.field private k:Landroid/widget/Spinner;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/facebook/rebound/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Ljava/util/List;

    const/16 v3, 0xff

    const/16 v4, 0xe1

    .line 4
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h:I

    .line 5
    invoke-static {}, Lcom/facebook/rebound/g;->b()Lcom/facebook/rebound/g;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/facebook/rebound/d;->b()Lcom/facebook/rebound/d;

    move-result-object v6

    iput-object v6, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->g:Lcom/facebook/rebound/d;

    .line 7
    new-instance v7, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-direct {v7, v0, v1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Landroid/content/Context;)V

    iput-object v7, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x42200000    # 40.0f

    .line 9
    invoke-static {v9, v8}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->f:F

    const/high16 v10, 0x438c0000    # 280.0f

    .line 10
    invoke-static {v10, v8}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->e:F

    .line 11
    invoke-virtual {v5}, Lcom/facebook/rebound/g;->c()Lcom/facebook/rebound/b;

    move-result-object v5

    iput-object v5, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->d:Lcom/facebook/rebound/b;

    .line 12
    new-instance v8, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10}, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 13
    invoke-virtual {v5, v11, v12}, Lcom/facebook/rebound/b;->g(D)Lcom/facebook/rebound/b;

    invoke-virtual {v5, v11, v12}, Lcom/facebook/rebound/b;->h(D)Lcom/facebook/rebound/b;

    invoke-virtual {v5, v8}, Lcom/facebook/rebound/b;->a(Lcom/facebook/rebound/e;)Lcom/facebook/rebound/b;

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x40a00000    # 5.0f

    .line 15
    invoke-static {v8, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v8

    const/high16 v11, 0x41200000    # 10.0f

    .line 16
    invoke-static {v11, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v11

    const/high16 v12, 0x41a00000    # 20.0f

    .line 17
    invoke-static {v12, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v12

    .line 18
    new-instance v13, Landroid/widget/TableLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v13, v3, v14, v15}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 19
    invoke-virtual {v13, v3, v3, v8, v3}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v14, 0x43960000    # 300.0f

    .line 21
    invoke-static {v14, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v14

    .line 22
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v15, v10, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v8, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v14, Landroid/widget/FrameLayout;

    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {v15, v3, v12, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v15, 0x64

    .line 28
    invoke-static {v15, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    new-instance v15, Landroid/widget/Spinner;

    invoke-direct {v15, v1, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    iput-object v15, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    .line 31
    invoke-static {}, Landroidx/core/app/b;->t()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    const/16 v9, 0x30

    .line 32
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    invoke-virtual {v15, v11, v11, v11, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 34
    iget-object v9, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    invoke-virtual {v9, v15}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v9, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    invoke-virtual {v14, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 36
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Landroidx/core/app/b;->t()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    const/high16 v10, 0x42a00000    # 80.0f

    .line 38
    invoke-static {v10, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v10

    invoke-virtual {v15, v3, v3, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v10, 0x50

    .line 39
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x1

    .line 41
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    invoke-virtual {v14, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 43
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Landroidx/core/app/b;->t()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    .line 45
    invoke-virtual {v15, v11, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v15, Landroid/widget/SeekBar;

    invoke-direct {v15, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    .line 51
    invoke-virtual {v15, v13}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v15, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x42480000    # 50.0f

    .line 55
    invoke-static {v3, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v15

    .line 56
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v3, v15, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    iget-object v10, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    const/16 v15, 0x13

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v10, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Landroidx/core/app/b;->t()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    .line 63
    invoke-virtual {v10, v11, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    .line 66
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v9, Landroid/widget/SeekBar;

    invoke-direct {v9, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    .line 69
    invoke-virtual {v9, v13}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v9, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x42480000    # 50.0f

    .line 73
    invoke-static {v4, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v4

    .line 74
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v4, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 78
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 80
    invoke-static {v1, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v1

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Landroidx/core/app/b;->w(FLandroid/content/res/Resources;)I

    move-result v4

    .line 81
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 82
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v1, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v1, 0xa4

    const/16 v5, 0xd1

    const/4 v9, 0x0

    const/16 v10, 0xff

    .line 85
    invoke-static {v10, v9, v1, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v1, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;

    invoke-direct {v1, v0, v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    .line 89
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    const v4, 0x186a0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 91
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 92
    iget-object v3, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    iget-object v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    new-instance v3, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    invoke-virtual {v6}, Lcom/facebook/rebound/d;->a()Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-virtual {v7}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->b()V

    .line 97
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/facebook/rebound/c;->c:Lcom/facebook/rebound/c;

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v4, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Ljava/util/List;

    sget-object v3, Lcom/facebook/rebound/c;->c:Lcom/facebook/rebound/c;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    sget-object v3, Lcom/facebook/rebound/c;->c:Lcom/facebook/rebound/c;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$e;->a(Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView$e;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 106
    iget-object v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    :cond_2
    iget v1, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->e:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static c(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->d:Lcom/facebook/rebound/b;

    invoke-virtual {v0}, Lcom/facebook/rebound/b;->d()D

    move-result-wide v0

    .line 2
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->d:Lcom/facebook/rebound/b;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/facebook/rebound/b;->h(D)Lcom/facebook/rebound/b;

    return-void
.end method

.method static synthetic d(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->f:F

    return p0
.end method

.method static synthetic e(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->e:F

    return p0
.end method

.method static synthetic f(Lcom/facebook/rebound/ui/SpringConfiguratorView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h:I

    return p0
.end method

.method static synthetic g(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Lcom/facebook/rebound/c;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/c;)Lcom/facebook/rebound/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Lcom/facebook/rebound/c;

    return-object p1
.end method

.method static synthetic i(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c:Ljava/util/List;

    return-object p0
.end method

.method static j(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/c;)V
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p1, Lcom/facebook/rebound/c;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    const-wide v4, 0x4068400000000000L    # 194.0

    sub-double/2addr v0, v4

    const-wide v4, 0x400cf5c28f5c28f6L    # 3.62

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    add-double/2addr v0, v4

    :goto_0
    double-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v4, 0x0

    sub-float/2addr v0, v4

    const v5, 0x47c35000    # 100000.0f

    mul-float v0, v0, v5

    div-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    iget-wide v6, p1, Lcom/facebook/rebound/c;->a:D

    cmpl-double p1, v6, v2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    sub-double/2addr v6, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v1

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    add-double v2, v6, v1

    :goto_1
    double-to-float p1, v2

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr p1, v4

    mul-float p1, p1, v5

    div-float/2addr p1, v1

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 7
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic k(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic l()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->o:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;
.super Lum;
.source "SourceFile"


# instance fields
.field private Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/activity/widget/FontTextView;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Lcom/camerasideas/collagemaker/activity/adapter/o;

.field private b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltn;",
            ">;"
        }
    .end annotation
.end field

.field private c0:I

.field private d0:Ldm$d;

.field mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lum;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Z:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->d0:Ldm$d;

    return-void
.end method

.method static synthetic o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/adapter/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/o;

    return-object p0
.end method

.method static synthetic p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    return-object p0
.end method

.method static synthetic q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->b0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method private v1(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Lvm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    .line 5
    iget-object v1, v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    :cond_0
    iget-object v1, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {v1, v2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Z:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    aput-object v7, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-static {v1}, Luq;->v(Landroid/widget/TextView;)V

    .line 11
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-static {v1}, Luq;->v(Landroid/widget/TextView;)V

    .line 12
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-static {v1}, Luq;->v(Landroid/widget/TextView;)V

    .line 13
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-static {v1}, Luq;->v(Landroid/widget/TextView;)V

    .line 14
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-static {v1}, Luq;->v(Landroid/widget/TextView;)V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v2, Ltn;

    invoke-direct {v2}, Ltn;-><init>()V

    .line 17
    invoke-virtual {v2, v4}, Ltn;->f(I)V

    .line 18
    new-instance v3, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    invoke-virtual {v2, v3}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v2, Ltn;

    invoke-direct {v2}, Ltn;-><init>()V

    .line 21
    invoke-virtual {v2, v5}, Ltn;->f(I)V

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v2, Ltn;

    const v3, 0x7f070235

    invoke-direct {v2, v6, v3, v4}, Ltn;-><init>(IIZ)V

    .line 24
    new-instance v3, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v7, "#FFFFFF"

    .line 25
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v8, "#000000"

    .line 26
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v9, 0x28

    .line 27
    invoke-virtual {v3, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 28
    invoke-virtual {v2, v3}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 29
    new-instance v3, Ltn;

    const v10, 0x7f070240

    invoke-direct {v3, v6, v10, v4}, Ltn;-><init>(IIZ)V

    .line 30
    new-instance v10, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v10}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 31
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 32
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 33
    invoke-virtual {v10, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 34
    invoke-virtual {v3, v10}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 35
    new-instance v10, Ltn;

    const v11, 0x7f070244

    invoke-direct {v10, v6, v11, v4}, Ltn;-><init>(IIZ)V

    .line 36
    new-instance v11, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v11}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v12, "#FDE472"

    .line 37
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 38
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 39
    invoke-virtual {v11, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 40
    invoke-virtual {v10, v11}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 41
    new-instance v11, Ltn;

    const v13, 0x7f070245

    invoke-direct {v11, v6, v13, v4}, Ltn;-><init>(IIZ)V

    .line 42
    new-instance v13, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v13}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 43
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v14, "#FF679F"

    .line 44
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 45
    invoke-virtual {v13, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 46
    invoke-virtual {v11, v13}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 47
    new-instance v13, Ltn;

    const v14, 0x7f070246

    invoke-direct {v13, v6, v14, v4}, Ltn;-><init>(IIZ)V

    .line 48
    new-instance v14, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v15, "#99D2F9"

    .line 49
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 50
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 51
    invoke-virtual {v14, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 52
    invoke-virtual {v13, v14}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 53
    new-instance v5, Ltn;

    const v14, 0x7f070247

    invoke-direct {v5, v6, v14, v4}, Ltn;-><init>(IIZ)V

    .line 54
    new-instance v14, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v16, "#FFA4B9"

    .line 55
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v4, "#FB2C78"

    .line 56
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 57
    invoke-virtual {v14, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 58
    invoke-virtual {v5, v14}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 59
    new-instance v4, Ltn;

    const v14, 0x7f070248

    const/4 v9, 0x0

    invoke-direct {v4, v6, v14, v9}, Ltn;-><init>(IIZ)V

    .line 60
    new-instance v9, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 61
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v14, "#058BC0"

    .line 62
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v14, 0x28

    .line 63
    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 64
    invoke-virtual {v4, v9}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 65
    new-instance v9, Ltn;

    const v14, 0x7f070249

    const/4 v15, 0x0

    invoke-direct {v9, v6, v14, v15}, Ltn;-><init>(IIZ)V

    .line 66
    new-instance v14, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v15, "#AACE87"

    .line 67
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v15, "#6D822B"

    .line 68
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v15, 0x28

    .line 69
    invoke-virtual {v14, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 70
    invoke-virtual {v9, v14}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 71
    new-instance v14, Ltn;

    const v15, 0x7f07024a

    const/4 v0, 0x0

    invoke-direct {v14, v6, v15, v0}, Ltn;-><init>(IIZ)V

    .line 72
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v15, "#FFD7CD"

    .line 73
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v15, "#CD181F"

    .line 74
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v15, 0x28

    .line 75
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 76
    invoke-virtual {v14, v0}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 77
    new-instance v0, Ltn;

    const v15, 0x7f070236

    move-object/from16 v17, v14

    const/4 v14, 0x1

    invoke-direct {v0, v6, v15, v14}, Ltn;-><init>(IIZ)V

    .line 78
    new-instance v14, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v15, "#F6490D"

    .line 79
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v15, "#F4C131"

    .line 80
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v6, 0x28

    .line 81
    invoke-virtual {v14, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 82
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    const/16 v6, 0x1e

    .line 83
    invoke-virtual {v14, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->V(I)V

    const/16 v15, 0x32

    .line 84
    invoke-virtual {v14, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->S(I)V

    .line 85
    invoke-virtual {v0, v14}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 86
    new-instance v14, Ltn;

    const v15, 0x7f070237

    move-object/from16 v19, v0

    const/4 v0, 0x2

    const/4 v6, 0x1

    invoke-direct {v14, v0, v15, v6}, Ltn;-><init>(IIZ)V

    .line 87
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v6, "#4AE3D2"

    .line 88
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v15, "#3EA2D7"

    .line 89
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v15, 0x28

    .line 90
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    const-string v15, "#1DCED8"

    .line 91
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    const/16 v15, 0x1e

    .line 92
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->V(I)V

    const/16 v15, 0x32

    .line 93
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->S(I)V

    .line 94
    invoke-virtual {v14, v0}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 95
    new-instance v0, Ltn;

    const v15, 0x7f070238

    move-object/from16 v21, v9

    move-object/from16 v20, v14

    const/4 v9, 0x2

    const/4 v14, 0x1

    invoke-direct {v0, v9, v15, v14}, Ltn;-><init>(IIZ)V

    .line 96
    new-instance v9, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v14, "#3ADB7C"

    .line 97
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v14, "#FF3274"

    .line 98
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v15, 0x28

    .line 99
    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 100
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    const/16 v15, 0x1e

    .line 101
    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->V(I)V

    const/16 v15, 0x32

    .line 102
    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->S(I)V

    .line 103
    invoke-virtual {v0, v9}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 104
    new-instance v9, Ltn;

    const v15, 0x7f070239

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    const/4 v0, 0x1

    const/4 v4, 0x2

    invoke-direct {v9, v4, v15, v0}, Ltn;-><init>(IIZ)V

    .line 105
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v4, "#F2C4CD"

    .line 106
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v15, "#F22D52"

    .line 107
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/16 v15, 0x28

    .line 108
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 109
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    const/16 v15, 0x1e

    .line 110
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->V(I)V

    const/16 v15, 0x32

    .line 111
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->S(I)V

    .line 112
    invoke-virtual {v9, v0}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 113
    new-instance v0, Ltn;

    const v15, 0x7f07023a

    move-object/from16 v18, v5

    move-object/from16 v16, v9

    const/4 v5, 0x2

    const/4 v9, 0x0

    invoke-direct {v0, v5, v15, v9}, Ltn;-><init>(IIZ)V

    .line 114
    new-instance v5, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 115
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 116
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v9, 0x64

    .line 117
    invoke-virtual {v5, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 118
    invoke-virtual {v0, v5}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 119
    new-instance v5, Ltn;

    const v15, 0x7f07023b

    move-object/from16 v24, v0

    const/4 v0, 0x2

    const/4 v9, 0x0

    invoke-direct {v5, v0, v15, v9}, Ltn;-><init>(IIZ)V

    .line 120
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v9, "#ffffff"

    .line 121
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 122
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v9, 0x64

    .line 123
    invoke-virtual {v0, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 124
    invoke-virtual {v5, v0}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 125
    new-instance v0, Ltn;

    const v9, 0x7f07023c

    move-object/from16 v25, v5

    const/4 v5, 0x2

    const/4 v15, 0x1

    invoke-direct {v0, v5, v9, v15}, Ltn;-><init>(IIZ)V

    .line 126
    new-instance v5, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 127
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v4, "#730068"

    .line 128
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v4, 0x64

    .line 129
    invoke-virtual {v5, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 130
    invoke-virtual {v0, v5}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 131
    new-instance v5, Ltn;

    const v9, 0x7f07023d

    const/4 v4, 0x2

    const/4 v15, 0x1

    invoke-direct {v5, v4, v9, v15}, Ltn;-><init>(IIZ)V

    .line 132
    new-instance v9, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 133
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 134
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v4, 0x64

    .line 135
    invoke-virtual {v9, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 136
    invoke-virtual {v5, v9}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 137
    new-instance v4, Ltn;

    const v6, 0x7f07023e

    const/4 v9, 0x2

    invoke-direct {v4, v9, v6, v15}, Ltn;-><init>(IIZ)V

    .line 138
    new-instance v6, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 139
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v9, "#FF5733"

    .line 140
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v9, 0x64

    .line 141
    invoke-virtual {v6, v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 142
    invoke-virtual {v4, v6}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 143
    new-instance v6, Ltn;

    const v15, 0x7f07023f

    move-object/from16 p1, v4

    const/4 v4, 0x2

    const/4 v9, 0x1

    invoke-direct {v6, v4, v15, v9}, Ltn;-><init>(IIZ)V

    .line 144
    new-instance v9, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 145
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 146
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v14, 0x64

    .line 147
    invoke-virtual {v9, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 148
    invoke-virtual {v6, v9}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 149
    new-instance v9, Ltn;

    const v15, 0x7f070241

    const/4 v14, 0x0

    invoke-direct {v9, v4, v15, v14}, Ltn;-><init>(IIZ)V

    .line 150
    new-instance v15, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v15}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 151
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 152
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v4, 0x64

    .line 153
    invoke-virtual {v15, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 154
    invoke-virtual {v9, v15}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 155
    new-instance v4, Ltn;

    const v12, 0x7f070242

    const/4 v15, 0x2

    invoke-direct {v4, v15, v12, v14}, Ltn;-><init>(IIZ)V

    .line 156
    new-instance v12, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v12}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    .line 157
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const-string v7, "#72462F"

    .line 158
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v7, 0x64

    .line 159
    invoke-virtual {v12, v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 160
    invoke-virtual {v4, v12}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 161
    new-instance v7, Ltn;

    const v12, 0x7f070243

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-direct {v7, v15, v12, v14}, Ltn;-><init>(IIZ)V

    .line 162
    new-instance v12, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v12}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    const-string v14, "#4DAF9D"

    .line 163
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 164
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/16 v8, 0x64

    .line 165
    invoke-virtual {v12, v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 166
    invoke-virtual {v7, v12}, Ltn;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v23

    .line 173
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    .line 175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v22

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v24

    .line 180
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v25

    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    .line 189
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->b0:Ljava/util/List;

    .line 190
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/o;

    iget-object v3, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v1, v3}, Lcom/camerasideas/collagemaker/activity/adapter/o;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/o;

    .line 191
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 192
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/o;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 193
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object v1

    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->d0:Ldm$d;

    invoke-virtual {v1, v2}, Ldm;->e(Ldm$d;)Ldm;

    .line 194
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b005d

    return v0
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    return-object v0
.end method

.method public o0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lvm;->o0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "text_style"

    const/4 v1, 0x0

    const v2, 0x7f080129

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, v3}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    .line 4
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;-><init>()V

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->c1(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {v0, p1, v3, v2, v1}, Landroidx/core/app/b;->c(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Ljava/lang/Class;IZ)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->v1(Landroid/view/View;)V

    goto/16 :goto_5

    .line 10
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;-><init>()V

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1, v0, v3, v2, v1}, Landroidx/core/app/b;->c(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Ljava/lang/Class;IZ)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->v1(Landroid/view/View;)V

    goto/16 :goto_5

    .line 14
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, v3}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    .line 16
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;-><init>()V

    .line 17
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->c1(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {v0, p1, v3, v2, v1}, Landroidx/core/app/b;->c(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Ljava/lang/Class;IZ)V

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->v1(Landroid/view/View;)V

    goto :goto_5

    .line 22
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, v3}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    if-ne p1, v3, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    .line 24
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;-><init>()V

    .line 25
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->c1(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {v0, p1, v3, v2, v1}, Landroidx/core/app/b;->c(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Ljava/lang/Class;IZ)V

    .line 29
    :goto_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->v1(Landroid/view/View;)V

    goto :goto_5

    .line 30
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x5

    .line 31
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->c0:I

    .line 32
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;-><init>()V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    invoke-static {v0, p1, v3, v2, v1}, Landroidx/core/app/b;->c(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Ljava/lang/Class;IZ)V

    .line 34
    :goto_4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->v1(Landroid/view/View;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08008f -> :sswitch_4
        0x7f080098 -> :sswitch_3
        0x7f0800b5 -> :sswitch_2
        0x7f0800bd -> :sswitch_1
        0x7f0800c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public u1()Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    return-object v0
.end method
